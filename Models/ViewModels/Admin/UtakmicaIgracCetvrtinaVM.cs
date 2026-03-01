namespace HoopLeague.Models.ViewModels.Admin
{
    public class UtakmicaIgracCetvrtinaVM
    {
        public int UtakmicaId { get; set; }
        public int IgracId { get; set; }
        public int Cetvrtina { get; set; }

        // 0 ili 1 – ručni unos
        public int Starter { get; set; }

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

        // samo za prikaz
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public int BrojDresa { get; set; }
    }
}
