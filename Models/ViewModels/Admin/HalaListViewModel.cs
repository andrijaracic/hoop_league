namespace HoopLeague.Models.ViewModels.Admin
{
    public class HalaListViewModel
    {
        public int HalaId { get; set; }
        public string Naziv { get; set; }
        public int DrzavaId { get; set; }
        public int? Kapacitet { get; set; }
        public string? Grad { get; set; }
        public string? Adresa { get; set; }
        public string? UrlSlika { get; set; }
    }
}