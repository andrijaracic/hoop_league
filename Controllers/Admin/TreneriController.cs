using HoopLeague.Models.ViewModels;
using HoopLeague.Models.ViewModels.Admin;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Controllers.Admin
{
    [Route("Admin/Treneri")]
    public class TreneriController : Controller
    {
        private readonly AppDbContext _context;

        public TreneriController(AppDbContext context)
        {
            _context = context;
        }

        
        [HttpGet("")]
        public async Task<IActionResult> Index()
        {
            var lista = new List<TrenerListViewModel>();

            var conn = _context.Database.GetDbConnection();
            await conn.OpenAsync();

            using var cmd = conn.CreateCommand();
            cmd.CommandText = @"
                SELECT
                    t.id,
                    t.ime,
                    t.prezime,
                    t.uloga,
                    c.name AS Drzava,
                    tm.naziv AS Tim,
                    t.datum_rodjenja,
                    t.url_slika
                FROM Treneri t
                JOIN Countries c ON c.id = t.drzava_id
                JOIN Timovi tm ON tm.id = t.tim_id
                ORDER BY tm.naziv, t.prezime";

            using var r = await cmd.ExecuteReaderAsync();
            while (await r.ReadAsync())
            {
                lista.Add(new TrenerListViewModel
                {
                    TrenerId = r.GetInt32(0),
                    Ime = r.GetString(1),
                    Prezime = r.GetString(2),
                    Uloga = r.GetByte(3),
                    Drzava = r.GetString(4),
                    Tim = r.GetString(5),
                    DatumRodjenja = r.GetDateTime(6),
                    UrlSlika = r.IsDBNull(7) ? null : r.GetString(7)
                });
            }

            return View("~/Views/Admin/Treneri/Index.cshtml", lista);
        }

        [HttpGet("Novi")]
        public IActionResult Novi()
        {
            ViewBag.Timovi = _context.vw_Timovi
                .OrderBy(t => t.Naziv)
                .ToList();

            return View("~/Views/Admin/Treneri/Novi.cshtml",
                new TrenerListViewModel());
        }

        [HttpPost("Novi")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Novi(TrenerListViewModel model)
        {
            
            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Trener_Insert
                      @Ime, @Prezime, @Uloga,
                      @DrzavaId, @TimId,
                      @DatumRodjenja, @UrlSlika",
                new SqlParameter("@Ime", model.Ime),
                new SqlParameter("@Prezime", model.Prezime),
                new SqlParameter("@Uloga", model.Uloga),
                new SqlParameter("@DrzavaId", model.DrzavaId),
                new SqlParameter("@TimId", model.TimId),
                new SqlParameter("@DatumRodjenja", model.DatumRodjenja),
                new SqlParameter("@UrlSlika", (object?)model.UrlSlika ?? DBNull.Value)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpPost("Obrisi")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Obrisi(int id)
        {
            await _context.Database.ExecuteSqlRawAsync(
                "EXEC sp_Trener_Delete @TrenerId",
                new SqlParameter("@TrenerId", id)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpGet("Izmeni/{id:int}")]
        public async Task<IActionResult> Izmeni(int id)
        {
            ViewBag.Timovi = _context.vw_Timovi
                .OrderBy(t => t.Naziv)
                .ToList();

            var conn = _context.Database.GetDbConnection();
            await conn.OpenAsync();

            using var cmd = conn.CreateCommand();
            cmd.CommandText = @"
                SELECT
                    id,
                    ime,
                    prezime,
                    uloga,
                    drzava_id,
                    tim_id,
                    datum_rodjenja,
                    url_slika
                FROM Treneri
                WHERE id = @id";

            cmd.Parameters.Add(new SqlParameter("@id", id));

            using var r = await cmd.ExecuteReaderAsync();
            if (!await r.ReadAsync())
                return NotFound();

            var model = new TrenerListViewModel
            {
                TrenerId = r.GetInt32(0),
                Ime = r.GetString(1),
                Prezime = r.GetString(2),
                Uloga = r.GetByte(3),
                DrzavaId = r.GetInt32(4),
                TimId = r.GetInt32(5),
                DatumRodjenja = r.GetDateTime(6),
                UrlSlika = r.IsDBNull(7) ? null : r.GetString(7)
            };

            return View("~/Views/Admin/Treneri/Izmeni.cshtml", model);
        }

        [HttpPost("Izmeni")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Izmeni(TrenerListViewModel model)
        {
            

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Trener_Update
            @TrenerId,
            @Ime,
            @Prezime,
            @Uloga,
            @DrzavaId,
            @TimId,
            @DatumRodjenja,
            @UrlSlika",
                new SqlParameter("@TrenerId", model.TrenerId),
                new SqlParameter("@Ime", model.Ime),
                new SqlParameter("@Prezime", model.Prezime),
                new SqlParameter("@Uloga", model.Uloga),
                new SqlParameter("@DrzavaId", model.DrzavaId),
                new SqlParameter("@TimId", model.TimId),
                new SqlParameter("@DatumRodjenja", model.DatumRodjenja),
                new SqlParameter("@UrlSlika", (object?)model.UrlSlika ?? DBNull.Value)
            );

            return RedirectToAction(nameof(Index));
        }


    }
}


