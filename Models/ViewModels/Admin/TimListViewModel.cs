namespace HoopLeague.Models.ViewModels
{
    public class TimListViewModel
    {
        public int TimId { get; set; }
        public string Naziv { get; set; }
        public string Grad { get; set; }
        public string Drzava { get; set; }
        public int DrzavaId { get; set; }
        public int BrojTitula { get; set; }
        public DateTime? DatumOsnivanja { get; set; }
        public string? LogoUrl { get; set; }
        public string Skracenica { get; set; }
        public string Boja { get; set; }
    }
}