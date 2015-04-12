using System.Collections.Generic;
using Wwfd.Data.Enums;

namespace Wwfd.Core.Dto
{
	public class DocumentDto
	{
		public int DocumentId { get; set; }
		public DocumentType DocumentType { get; set; }
		public string Text { get; set; }

		public List<DocumentReferenceDto> References { get; set; }
	}
}