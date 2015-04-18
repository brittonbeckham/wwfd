using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Wwfd.Core.Agents;
using Wwfd.Core.Dto;

namespace Wwfd.Api.Controllers
{
	[RoutePrefix("dailyquotes")]
	public class DailyQuotesController : ApiController
	{
		[Route("subscribe")]
		[HttpPost]
		public void Subscribe(DailyQuoteSubscriberDto subscriber)
		{
			using (var agent = new DailyQuotesAgent())
				agent.Subscribe(subscriber.Email);
		}

		[Route("subscriber/{email}")]
		public bool IsSubscribed(string email)
		{
			using (var agent = new DailyQuotesAgent())
			{
				var subscriber = agent.GetSubscriber(email);

				if (subscriber != null)
					return subscriber.IsActive;

			}

			return false;
		}

		[Route("subscriber/{email}/unsubscribe/{token}")]
		[HttpDelete]
		public void Unsubscribe(string email, string token)
		{
			using (var agent = new DailyQuotesAgent())
				agent.Unsubscribe(email, token);
		}
	}
}
