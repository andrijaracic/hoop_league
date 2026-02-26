using HoopLeague.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Controllers.Admin
{
    [Route("Admin/Timovi")]
    public class TimoviController : Controller
    {
        private readonly AppDbContext _context;

        public TimoviController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet("")]
        public async Task<IActionResult> Index()
        {
            var timovi = await _context.vw_Timovi_Admin
                .OrderBy(t => t.Naziv)
                .ToListAsync();

            return View("~/Views/Admin/Timovi/Index.cshtml", timovi);
        }

        [HttpGet("NoviTim")]
        public IActionResult NoviTim()
        {
            return View("~/Views/Admin/Timovi/NoviTim.cshtml",
                new TimListViewModel());
        }

        [HttpPost("NoviTim")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> NoviTim(TimListViewModel model)
        {
            if (!ModelState.IsValid)
                return View("~/Views/Admin/Timovi/NoviTim.cshtml", model);

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Tim_Insert
            @Naziv, @Grad, @DrzavaId, @LogoUrl, @DatumOsnivanja, @BrojTitula,@Boja,@Skracenica",
                new SqlParameter("@Naziv", model.Naziv),
                new SqlParameter("@Grad", model.Grad),
                new SqlParameter("@DrzavaId", model.Drzava),
                new SqlParameter("@LogoUrl", (object?)model.LogoUrl ?? DBNull.Value),
                new SqlParameter("@DatumOsnivanja", (object?)model.DatumOsnivanja ?? DBNull.Value),
                new SqlParameter("@BrojTitula", model.BrojTitula),
                new SqlParameter("@Skracenica", model.Skracenica),
                new SqlParameter("@Boja", model.Boja)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpPost("Obrisi")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Obrisi(int id)
        {
            await _context.Database.ExecuteSqlRawAsync(
                "EXEC sp_Tim_Delete @TimId",
                new SqlParameter("@TimId", id)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpGet("Izmeni/{id:int}")]
        public async Task<IActionResult> Izmeni(int id)
        {
            var sql = @"
        SELECT
            id,
            naziv,
            grad,
            drzava_id,
            logo_url,
            datum_osnivanja,
            broj_titula,
            skracenica,
            boja
        FROM Timovi
        WHERE id = @id";

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

            var model = new TimListViewModel
            {
                TimId = reader.GetInt32(0),
                Naziv = reader.GetString(1),
                Grad = reader.GetString(2),
                DrzavaId = reader.GetInt32(3),
                LogoUrl = reader.IsDBNull(4) ? null : reader.GetString(4),
                DatumOsnivanja = reader.IsDBNull(5) ? null : reader.GetDateTime(5),
                BrojTitula = reader.GetInt32(6),
                Skracenica = reader.GetString(7),
                Boja = reader.GetString(8)
            };

            return View("~/Views/Admin/Timovi/IzmeniTim.cshtml", model);
        }

        [HttpPost("Izmeni")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> IzmeniTim(TimListViewModel model)
        {
            

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Tim_Update
            @TimId, @Naziv, @Grad, @DrzavaId,
            @LogoUrl, @DatumOsnivanja, @BrojTitula,
            @Skracenica, @Boja",
                new SqlParameter("@TimId", model.TimId),
                new SqlParameter("@Naziv", model.Naziv),
                new SqlParameter("@Grad", model.Grad),
                new SqlParameter("@DrzavaId", model.DrzavaId),
                new SqlParameter("@LogoUrl", (object?)model.LogoUrl ?? DBNull.Value),
                new SqlParameter("@DatumOsnivanja", (object?)model.DatumOsnivanja ?? DBNull.Value),
                new SqlParameter("@BrojTitula", model.BrojTitula),
                new SqlParameter("@Skracenica", model.Skracenica),
                new SqlParameter("@Boja", model.Boja)
            );

            return RedirectToAction(nameof(Index));
        }
    }
}