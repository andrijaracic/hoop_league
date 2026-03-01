namespace HoopLeague.Models.ViewModels.Admin
{
    public class IgracStatistikaVM
    {
        public int IgracId { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public int BrojDresa { get; set; }
        public string Pozicija { get; set; }

        public List<CetvrtinaStatistikaVM> Cetvrtine { get; set; } = new();
    }
}
