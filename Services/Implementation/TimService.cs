using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Services.Implementation
{
    public class TimService : ITimService
    {
        private readonly AppDbContext _context;

        public TimService(AppDbContext context)
        {
            _context = context;
        }

        public List<GameCardViewModel> GetTimUtakmice(int tim_id)
        {
            return _context.vw_UtakmicaSlider
                .Where(x => x.DomacinId == tim_id || x.GostId == tim_id)
                .OrderByDescending(x => x.UtakmicaId)
                .Take(10)
                .ToList();
        }

        public TimoviViewModel? GetTim(int tim_id)
        {
            return _context.vw_Timovi
                .SingleOrDefault(x => x.Id == tim_id);
        }

        public List<IgraciViewModel> GetIgraci (int tim_id)
        {
            return _context.vw_Igraci
               .Where(x => x.TimId == tim_id)
               .ToList();
        }

        public List<TreneriViewModel> GetTreneri (int tim_id)
        {
            return _context.vw_TimTreneri
               .Where(x => x.TimId == tim_id)
               .ToList();
        }

        public List<IgraciStatistikaViewModel> GetStatistikaIgraci(int tim_id)
        {
            return _context.vw_IgraciProsek
               .Where(x => x.TimId == tim_id)
               .ToList();
        }

        public TimoviStatistikaViewModel? GetTimStatistika(int tim_id)
        {
            return _context.vw_TimoviProsek
                .SingleOrDefault(x => x.TimId == tim_id);
        }


    }
}
