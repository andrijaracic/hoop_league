using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Services.Implementation
{
    public class VestiService : IVestiService
    {
        private readonly AppDbContext _context;

        public VestiService(AppDbContext context)
        {
            _context = context;
        }

        public List<VestViewModel> GetVesti()
        {
            return _context.vw_Vesti
                .OrderByDescending(v => v.Datum)
                .ToList();
        }
    }
}

