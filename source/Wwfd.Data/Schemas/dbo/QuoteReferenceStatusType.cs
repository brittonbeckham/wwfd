using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.dbo
{
	public class QuoteReferenceStatusType
	{
		public int Id { get; set; }
		
		[Required]
		[StringLength(25)]
		public string Name { get; set; }
	}
}