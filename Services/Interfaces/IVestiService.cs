namespace HoopLeague.Services.Interfaces
{
    using HoopLeague.Models.ViewModels;
    

    public interface IVestiService
    {
        List<VestViewModel> GetVesti();
    }
}