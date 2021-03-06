﻿using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Wwfd.Data.Schemas.DailyQuote
{
	public class DailyQuoteSubscriber
	{
		public int DailyQuoteSubscriberId { get; set; }

		[StringLength(75)]
		public string Email { get; set; }
		
		[Required]
		[StringLength(12)]
		public string UnsubscribeToken { get; set; }

		[Required]
		public DateTime DateSubscribed { get; set; }
		
		public DateTime? DateUnsubscribed { get; set; }

		[Required]
		[DefaultValue(true)]
		public bool IsActive { get; set; }
	}
}
