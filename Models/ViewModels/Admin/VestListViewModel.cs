using Microsoft.EntityFrameworkCore;

namespace HoopLeague.Models.ViewModels
{
    public class VestListViewModel
    {
        
        public int VestId { get; set; }
        public string Naslov { get; set; }
        public DateTime Datum { get; set; }
        public int? UtakmicaId { get; set; }

        public string Tekst {  get; set; }

        public string SlikaUrl { get; set; }
    }
}
