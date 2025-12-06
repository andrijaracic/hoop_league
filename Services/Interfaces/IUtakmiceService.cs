namespace HoopLeague.Services.Interfaces
{
    using HoopLeague.Models.ViewModels;
    public interface IUtakmiceService
    {
        List<GameCardViewModel> GetUtakmice(int runda);
    }
}