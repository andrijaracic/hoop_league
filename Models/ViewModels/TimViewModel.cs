using HoopLeague.Models.ViewModels;

namespace HoopLeague.Models.ViewModels
{
    public class TimViewModel
    {
        public List<GameCardViewModel> Utakmice { get; set; }
        public TimoviViewModel TimDetalji { get; set; }

        public List<TreneriViewModel> Treneri { get; set; }

        public List<IgraciViewModel> Igraci { get; set; }

        public List<IgraciStatistikaViewModel> IgraciStatistika { get; set; }

        public TimoviStatistikaViewModel TimStatistika { get; set; }
    }
}
