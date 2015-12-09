using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Wwfd.Core.Framework;

namespace Wwfd.Core.Models
{
    public class QuoteSearchRequest : PaginatedQuery
    {
        public string Text { get; set; }
        public string Keyword { get; set; }
        public bool RecordSearch { get; set; }
    }
}
