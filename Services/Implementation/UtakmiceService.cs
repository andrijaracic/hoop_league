using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Services.Implementation
{
    public class UtakmiceService : IUtakmiceService
    {
        private readonly AppDbContext _context;

        public UtakmiceService(AppDbContext context)
        {
            _context = context;
        }

        public List<GameCardViewModel> GetUtakmice(int runda)
        {
            return _context.vw_UtakmicaSlider
                .Where(x => x.Runda == runda)
                .OrderBy(x => x.Datum)
                .ToList();
        }
    }
}
