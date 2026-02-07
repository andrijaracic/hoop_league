using HoopLeague.Models.ViewModels;

namespace HoopLeague.Services.Interfaces
{
    public interface IJednaUtakmicaService
    {
        public List<IgraciStatistikaUtakmica> GetIgraciStatistikaUtakmica(int UtakmicaId);

        public List<TimStatistikaUtakmica> GetTimoviStatistikaUtakmica(int UtakmicaId);

        public GameCardViewModel? GetUtakmicaDetalji(int UtakmicaId);
    }
}
