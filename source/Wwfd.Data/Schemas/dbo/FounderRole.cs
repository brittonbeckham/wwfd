using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.dbo
{
	public class FounderRole
	{
		public int Id { get; set; }

		[Required]
		[MaxLength(25)]
		public string Name { get; set; }

        [MaxLength()]
		public string Description { get; set; }
		
		public virtual ICollection<Founder> Founders { get; set; }
	}
}