using HoopLeague.Models.ViewModels;
using HoopLeague.Models.ViewModels.HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

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

        public List<TabelaPoretkaViewModel> GetTabelaPoretka()
        {
            return _context.vw_TabelaPoretka
                .OrderByDescending(t => t.Pobede)
                .ThenByDescending(t => t.KosRazlika)
                .ToList();
        }

        public List<VestViewModel> GetLatestNews()
        {
            return _context.vw_Vesti
                .OrderByDescending(v => v.Datum)
                .Take(6)
                .ToList();
        }
    }
}

