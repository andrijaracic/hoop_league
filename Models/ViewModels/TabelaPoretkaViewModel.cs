namespace HoopLeague.Models.ViewModels
{
    public class TabelaPoretkaViewModel
    {
        public int TimId { get; set; }
        public string Naziv { get; set; }
        public string Logo { get; set; }
        public int Pobede { get; set; }
        public int Porazi { get; set; }
        public int KosRazlika { get; set; }
        public int PoeniDati { get; set; }
        public int PoeniPrimljeni { get; set; }
        public string BilansKuci { get; set; }
        public string BilansGosti { get; set; }
        public string BilansOT { get; set; }
    }

}
