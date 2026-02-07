using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Services.Implementation
{
    public class JednaUtakmicaService : IJednaUtakmicaService
    {
        private readonly AppDbContext _context;

        public JednaUtakmicaService(AppDbContext context)
        {
            _context = context;
        }

        public List<IgraciStatistikaUtakmica> GetIgraciStatistikaUtakmica(int UtakmicaId)
        {
            return _context.vw_IgraciUtakmicaStatistika
                .Where(x => x.UtakmicaId == UtakmicaId)
                .ToList();
        }

        public List<TimStatistikaUtakmica> GetTimoviStatistikaUtakmica(int UtakmicaId)
        {
            return _context.vw_TimStatistikaUtakmica
                .Where(x => x.UtakmicaId == UtakmicaId)
                .ToList();
        }

        public GameCardViewModel? GetUtakmicaDetalji(int UtakmicaId)
        {
            return _context.vw_UtakmicaSlider
                .SingleOrDefault(x => x.UtakmicaId == UtakmicaId);

        }
    }
}
