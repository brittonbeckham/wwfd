﻿using System.Web.Http;
using System.Web.Http.Cors;

namespace Wwfd.Api
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

			var cors = new EnableCorsAttribute("*", "*", "*");
			config.EnableCors(cors);
			
            // Web API routes
            config.MapHttpAttributeRoutes();        
        }
    }
}
