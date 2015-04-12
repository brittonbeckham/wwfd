using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using AutoMapper;
using Wwfd.Core.Dto;
using Wwfd.Data.Context;
using Wwfd.Data.Schemas.dbo;

namespace Wwfd.Core.Agents
{
	public class DocumentAgent : AgentBase
	{
		public DocumentDto GetById(int docId)
		{
			var entity = CurrentContext.Documents
				.Include(r => r.DocumentReferences)
				.Include(r => r.DocumentType)
				.FirstOrDefault(r => r.DocumentId == docId);

			ErrorIfEntityIsNull(entity);

			return MapToDto<Document, DocumentDto>(entity);
		}

		public List<DocumentDto> GetByFounderId(int founderId)
		{
			var docs = CurrentContext.Documents
				.Include(r => r.DocumentType)
				.Include(r => r.DocumentReferences)
				.Where(r => r.Founders.Any(r2 => r2.FounderId == founderId));

			return docs
				.ToList()
				.Select(r => MapToDto<Document, DocumentDto>(r))
				.ToList();
		}
	}
}