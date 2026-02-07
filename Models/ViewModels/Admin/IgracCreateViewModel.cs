using System;
using System.ComponentModel.DataAnnotations;

namespace HoopLeague.Models.ViewModels.Admin.Igraci
{
    public class IgracCreateViewModel
    {
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Ime { get; set; }

        [Required]
        [StringLength(50)]
        public string Prezime { get; set; }

        [Required]
        public int DrzavaId { get; set; }

        [Required]
        [DataType(DataType.Date)]
        public DateTime DatumRodjenja { get; set; }

        [Required]
        public int TimId { get; set; }

        [StringLength(10)]
        public string? Pozicija { get; set; }

        [Required]
        [Range(0, 99)]
        public int BrojDresa { get; set; }

        [Range(150, 250)]
        public decimal? Visina { get; set; }

        [Range(50, 200)]
        public decimal? Tezina { get; set; }

        [StringLength(50)]
        public string? MestoRodjenja { get; set; }

        [StringLength(100)]
        public string? UrlSlika { get; set; }

        public bool Kapiten { get; set; }
    }
}

