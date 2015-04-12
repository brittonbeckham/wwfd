using System.ComponentModel;

namespace Wwfd.Data.Enums
{
	public enum DocumentType
	{
		[Description("Founding Document")]
		FoundingDocument = 1,
		Biography = 2,
		Letter = 3,
		AutoBiography = 4,
		Book = 5
	}
}