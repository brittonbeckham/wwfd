using System;
using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.DailyQuote
{
	public class DailyQuote
	{
		public int DailyQuoteId { get; set; }

		public int QuoteId { get; set; }

		[Required]
		public DateTime Date { get; set; }

		//public virtual Quote Quote { get; set; }
	}
}