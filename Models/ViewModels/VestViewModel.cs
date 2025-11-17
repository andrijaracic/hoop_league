namespace HoopLeague.Models.ViewModels
{
    namespace HoopLeague.Models.ViewModels
    {
        public class VestViewModel
        {
            public int Id { get; set; }
            public string Naslov { get; set; }
            public string Tekst { get; set; }
            public string KratakTekst { get; set; }
            public DateTime Datum { get; set; }
            public string SlikaUrl { get; set; }
            public int? UtakmicaId { get; set; }
        }
    }

}
