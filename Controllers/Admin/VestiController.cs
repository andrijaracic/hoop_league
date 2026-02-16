using HoopLeague.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Controllers.Admin
{
    [Route("Admin/Vesti")]
    public class VestiController : Controller
    {
        private readonly AppDbContext _context;

        public VestiController(AppDbContext context)
        {
            _context = context;
        }

        // READ – lista vesti
        [HttpGet("")]
        public async Task<IActionResult> Index()
        {
            var vesti = await _context.vw_Vesti_Admin
                .OrderByDescending(v => v.Datum)
                .ToListAsync();

            return View("~/Views/Admin/Vesti/Index.cshtml", vesti);
        }

        [HttpGet("NovaVest")]
        public IActionResult NovaVest()
        {
            return View("~/Views/Admin/Vesti/NovaVest.cshtml",
                new VestListViewModel());
        }

        // POST: insert vesti
        [HttpPost("NovaVest")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> NovaVest(VestListViewModel model)
        {
            if (!ModelState.IsValid)
                return View("~/Views/Admin/Vesti/NovaVest.cshtml", model);

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Vest_Insert
                    @Naslov, @Tekst, @UtakmicaId, @SlikaUrl",
                new SqlParameter("@Naslov", model.Naslov),
                new SqlParameter("@Tekst", model.Tekst),
                new SqlParameter("@UtakmicaId", (object?)model.UtakmicaId ?? DBNull.Value),
                new SqlParameter("@SlikaUrl", (object?)model.SlikaUrl ?? DBNull.Value)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpPost("Obrisi")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Obrisi(int id)
        {
            await _context.Database.ExecuteSqlRawAsync(
                "EXEC sp_Vest_Delete @VestId",
                new SqlParameter("@VestId", id)
            );

            return RedirectToAction(nameof(Index));
        }

        [HttpGet("Izmeni/{id:int}")]
        public async Task<IActionResult> Izmeni(int id)
        {
            var sql = @"
            SELECT
                id AS VestId,
                naslov AS Naslov,
                tekst AS Tekst,
                utakmica_id AS UtakmicaId,
                slika_url AS SlikaUrl
            FROM Vesti
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

            var model = new VestListViewModel
            {
                VestId = id,
                Naslov = reader.GetString(1),
                Tekst = reader.GetString(2),
                UtakmicaId = reader.IsDBNull(3) ? null : reader.GetInt32(3),
                SlikaUrl = reader.GetString(4)
            };

            return View("~/Views/Admin/Vesti/IzmeniVest.cshtml", model);
        }

        [HttpPost("Izmeni")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Izmeni(VestListViewModel model)
        {
            if (!ModelState.IsValid)
                return View("~/Views/Admin/Vesti/IzmeniVest.cshtml", model);

            await _context.Database.ExecuteSqlRawAsync(
                @"EXEC sp_Vest_Update
            @VestId, @Naslov, @Tekst, @UtakmicaId, @SlikaUrl",
                new SqlParameter("@VestId", model.VestId),
                new SqlParameter("@Naslov", model.Naslov),
                new SqlParameter("@Tekst", model.Tekst),
                new SqlParameter("@UtakmicaId", (object?)model.UtakmicaId ?? DBNull.Value),
                new SqlParameter("@SlikaUrl", (object?)model.SlikaUrl ?? DBNull.Value)
            );

            return RedirectToAction(nameof(Index));
        }

    }
}

