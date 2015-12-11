using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.dbo
{
	public class QuoteReferenceStatus
	{
		public int Id { get; set; }
		
		[Required]
		[StringLength(25)]
		public string Name { get; set; }
	}
}