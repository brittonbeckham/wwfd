using System;
using System.Collections;
using System.Collections.Generic;

namespace Wwfd.Core.Framework
{
    public class PaginatedResultSet<TResult>
    {
        public PaginatedResultSet()
        {
            //set defaults
            ResultsPerPage = PaginatedQuery.DEFAULT_ROWS_PER_PAGE;
            CurrentPage = PaginatedQuery.DEFAULT_INITIAL_PAGE;
        }

        public int ResultsPerPage { get; set; }
        public int CurrentPage { get; set; }
        public int TotalResults { get; set; }

        /// <summary>
        ///     Returns the number of pages based off the TotalResults and RowsPerPage property values.
        /// </summary>
        public int TotalPages
        {
            get { return (int)Math.Ceiling((decimal)TotalResults / ResultsPerPage); }
        }

        public IEnumerable<TResult> Results { get; set; }

    }
}