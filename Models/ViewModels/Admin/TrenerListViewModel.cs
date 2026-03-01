namespace HoopLeague.Models.ViewModels.Admin
{
    public class TrenerListViewModel
    {
        public int TrenerId { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public int Uloga { get; set; }
        public int DrzavaId { get; set; }
        public int TimId { get; set; }
        public DateTime DatumRodjenja { get; set; }
        public string UrlSlika { get; set; }
        public string Drzava { get; set; }
        public string Tim { get; set; }
    }
}
