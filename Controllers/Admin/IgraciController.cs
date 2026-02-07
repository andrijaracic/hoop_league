using HoopLeague.Models.ViewModels.Admin.Igraci;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;


namespace HoopLeague.Controllers.Admin
{
    [Route("Admin/Igraci")]
    public class IgraciController : Controller
    {
        private readonly AppDbContext _context;

        public IgraciController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet("")]
        public async Task<IActionResult> Index()
        {
            var igraci = await _context.vw_Igraci
                .OrderBy(i => i.Prezime)
                .ToListAsync();

            return View("~/Views/Admin/Igraci/Index.cshtml", igraci);
        }

        [HttpPost("NoviIgrac")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> NoviIgrac(IgracCreateViewModel model)
        {
            if (!ModelState.IsValid)
                return View("~/Views/Admin/Igraci/NoviIgrac.cshtml", model);

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Igrac_Insert 
            @Ime, 
            @Prezime, 
            @DrzavaId,
            @DatumRodjenja,
            @TimId, 
            @Pozicija, 
            @BrojDresa, 
            @Visina,
            @Tezina,
            @MestoRodjenja,
            @UrlSlika,
            @Kapiten",
                new SqlParameter("@Ime", model.Ime),
                new SqlParameter("@Prezime", model.Prezime),
                new SqlParameter("@DrzavaId", model.DrzavaId),
                new SqlParameter("@DatumRodjenja", model.DatumRodjenja),
                new SqlParameter("@TimId", model.TimId),
                new SqlParameter("@Pozicija", (object?)model.Pozicija ?? DBNull.Value),
                new SqlParameter("@BrojDresa", model.BrojDresa),
                new SqlParameter("@Visina", (object?)model.Visina ?? DBNull.Value),
                new SqlParameter("@Tezina", (object?)model.Tezina ?? DBNull.Value),
                new SqlParameter("@MestoRodjenja", (object?)model.MestoRodjenja ?? DBNull.Value),
                new SqlParameter("@UrlSlika", (object?)model.UrlSlika ?? DBNull.Value),
                new SqlParameter("@Kapiten", model.Kapiten ? 1 : 0) 
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpGet("NoviIgrac")]
        public IActionResult NoviIgrac()
        {
            ViewBag.Timovi = _context.vw_Timovi.ToList();
            
            return View("~/Views/Admin/Igraci/NoviIgrac.cshtml");
        }


        [HttpPost("Obrisi")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Obrisi(int id)
        {
            await _context.Database.ExecuteSqlRawAsync(
                "EXEC sp_Igrac_Delete @IgracId",
                new SqlParameter("@IgracId", id)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpGet("IzmeniIgraca/{id:int}")]
        public async Task<IActionResult> IzmeniIgraca(int id)
        {
            ViewBag.Timovi = await _context.vw_Timovi
                .OrderBy(t => t.Naziv)
                .ToListAsync();

            var sql = @"
                SELECT
                    id              AS IgracId,
                    ime             AS Ime,
                    prezime         AS Prezime,
                    drzava_id       AS DrzavaId,
                    datum_rodjenja  AS DatumRodjenja,
                    tim_id          AS TimId,
                    pozicija        AS Pozicija,
                    broj_na_dresu   AS BrojDresa,
                    visina          AS Visina,
                    tezina          AS Tezina,
                    mesto_rodjenja  AS MestoRodjenja,
                    url_slika       AS UrlSlika,
                    kapiten         AS Kapiten
                FROM dbo.Igraci
                WHERE id = @id;";

            var conn = _context.Database.GetDbConnection();
            await conn.OpenAsync();

            try
            {
                await using var cmd = conn.CreateCommand();
                cmd.CommandText = sql;

                var p = cmd.CreateParameter();
                p.ParameterName = "@id";
                p.Value = id;
                cmd.Parameters.Add(p);

                await using var reader = await cmd.ExecuteReaderAsync();

                if (!await reader.ReadAsync())
                    return NotFound();

                var model = new IgracCreateViewModel
                {
                    Id = reader.GetInt32(0),
                    Ime = reader.GetString(1),
                    Prezime = reader.GetString(2),
                    DrzavaId = reader.GetInt32(3),
                    DatumRodjenja = reader.GetDateTime(4),
                    TimId = reader.GetInt32(5),
                    Pozicija = reader.GetString(6),
                    BrojDresa = reader.GetInt32(7),
                    Visina = reader.IsDBNull(8) ? (decimal?)null : reader.GetDecimal(8),
                    Tezina = reader.IsDBNull(9) ? (decimal?)null : reader.GetDecimal(9),
                    MestoRodjenja = reader.IsDBNull(10) ? null : reader.GetString(10),
                    UrlSlika = reader.IsDBNull(11) ? null : reader.GetString(11),
                    Kapiten = !reader.IsDBNull(12) && reader.GetBoolean(12)

                };

                return View("~/Views/Admin/Igraci/IzmeniIgraca.cshtml", model);
            }
            finally
            {
                await conn.CloseAsync();
            }
        }

        
        [HttpPost("IzmeniIgraca")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> IzmeniIgraca(IgracCreateViewModel model)
        {
            if (!ModelState.IsValid)
            {
                ViewBag.Timovi = await _context.vw_Timovi
                    .OrderBy(t => t.Naziv)
                    .ToListAsync();

                return View("~/Views/Admin/Igraci/IzmeniIgraca.cshtml", model);
            }

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Igrac_Update
                    @IgracId, @Ime, @Prezime, @DrzavaId, @DatumRodjenja,
                    @TimId, @Pozicija, @BrojDresa, @Visina, @Tezina,
                    @MestoRodjenja, @UrlSlika, @Kapiten",
                new SqlParameter("@IgracId", model.Id),
                new SqlParameter("@Ime", model.Ime),
                new SqlParameter("@Prezime", model.Prezime),
                new SqlParameter("@DrzavaId", model.DrzavaId),
                new SqlParameter("@DatumRodjenja", model.DatumRodjenja),
                new SqlParameter("@TimId", model.TimId),
                new SqlParameter("@Pozicija", model.Pozicija),
                new SqlParameter("@BrojDresa", model.BrojDresa),
                new SqlParameter("@Visina", (object?)model.Visina ?? DBNull.Value),
                new SqlParameter("@Tezina", (object?)model.Tezina ?? DBNull.Value),
                new SqlParameter("@MestoRodjenja", (object?)model.MestoRodjenja ?? DBNull.Value),
                new SqlParameter("@UrlSlika", (object?)model.UrlSlika ?? DBNull.Value),
                new SqlParameter("@Kapiten", model.Kapiten ? 1 : 0)
            );

            return RedirectToAction(nameof(Index));
        }



    }
}
