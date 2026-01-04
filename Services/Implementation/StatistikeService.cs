using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;

namespace HoopLeague.Services.Implementation
{
    public class StatistikeService : IStatistikeService
    {
        private readonly AppDbContext _context;

        public StatistikeService(AppDbContext context)
        {
            _context = context;
        }

        public List<IgraciStatistikaViewModel> GetStatistikaIgraci()
        {
            return _context.vw_IgraciProsek
                .OrderByDescending(x => x.PIR)
                .ToList();
        }


        public List<TimoviStatistikaViewModel> GetStatistikaTimovi()
        {
            return _context.vw_TimoviProsek
                .OrderBy(x => x.ProsekPoena)
                .ToList();
        }
    }
}
