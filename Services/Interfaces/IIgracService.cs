using HoopLeague.Models.ViewModels;

namespace HoopLeague.Services.Interfaces
{
    public interface IIgracService
    {
        public IgraciViewModel? GetIgrac(int igrac_id);

        public IgraciStatistikaViewModel? GetIgraciStatistika(int igrac_id);
    }
}
