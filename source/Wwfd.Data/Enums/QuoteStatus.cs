using System.ComponentModel;

namespace Wwfd.Data.Enums
{
	public enum QuoteStatus
	{
		Unconfirmed = 1,
		Confirmed = 2,
		
		[Description("Possibly Spurious")]
		PossiblySpurious = 3,

		[Description("Confirmed Spurious")]
		ConfirmedSpurious = 4
	}
}