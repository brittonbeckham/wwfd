using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using Wwfd.Core.Dto;
using Wwfd.Data.Schemas.dbo;

namespace Wwfd.Core
{
	public static class Configuration
	{
		public static bool MapsLoaded { get; set; }

		public static void LoadAutoMapperMaps()
		{
			Mapper.CreateMap<DocumentReference, DocumentReferenceDto>();
			Mapper.CreateMap<Document, DocumentDto>()
				.ForMember(dest => dest.References, opt => opt.MapFrom(src => src.DocumentReferences))
				.ForMember(dest => dest.Text, opt => opt.MapFrom(src => src.DocumentText))
				.ForMember(dest => dest.DocumentType, opt => opt.MapFrom(src => src.DocumentType.Id));

			Mapper.CreateMap<Founder, FounderDto>()
				.ForMember(dest => dest.Roles, opt => opt.MapFrom(src => src.FounderRoles));

			Mapper.CreateMap<FounderRole, FounderRoleDto>();

		    Mapper.CreateMap<Founder, FounderDto>();


			Mapper.CreateMap<QuoteReference, QuoteReferenceDto>();

			Mapper.CreateMap<Quote, QuoteDto>()
				.ForMember(dest => dest.Founder, opt => opt.MapFrom(src => src.Founder))
				.ForMember(dest => dest.QuoteStatus, opt => opt.MapFrom(src => src.QuoteStatus.Name))
				.ForMember(dest => dest.References, opt => opt.MapFrom(src => src.QuoteReferences));

			MapsLoaded = true;
		}
	}
}
