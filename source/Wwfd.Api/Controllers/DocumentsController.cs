using System.Web.Http;
using Wwfd.Core.Agents;
using Wwfd.Core.Dto;

namespace Wwfd.Api.Controllers
{
	[RoutePrefix("document")]
	public class DocumentsController : ApiController
	{
		/// <summary>
		/// Retrieves a document by the given Id.
		/// </summary>
		/// <param name="id">The quoteId.</param>
		/// <returns></returns>
		[Route("{id:int}")]
		public DocumentDto GetById(int id)
		{
			using (var agent = new DocumentAgent())
				return agent.GetById(id);
		}
	}
}
