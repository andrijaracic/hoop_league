using HoopLeague.Models.ViewModels;
using HoopLeague.Models.ViewModels.Admin;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Controllers.Admin
{
    [Route("Admin/Utakmice")]
    public class UtakmiceController : Controller
    {
        private readonly AppDbContext _context;

        public UtakmiceController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet("")]
        public async Task<IActionResult> Index()
        {
            var utakmice = await _context.vw_UtakmicaSlider
                .OrderByDescending(u => u.Datum)
                .ThenBy(u => u.Runda)
                .ToListAsync();

            return View("~/Views/Admin/Utakmice/Index.cshtml", utakmice);
        }

        [HttpGet("Nova")]
        public IActionResult Nova()
        {
            ViewBag.Timovi = _context.vw_Timovi
                .OrderBy(t => t.Naziv)
                .ToList();

            return View("~/Views/Admin/Utakmice/Nova.cshtml",
                new UtakmicaCreateViewModel
                {
                    DatumVreme = DateTime.Now
                });
        }

        [HttpPost("Nova")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Nova(UtakmicaCreateViewModel model)
        {
            if (model.DomacinTimId == model.GostTimId)
            {
                ModelState.AddModelError("", "Domaćin i gost ne mogu biti isti tim.");
            }

            if (!ModelState.IsValid)
            {
                ViewBag.Timovi = _context.vw_Timovi
                    .OrderBy(t => t.Naziv)
                    .ToList();

                return View("~/Views/Admin/Utakmice/Nova.cshtml", model);
            }

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Utakmica_Insert
            @Runda, @DatumVreme, @SezonaId, @HalaId,@DomacinTimId, @GostTimId",
                new SqlParameter("@Runda", model.Runda),
                new SqlParameter("@DatumVreme", model.DatumVreme),
                new SqlParameter("@SezonaId", model.SezonaId),
                new SqlParameter("@DomacinTimId", model.DomacinTimId),
                new SqlParameter("@GostTimId", model.GostTimId),
                new SqlParameter("@HalaId", model.HalaId)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpPost("Obrisi")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Obrisi(int id)
        {
            await _context.Database.ExecuteSqlRawAsync(
                "EXEC sp_Utakmica_Delete @UtakmicaId",
                new SqlParameter("@UtakmicaId", id)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpGet("Izmeni/{id:int}")]
        public async Task<IActionResult> Izmeni(int id)
        {
            ViewBag.Timovi = _context.vw_Timovi
                .OrderBy(t => t.Naziv)
                .ToList();

            var sql = @"
                    SELECT
                        u.id,
                        u.runda,
                        u.datum_vreme,
                        u.sezona_id,
                        MAX(CASE WHEN ut.domacin = 1 THEN ut.tim_id END) AS DomacinTimId,
                        MAX(CASE WHEN ut.domacin = 0 THEN ut.tim_id END) AS GostTimId
                    FROM dbo.Utakmice u
                    JOIN dbo.Utakmice_Timovi ut ON ut.utakmica_id = u.id
                    WHERE u.id = @id
                    GROUP BY u.id, u.runda, u.datum_vreme, u.sezona_id";

            var conn = _context.Database.GetDbConnection();
            await conn.OpenAsync();

            using var cmd = conn.CreateCommand();
            cmd.CommandText = sql;

            var p = cmd.CreateParameter();
            p.ParameterName = "@id";
            p.Value = id;
            cmd.Parameters.Add(p);

            using var reader = await cmd.ExecuteReaderAsync();

            if (!await reader.ReadAsync())
                return NotFound();

            var model = new UtakmicaCreateViewModel
            {
                UtakmicaId = reader.GetInt32(0),
                Runda = reader.GetInt32(1),
                DatumVreme = reader.GetDateTime(2),
                SezonaId = reader.GetInt32(3),
                DomacinTimId = reader.GetInt32(4),
                GostTimId = reader.GetInt32(5)
            };

            return View("~/Views/Admin/Utakmice/Izmeni.cshtml", model);
        }

        [HttpPost("Izmeni")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Izmeni(UtakmicaCreateViewModel model)
        {
            if (model.DomacinTimId == model.GostTimId)
            {
                ModelState.AddModelError("", "Domaćin i gost ne mogu biti isti tim.");
            }

            if (!ModelState.IsValid)
            {
                ViewBag.Timovi = _context.vw_Timovi
                    .OrderBy(t => t.Naziv)
                    .ToList();

                return View("~/Views/Admin/Utakmice/Izmeni.cshtml", model);
            }

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Utakmica_Update
            @UtakmicaId, @Runda, @DatumVreme, @SezonaId, @DomacinTimId, @GostTimId",
                new SqlParameter("@UtakmicaId", model.UtakmicaId),
                new SqlParameter("@Runda", model.Runda),
                new SqlParameter("@DatumVreme", model.DatumVreme),
                new SqlParameter("@SezonaId", model.SezonaId),
                new SqlParameter("@DomacinTimId", model.DomacinTimId),
                new SqlParameter("@GostTimId", model.GostTimId)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpGet("Statistika/Unos/{utakmicaId:int}")]
        public async Task<IActionResult> UnosStatistike(int utakmicaId)
        {
            var model = new UtakmicaStatistikaVM
            {
                UtakmicaId = utakmicaId,
                DomacinIgraci = new List<IgracStatistikaVM>(),
                GostIgraci = new List<IgracStatistikaVM>()
            };

            var conn = _context.Database.GetDbConnection();
            await conn.OpenAsync();

            using var cmd = conn.CreateCommand();
            cmd.CommandText = @"
        SELECT
            ut.domacin,
            i.id,
            i.ime,
            i.prezime,
            i.broj_na_dresu,
            i.pozicija
        FROM Utakmice_Timovi ut
        JOIN Igraci i ON i.tim_id = ut.tim_id
        WHERE ut.utakmica_id = @utakmicaId
        ORDER BY ut.domacin DESC, i.broj_na_dresu";

            var p = cmd.CreateParameter();
            p.ParameterName = "@utakmicaId";
            p.Value = utakmicaId;
            cmd.Parameters.Add(p);

            using var r = await cmd.ExecuteReaderAsync();
            while (await r.ReadAsync())
            {
                var igrac = new IgracStatistikaVM
                {
                    IgracId = r.GetInt32(1),
                    Ime = r.GetString(2),
                    Prezime = r.GetString(3),
                    BrojDresa = r.GetInt32(4),
                };

                if (r.GetBoolean(0))
                    model.DomacinIgraci.Add(igrac);
                else
                    model.GostIgraci.Add(igrac);
            }

            return View("~/Views/Admin/Utakmice/StatistikaUnos.cshtml", model);
        }

        [HttpPost("Statistika/Unos")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> UnosJedneCetvrtine(UtakmicaIgracCetvrtinaVM m)
        {
            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_UtakmicaIgracStatistika_Insert
          @UtakmicaId, @IgracId,
          @Starter, @Cetvrtina,
          @OfanzivniSkokovi, @DefanzivniSkokovi,
          @Asistencije, @IzgubljeneLopte, @UkradeneLopte,
          @SutnutoTrojki, @SutnutoDvojki, @SutnutoSlobodnihBacanja,
          @PogodjenoTrojki, @PogodjenoDvojki, @PogodjenoSlobodnihBacanja,
          @VremeNaTerenu, @Faulovi",
                new SqlParameter("@UtakmicaId", m.UtakmicaId),
                new SqlParameter("@IgracId", m.IgracId),
                new SqlParameter("@Starter", m.Starter),
                new SqlParameter("@Cetvrtina", m.Cetvrtina),
                new SqlParameter("@OfanzivniSkokovi", m.OfanzivniSkokovi),
                new SqlParameter("@DefanzivniSkokovi", m.DefanzivniSkokovi),
                new SqlParameter("@Asistencije", m.Asistencije),
                new SqlParameter("@IzgubljeneLopte", m.IzgubljeneLopte),
                new SqlParameter("@UkradeneLopte", m.UkradeneLopte),
                new SqlParameter("@SutnutoTrojki", m.SutnutoTrojki),
                new SqlParameter("@SutnutoDvojki", m.SutnutoDvojki),
                new SqlParameter("@SutnutoSlobodnihBacanja", m.SutnutoSlobodnihBacanja),
                new SqlParameter("@PogodjenoTrojki", m.PogodjenoTrojki),
                new SqlParameter("@PogodjenoDvojki", m.PogodjenoDvojki),
                new SqlParameter("@PogodjenoSlobodnihBacanja", m.PogodjenoSlobodnihBacanja),
                new SqlParameter("@VremeNaTerenu", m.VremeNaTerenu),
                new SqlParameter("@Faulovi", m.Faulovi)
            );

            return RedirectToAction("UnosStatistike",
                new { utakmicaId = m.UtakmicaId });
        }

    }
}