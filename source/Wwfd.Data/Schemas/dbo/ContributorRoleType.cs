using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.dbo
{
	public class ContributorRoleType
	{
		public int Id { get; set; }

		[Required]
		[StringLength(25)]
		public string Name { get; set; }
		
		public virtual ICollection<Contributor> Contributors { get; set; }
	}
}
