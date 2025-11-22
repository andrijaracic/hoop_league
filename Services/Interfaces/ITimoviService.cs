namespace HoopLeague.Services.Interfaces
{
    using HoopLeague.Models.ViewModels;

    public interface ITimoviService
    {
        List<TimoviViewModel> GetAllTimovi();
    }
}
