using HoopLeague.Models.ViewModels;

namespace HoopLeague.Services.Interfaces
{
    public interface IHomeService
    {
        List<GameCardViewModel> GetSliderGames();
    }

}
