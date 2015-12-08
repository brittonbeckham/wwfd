namespace Wwfd.Core.Framework
{
	public class PaginatedSortableResultSet<TResult> : PaginatedResultSet<TResult>
	{
		public string SortColumn { get; set; }
		public SortDirection SortOrder { get; set; }
	}
}