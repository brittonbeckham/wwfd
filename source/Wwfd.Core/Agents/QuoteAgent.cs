using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using Wwfd.Core.Dto;
using Wwfd.Core.Framework;
using Wwfd.Data.Context;
using Wwfd.Data.Schemas.dbo;

namespace Wwfd.Core.Agents
{
    public class QuoteAgent : AgentBase
    {
        /// <summary>
        /// Searches the quote text and keywords for the given string using SQL full-text searching.
        /// </summary>
        /// <param name="searchText"></param>
        /// <param name="searchKeyword"></param>
        /// <returns></returns>
        public IEnumerable<QuoteDto> Search(string searchText, string searchKeyword, bool recordSearch = true)
        {
            bool error = false;
            try
            {
                BeginContextTrans();

                if (recordSearch)
                {
                    //always save a record of each search performed for analytics purposes
                    CurrentContext.PerformedSerarches.Add(new PerformedSearch()
                    {
                        DateSearched = DateTime.Now,
                        TextSearchString = searchText,
                        KeywordSearchString = searchKeyword,
                    });

                    CurrentContext.SaveChanges();
                }

                if (searchText != null)
                    searchText = FullTextSearchInterceptor.AsFullTextSearch(searchText);

                if (searchKeyword != null)
                    searchKeyword = FullTextSearchInterceptor.AsFullTextSearch(searchKeyword);

                return CurrentContext.Quotes
                    .Include(r => r.QuoteReferences)
                    .Include(r => r.Founder)
                    .Where(r =>
                        r.QuoteText.Contains(searchText)
                        || r.Keywords.Contains(searchKeyword))
                    .ToArray()
                    .Select(r => MapToDto<Quote, QuoteDto>(r))
                    .ToArray();
            }
            catch
            {
                error = true;
                RollBackContextTrans();
                throw;
            }
            finally
            {
                if (!error)
                    CommitContextTrans();
            }
        }

        public QuoteDto GetById(int quoteId)
        {
            var entity = CurrentContext.Quotes
                            .Include(r => r.QuoteReferences)
                            .Include(r => r.Founder)
                            .FirstOrDefault(r => r.QuoteId == quoteId);

            ErrorIfEntityIsNull(entity);

            return MapToDto<Quote, QuoteDto>(entity);
        }


        public PaginatedResultSet<QuoteDto> GetByFounderId(int founderId, PaginatedQuery terms)
        {
            var query = CurrentContext.Quotes
                .Include(r => r.QuoteReferences)
                .Include(r => r.Founder)
                .Where(r => r.FounderId == founderId)
                .OrderBy(r => r.QuoteId);

            var getCount = query.Count();
            var getResults = query.Skip(terms.ResultsPerPage * (terms.CurrentPage - 1)).Take(terms.ResultsPerPage).ToArray();

            return new PaginatedResultSet<QuoteDto>()
            {
                CurrentPage = terms.CurrentPage,
                Results = getResults.Select(r => MapToDto<Quote, QuoteDto>(r)),
                ResultsPerPage = terms.ResultsPerPage,
                TotalResults = getCount
            };
        }
    }
}