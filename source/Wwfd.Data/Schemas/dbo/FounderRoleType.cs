using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.dbo
{
	public class FounderRoleType
	{
		public int Id { get; set; }

		[Required]
		[StringLength(25)]
		public string Name { get; set; }
		
		public virtual ICollection<Founder> Founders { get; set; }
	}
}