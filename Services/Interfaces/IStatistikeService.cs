using HoopLeague.Models.ViewModels;

namespace HoopLeague.Services.Interfaces
{
    public interface IStatistikeService
    {
        public List<IgraciStatistikaViewModel> GetStatistikaIgraci();
        public List<TimoviStatistikaViewModel> GetStatistikaTimovi();
    }
}
