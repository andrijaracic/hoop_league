using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations.Schema;

namespace HoopLeague.Models.ViewModels
{
    [Keyless]
    public class IgraciStatistikaViewModel
    {

        public int IgracId { get; set; }
        public string Igrac { get; set; }

        public int TimId { get; set; }
        public string Tim { get; set; }

        public int OdigraneUtakmice { get; set; }

        public string Min { get; set; }

        public decimal ProsekPoena { get; set; }
        public decimal ProsekSkokova { get; set; }
        public decimal ProsekAsistencija { get; set; }

        
        [Column("2PM")]
        public decimal _2PM { get; set; }

        [Column("2PA")]
        public decimal _2PA { get; set; }

        [Column("2P%")]
        public decimal _2PProcenat { get; set; }

        [Column("3PM")]
        public decimal _3PM { get; set; }

        [Column("3PA")]
        public decimal _3PA { get; set; }

        [Column("3P%")]
        public decimal _3PProcenat { get; set; }

        [Column("FTM")]
        public decimal FTM { get; set; }

        [Column("FTA")]
        public decimal FTA { get; set; }

        [Column("FT%")]
        public decimal FTProcenat { get; set; }

        [Column("OR")]
        public decimal OR { get; set; }

        [Column("DR")]
        public decimal DR { get; set; }

        [Column("TR")]
        public decimal TR { get; set; }

        [Column("STL")]
        public decimal STL { get; set; }

        [Column("TO")]
        public decimal TO { get; set; }

        [Column("FC")]
        public decimal FC { get; set; }

        [Column("PIR")]
        public decimal PIR { get; set; }
    }
}
