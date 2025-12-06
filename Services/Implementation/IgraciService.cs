using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Services.Implementation
{
    public class IgraciService : IIgraciService
    {
        private readonly AppDbContext _context;

        public IgraciService(AppDbContext context)
        {
            _context = context;
        }

        public async Task<List<IgraciViewModel>> GetIgraci(int skip, int take)
        {
            return await _context.vw_Igraci
                .AsNoTracking()
                .OrderBy(i => i.Prezime)
                .Skip(skip)
                .Take(take)
                .ToListAsync();
        }


        public async Task<List<IgraciViewModel>> SearchIgraci(string query)
        {
            if (string.IsNullOrWhiteSpace(query))
                return new List<IgraciViewModel>();

            query = query.Trim().ToLower();

            return await _context.vw_Igraci
                .AsNoTracking()
                .Where(i =>
                    i.Ime.ToLower().Contains(query) ||
                    i.Prezime.ToLower().Contains(query))
                .OrderBy(i => i.Prezime)
                .ToListAsync();
        }

    }

}
