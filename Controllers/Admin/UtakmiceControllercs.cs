using HoopLeague.Models.ViewModels;
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
    }
}