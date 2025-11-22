namespace HoopLeague.Models.ViewModels
{
    public class TimoviViewModel
    {
        public int Id { get; set; }
        public string Naziv { get; set; }
        public string LogoUrl { get; set; }
        public string Grad { get; set; }
        public int BrojTitula { get; set; }
        public string Boja { get; set; }
        public DateTime? DatumOsnivanja { get; set; }
        public string Drzava { get; set; }
    }

}
