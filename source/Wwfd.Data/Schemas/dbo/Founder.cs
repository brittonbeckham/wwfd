using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Wwfd.Data.Enums;

namespace Wwfd.Data.Schemas.dbo
{
    public class Founder
    {
        public int FounderId { get; set; }

        [StringLength(50)]
        public string Prefix { get; set; }

        [Required]
        [StringLength(50)]
        public string FirstName { get; set; }

        [StringLength(50)]
        public string MiddleName { get; set; }

        [Required]
        [StringLength(50)]
        public string LastName { get; set; }

        [StringLength(50)]
        public string Suffix { get; set; }

        [Required]
        [Column(TypeName = "Char")]
        [StringLength(1)]
        public string Gender { get; set; }

        [Column(TypeName = "Date")]
        public DateTime? DateBorn { get; set; }

        [Column(TypeName = "Date")]
        public DateTime? DateDied { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Computed)]
        public string FullName { get; private set; }

        public string DateBornAprox { get; set; }

        public string DateDiedAprox { get; set; }

        public virtual ICollection<Quote> Quotes { get; set; }

        public virtual ICollection<FounderRole> FounderRoles { get; set; }
       
        public virtual ICollection<Document> Documents { get; set; }
    }
}