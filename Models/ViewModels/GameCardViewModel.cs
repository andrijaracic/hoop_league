namespace HoopLeague.Models.ViewModels
{
    public class GameCardViewModel
    {
        public int UtakmicaId { get; set; }
        public int Runda { get; set; }
        public DateTime Datum { get; set; }

        public string Domacin { get; set; }
        public string Gost { get; set; }
        public int PoeniDomacin { get; set; }
        public int PoeniGost { get; set; }

        public int Ended {  get; set; }
    }

}
