namespace HoopLeague.Models.ViewModels.Admin
{
    public class UtakmicaStatistikaVM
    {
        public int UtakmicaId { get; set; }

        public List<IgracStatistikaVM> DomacinIgraci { get; set; } = new();
        public List<IgracStatistikaVM> GostIgraci { get; set; } = new();
    }
}
