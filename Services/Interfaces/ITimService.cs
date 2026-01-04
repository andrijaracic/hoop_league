using HoopLeague.Models.ViewModels;

namespace HoopLeague.Services.Interfaces
{
    public interface ITimService
    {
        public List<GameCardViewModel> GetTimUtakmice(int tim_id);
        public TimoviViewModel? GetTim(int tim_id);
        public List<IgraciViewModel> GetIgraci(int tim_id);
        public List<TreneriViewModel> GetTreneri(int tim_id);

        public List<IgraciStatistikaViewModel> GetStatistikaIgraci(int tim_id);

        public TimoviStatistikaViewModel? GetTimStatistika(int tim_id);
    }
}
