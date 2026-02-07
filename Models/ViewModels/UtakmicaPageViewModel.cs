namespace HoopLeague.Models.ViewModels
{
    public class UtakmicaPageViewModel
    {
        public List<IgraciStatistikaUtakmica> StatistikaIgraci { get; set; }

        public List<TimStatistikaUtakmica> StatistikaTim { get; set; }

        public GameCardViewModel UtakmicaDetalji { get; set; }
    }
}
