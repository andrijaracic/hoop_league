using HoopLeague.Models.ViewModels;

namespace HoopLeague.Services.Interfaces
{
    public interface IIgraciService
    {
        Task<List<IgraciViewModel>> GetIgraci(int skip, int take);
        Task<List<IgraciViewModel>> SearchIgraci(string query);
    }

}
