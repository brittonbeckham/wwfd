using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.dbo
{
	public class Document
	{
		public int DocumentId { get; set; }

		public int DocumentTypeId { get; set; }

		[StringLength(50)]
		public string DocumentName { get; set; }
		
		public string DocumentText { get; set; }

		public virtual DocumentType DocumentType { get; set; }

		public virtual ICollection<Founder> Founders { get; set; }
	
		public virtual ICollection<DocumentReference> DocumentReferences { get; set; }
	}
}