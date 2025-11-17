using HoopLeague.Models.ViewModels;
using HoopLeague.Models.ViewModels.HoopLeague.Models.ViewModels;

namespace HoopLeague.Services.Interfaces
{
    public interface IHomeService
    {
        List<GameCardViewModel> GetSliderGames();
        List<TabelaPoretkaViewModel> GetTabelaPoretka();
        List<VestViewModel> GetLatestNews();
    }

}
