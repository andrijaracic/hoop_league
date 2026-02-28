namespace HoopLeague.Models.ViewModels
{
    public class UtakmicaCreateViewModel
    {
        public int UtakmicaId { get; set; }
        public int Runda { get; set; }
        public DateTime DatumVreme { get; set; }

        public int SezonaId { get; set; }

        public int DomacinTimId { get; set; }
        public int GostTimId { get; set; }

        public int HalaId { get; set; }
    }
}