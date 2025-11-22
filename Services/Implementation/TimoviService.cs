using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;

namespace HoopLeague.Services.Implementation
{
    public class TimoviService : ITimoviService
    {
        private readonly AppDbContext _context;

        public TimoviService(AppDbContext context)
        {
            _context = context;
        }

        public List<TimoviViewModel> GetAllTimovi()
        {
            return _context.vw_Timovi
                .OrderBy(t => t.Naziv)
                .ToList();
        }
    }
}

