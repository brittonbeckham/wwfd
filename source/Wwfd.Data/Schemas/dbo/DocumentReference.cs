using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.dbo
{
	public class DocumentReference
	{
		public int DocumentReferenceId { get; set; }
		
		[Required]
		public int DocumentId { get; set; }

		[StringLength(3)]
		public string ReferenceCode { get; set; }

		[StringLength(1024)]
		public string Reference { get; set; }
		
		public string ReferenceDocumentId { get; set; }

		public virtual Document Documnet { get; set; }
	}
}