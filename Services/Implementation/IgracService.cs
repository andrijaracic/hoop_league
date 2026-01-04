using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Services.Implementation
{
    public class IgracService : IIgracService
    {
        private readonly AppDbContext _context;

        public IgracService(AppDbContext context)
        {
            _context = context;
        }

        public IgraciViewModel? GetIgrac(int igrac_id)
        {
            return _context.vw_Igraci
                .SingleOrDefault(x => x.IgracId == igrac_id);
        }

        public IgraciStatistikaViewModel? GetIgraciStatistika(int igrac_id)
        {
            return _context.vw_IgraciProsek
                .SingleOrDefault(x => x.IgracId == igrac_id);
        }
    }
}
