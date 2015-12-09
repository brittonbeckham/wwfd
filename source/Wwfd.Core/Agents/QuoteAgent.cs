using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using Wwfd.Core.Dto;
using Wwfd.Core.Framework;
using Wwfd.Core.Models;
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
        public PaginatedResultSet<QuoteDto> Search(QuoteSearchRequest searchRequest)
        {
            bool error = false;
            try
            {
                BeginContextTrans();

                if (searchRequest.RecordSearch)
                {
                    //always save a record of each search performed for analytics purposes
                    CurrentContext.PerformedSerarches.Add(new PerformedSearch()
                    {
                        DateSearched = DateTime.Now,
                        TextSearchString = searchRequest.Text,
                        KeywordSearchString = searchRequest.Keyword,
                    });

                    CurrentContext.SaveChanges();
                }

                var searchText = searchRequest.Text;
                var searchKeyword = searchRequest.Keyword;

                if (searchText != null)
                    searchText = FullTextSearchInterceptor.AsFullTextSearch(searchText);

                if (searchKeyword != null)
                    searchKeyword = FullTextSearchInterceptor.AsFullTextSearch(searchKeyword);

                var query = CurrentContext.Quotes
                    .Include(r => r.QuoteReferences)
                    .Include(r => r.Founder)
                    .Where(r => r.QuoteText.Contains(searchText) || r.Keywords.Contains(searchKeyword))
                    .OrderBy(r=>r.Founder.FullName);

                var getCount = query.Count();
                var getResults = query.Skip(searchRequest.ResultsPerPage * (searchRequest.CurrentPage - 1)).Take(searchRequest.ResultsPerPage).ToArray();

                return new PaginatedResultSet<QuoteDto>()
                {
                    CurrentPage = searchRequest.CurrentPage,
                    Results = getResults.Select(r => MapToDto<Quote, QuoteDto>(r)),
                    ResultsPerPage = searchRequest.ResultsPerPage,
                    TotalResults = getCount
                };
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