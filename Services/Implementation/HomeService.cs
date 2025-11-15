using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;

namespace HoopLeague.Services.Implementation
{
    public class HomeService : IHomeService
    {
        private readonly AppDbContext _context;

        public HomeService(AppDbContext context)
        {
            _context = context;
        }

        public List<GameCardViewModel> GetSliderGames()
        {
            return _context.vw_UtakmicaSlider
                .OrderByDescending(x => x.UtakmicaId)
                .Take(10)
                .ToList();
        }
    }

}
