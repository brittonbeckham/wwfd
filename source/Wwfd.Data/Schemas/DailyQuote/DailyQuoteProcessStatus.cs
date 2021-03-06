﻿using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.DailyQuote
{
	public class DailyQuoteProcessStatus
	{
		public int Id { get; set; }

		[Required]
		[StringLength(25)]
		public string Name { get; set; }
	}
}