namespace HoopLeague.Models.ViewModels
{
    public class GameCardViewModel
    {
        public int UtakmicaId { get; set; }
        public int DomacinId { get; set; }
        public int GostId { get; set; }
        public int Runda { get; set; }
        public DateTime Datum { get; set; }


        public string Domacin { get; set; }
        public string Gost { get; set; }
        public int PoeniDomacin { get; set; }
        public int PoeniGost { get; set; }

        

        public string DomacinLogo { get; set; }
        public string GostLogo { get; set; }

        public string DomacinSkracenica { get; set; }
        public string GostSkracenica { get; set; }


    }

}
