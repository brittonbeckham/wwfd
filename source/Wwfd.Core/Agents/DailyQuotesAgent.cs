using System;
using System.Linq;
using Wwfd.Core.Dto;
using Wwfd.Data.Schemas.DailyQuote;
using Wwfd.Core.Exceptions;

namespace Wwfd.Core.Agents
{
	public class DailyQuotesAgent : AgentBase
	{
		public void Subscribe(string email)
		{
			//see if subscriber exists
			var quoteSubscriber = CurrentContext.DailyQuoteSubscribers.FirstOrDefault(r => r.Email == email);
			if (quoteSubscriber == null)
			{
				//add new if not found
				var subscriber = new DailyQuoteSubscriber()
				{
					Email = email,
					DateSubscribed = DateTime.Now,
					IsActive = true,
					UnsubscribeToken = Guid.NewGuid().ToString().Replace("-", "").Substring(8, 12)
				};

				CurrentContext.DailyQuoteSubscribers.Add(subscriber);
				CurrentContext.SaveChanges();
			}
			else
			{
				//reactivate if found
				quoteSubscriber.IsActive = true;
				quoteSubscriber.DateUnsubscribed = null;
				CurrentContext.SaveChanges();
			}
		}

		public void Unsubscribe(string email, string token)
		{
			//confirm 
			var quoteSubscriber = CurrentContext.DailyQuoteSubscribers.FirstOrDefault(r => r.Email == email);
			ErrorIfEntityIsNull(quoteSubscriber);

			if (!quoteSubscriber.UnsubscribeToken.Equals(token))
				throw new InvalidTokenExceptionException();

			quoteSubscriber.DateUnsubscribed = DateTime.Now;
			quoteSubscriber.IsActive = false;

			CurrentContext.SaveChanges();
		}

		public DailyQuoteSubscriberDto GetSubscriber(string email)
		{
			var subscriber = CurrentContext.DailyQuoteSubscribers.FirstOrDefault(r => r.Email == email);
			ErrorIfEntityIsNull(subscriber);

			return MapToDto<DailyQuoteSubscriber, DailyQuoteSubscriberDto>(subscriber);
		}
	}
}
