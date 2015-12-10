using System;

namespace Wwfd.Core.Dto
{
	public class FounderWithQuoteCountDto
	{
		public int FounderId { get; set; }
		public string FullName { get; set; }
		public int QuoteCount { get; set; }
	}

	public class FounderWithQuoteCountExtendedDto
	{
		public int FounderId { get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string MiddleName { get; set; }
		public DateTime? DateBorn { get; set; }
		public DateTime? DateDied { get; set; }
		public string DateBornAprox { get; set; }
        public string DateDiedAprox { get; set; }
		public int QuoteCount { get; set; }
		public FounderRoleDto Roles { get; set; }
	}
}