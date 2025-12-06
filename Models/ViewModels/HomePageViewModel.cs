using HoopLeague.Models.ViewModels;


namespace HoopLeague.Models.ViewModels
{
    public class HomePageViewModel
    {
        public List<GameCardViewModel> Slider { get; set; }
        public List<TabelaPoretkaViewModel> Tabela { get; set; }
        public List<VestViewModel> Vesti { get; set; }
    }
}

