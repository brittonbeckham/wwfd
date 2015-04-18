using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Wwfd.Core.Dto
{
	public class DailyQuoteSubscriberDto
	{
		public int DailyQuoteSubscriberId { get; set; }

		public string Email { get; set; }
		
		public string UnsubscribeToken { get; set; }

		public DateTime DateSubscribed { get; set; }
		
		public DateTime? DateUnsubscribed { get; set; }

		public bool IsActive { get; set; }
	}
}
