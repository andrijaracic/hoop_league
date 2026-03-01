using HoopLeague.Models.ViewModels.Admin;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Controllers.Admin
{
    [Route("Admin/Hale")]
    public class HaleController : Controller
    {
        private readonly AppDbContext _context;

        public HaleController(AppDbContext context)
        {
            _context = context;
        }

        // READ – lista hala
        [HttpGet("")]
        public async Task<IActionResult> Index()
        {
            var list = new List<HalaListViewModel>();

            var conn = _context.Database.GetDbConnection();
            await conn.OpenAsync();

            using var cmd = conn.CreateCommand();
            cmd.CommandText = @"
                SELECT
                    id,
                    naziv,
                    drzava_id,
                    kapacitet,
                    grad,
                    adresa,
                    url_slika
                FROM Hale
                ORDER BY naziv";

            using var r = await cmd.ExecuteReaderAsync();
            while (await r.ReadAsync())
            {
                list.Add(new HalaListViewModel
                {
                    HalaId = r.GetInt32(0),
                    Naziv = r.GetString(1),
                    DrzavaId = r.GetInt32(2),
                    Kapacitet = r.IsDBNull(3) ? null : r.GetInt32(3),
                    Grad = r.IsDBNull(4) ? null : r.GetString(4),
                    Adresa = r.IsDBNull(5) ? null : r.GetString(5),
                    UrlSlika = r.IsDBNull(6) ? null : r.GetString(6)
                });
            }

            return View("~/Views/Admin/Hale/Index.cshtml", list);
        }

        [HttpGet("Nova")]
        public IActionResult Nova()
        {
            return View("~/Views/Admin/Hale/Nova.cshtml",
                new HalaListViewModel());
        }

        [HttpPost("Nova")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Nova(HalaListViewModel model)
        {
            if (!ModelState.IsValid)
                return View("~/Views/Admin/Hale/Nova.cshtml", model);

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Hala_Insert
            @Naziv,
            @DrzavaId,
            @Kapacitet,
            @Grad,
            @Adresa,
            @UrlSlika",
                new SqlParameter("@Naziv", model.Naziv),
                new SqlParameter("@DrzavaId", model.DrzavaId),
                new SqlParameter("@Kapacitet", (object?)model.Kapacitet ?? DBNull.Value),
                new SqlParameter("@Grad", (object?)model.Grad ?? DBNull.Value),
                new SqlParameter("@Adresa", (object?)model.Adresa ?? DBNull.Value),
                new SqlParameter("@UrlSlika", (object?)model.UrlSlika ?? DBNull.Value)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpPost("Obrisi")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Obrisi(int id)
        {
            await _context.Database.ExecuteSqlRawAsync(
                "EXEC sp_Hala_Delete @HalaId",
                new SqlParameter("@HalaId", id)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpGet("Izmeni/{id:int}")]
        public async Task<IActionResult> Izmeni(int id)
        {
            var conn = _context.Database.GetDbConnection();
            await conn.OpenAsync();

            using var cmd = conn.CreateCommand();
            cmd.CommandText = @"
                SELECT
                    id,
                    naziv,
                    drzava_id,
                    kapacitet,
                    grad,
                    adresa,
                    url_slika
                FROM Hale
                WHERE id = @id";

            cmd.Parameters.Add(new SqlParameter("@id", id));

            using var r = await cmd.ExecuteReaderAsync();
            if (!await r.ReadAsync())
                return NotFound();

            var model = new HalaListViewModel
            {
                HalaId = r.GetInt32(0),
                Naziv = r.GetString(1),
                DrzavaId = r.GetInt32(2),
                Kapacitet = r.IsDBNull(3) ? null : r.GetInt32(3),
                Grad = r.IsDBNull(4) ? null : r.GetString(4),
                Adresa = r.IsDBNull(5) ? null : r.GetString(5),
                UrlSlika = r.IsDBNull(6) ? null : r.GetString(6)
            };

            return View("~/Views/Admin/Hale/Izmeni.cshtml", model);
        }

        [HttpPost("Izmeni")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Izmeni(HalaListViewModel model)
        {
            

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Hala_Update
            @HalaId,
            @Naziv,
            @DrzavaId,
            @Kapacitet,
            @Grad,
            @Adresa,
            @UrlSlika",
                new SqlParameter("@HalaId", model.HalaId),
                new SqlParameter("@Naziv", model.Naziv),
                new SqlParameter("@DrzavaId", model.DrzavaId),
                new SqlParameter("@Kapacitet", (object?)model.Kapacitet ?? DBNull.Value),
                new SqlParameter("@Grad", (object?)model.Grad ?? DBNull.Value),
                new SqlParameter("@Adresa", (object?)model.Adresa ?? DBNull.Value),
                new SqlParameter("@UrlSlika", (object?)model.UrlSlika ?? DBNull.Value)
            );

            return RedirectToAction(nameof(Index));
        }
    }
}