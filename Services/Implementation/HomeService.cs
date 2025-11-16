using HoopLeague.Models;
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

        // UTKMICE ZA SLIDER
        public List<GameCardViewModel> GetSliderGames()
        {
            return _context.vw_UtakmicaSlider
                .OrderBy(u => u.Runda)
                .ThenBy(u => u.Datum)
                .ToList();
        }

        // TABELA PORETKA
        public List<TabelaPoretkaViewModel> GetTabelaPoretka()
        {
            return _context.vw_TabelaPoretka
                .OrderByDescending(t => t.Pobede)
                .ThenByDescending(t => t.KosRazlika)
                .ToList();
        }
    }
}
