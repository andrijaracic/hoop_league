namespace HoopLeague.Models.ViewModels.Admin
{
    public class CetvrtinaStatistikaVM
    {
        public int Cetvrtina { get; set; }   // 1–4
        public int Starter { get; set; }     // 0 ili 1

        public int OfanzivniSkokovi { get; set; }
        public int DefanzivniSkokovi { get; set; }
        public int Asistencije { get; set; }
        public int IzgubljeneLopte { get; set; }
        public int UkradeneLopte { get; set; }

        public int SutnutoTrojki { get; set; }
        public int SutnutoDvojki { get; set; }
        public int SutnutoSlobodnihBacanja { get; set; }

        public int PogodjenoTrojki { get; set; }
        public int PogodjenoDvojki { get; set; }
        public int PogodjenoSlobodnihBacanja { get; set; }

        public int VremeNaTerenu { get; set; }
        public int Faulovi { get; set; }
    }
}
