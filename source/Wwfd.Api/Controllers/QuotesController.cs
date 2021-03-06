﻿using System.Collections.Generic;
using System.Web.Http;
using Wwfd.Core.Agents;
using Wwfd.Core.Dto;
using Wwfd.Core.Framework;
using Wwfd.Core.Models;

namespace Wwfd.Api.Controllers
{
	[RoutePrefix("quote")]
	public class QuotesController : ApiController
	{
		/// <summary>
		/// Retrieves a quote by the given Id.
		/// </summary>
		/// <param name="id">The quoteId.</param>
		/// <returns></returns>
		[Route("{id:int}")]
		public QuoteDto GetById(int id)
		{
			using (var agent = new QuoteAgent())
				return agent.GetById(id);
		}

		/// <summary>
		/// Retrieves all quotes for a given Founder.
		/// </summary>
		/// <param name="id">The founderId.</param>
		/// <returns></returns>
		[Route("founder/{id:int}")]
		public PaginatedResultSet<QuoteDto> GetByFounderId(int id, int page = 1)
		{
			using (var agent = new QuoteAgent())
				return agent.GetByFounderId(id, new PaginatedQuery { CurrentPage = page});
		}

		/// <summary>
		/// Searches all quotes by their text using the given search string.
		/// </summary>
		/// <param name="searchString">Any word or words seperated by spaces.</param>
		/// <returns></returns>
		[Route("search/text/{searchString}")]
		[AcceptVerbs("GET")]

        public PaginatedResultSet<QuoteDto> SearchByText(string searchString, int page = 1)
		{
			using (var agent = new QuoteAgent())
				return agent.Search(new QuoteSearchRequest { Text = searchString, CurrentPage = page});
		}

		/// <summary>
		/// Searches all quotes by their keywords using the given search string.
		/// </summary>
		/// <param name="keywords">Any word or words seperated by spaces.</param>
		/// <returns></returns>
		[Route("search/keyword/{keywords}")]
		[AcceptVerbs("GET")]
        public PaginatedResultSet<QuoteDto> SearchByKeyword(string keywords, int page = 1)
		{
			using (var agent = new QuoteAgent())
                return agent.Search(new QuoteSearchRequest { Keyword = keywords, CurrentPage = page });
		}

		/// <summary>
		/// Searches all quotes by their text and keywords using the given search string.
		/// </summary>
		/// <param name="searchString">Any word or words seperated by spaces.</param>
		/// <returns></returns>
		[Route("search/all/{searchString}")]
		[AcceptVerbs("GET")]
        public PaginatedResultSet<QuoteDto> SearchAll(string searchString, int page = 1)
		{
			using (var agent = new QuoteAgent())
                return agent.Search(new QuoteSearchRequest { Keyword = searchString, Text = searchString, CurrentPage = page });
		}
	}
}