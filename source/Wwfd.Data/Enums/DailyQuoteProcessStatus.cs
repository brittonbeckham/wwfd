using System.ComponentModel;

namespace Wwfd.Data.Enums
{
	public enum DailyQuoteProcessStatus
	{
		Processed = 1,

		[Description("Processed with Errors")]
		ProcessedWithErrors = 2,
		Failure = 3,
	}
}