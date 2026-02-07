using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations.Schema;

namespace HoopLeague.Models.ViewModels
{
    [Keyless]
    public class IgraciStatistikaUtakmica
    {
        public int UtakmicaId { get; set; }
        public int IgracId { get; set; }
        public string Igrac { get; set; }

        public int TimId { get; set; }
        public string Tim { get; set; }

        public int OdigraneUtakmice { get; set; }

        public string Min { get; set; }

        public int Poeni { get; set; }
        public int Skokovi { get; set; }
        public int Asistencije { get; set; }


        [Column("2PM")]
        public int _2PM { get; set; }

        [Column("2PA")]
        public int _2PA { get; set; }

        [Column("2P%")]
        public decimal _2PProcenat { get; set; }

        [Column("3PM")]
        public int _3PM { get; set; }

        [Column("3PA")]
        public int _3PA { get; set; }

        [Column("3P%")]
        public decimal _3PProcenat { get; set; }

        [Column("FTM")]
        public int FTM { get; set; }

        [Column("FTA")]
        public int FTA { get; set; }

        [Column("FT%")]
        public decimal FTProcenat { get; set; }

        [Column("OR")]
        public int OR { get; set; }

        [Column("DR")]
        public int DR { get; set; }

        [Column("TR")]
        public int TR { get; set; }

        [Column("STL")]
        public int STL { get; set; }

        [Column("TO")]
        public int TO { get; set; }

        [Column("FC")]
        public int FC { get; set; }

        [Column("PIR")]
        public int PIR { get; set; }
    }
}
