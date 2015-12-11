using System.Configuration;
using System.Data.Entity;
using System.Data.Entity.Infrastructure.Interception;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.IO;
using System.Reflection;
using Wwfd.Data.Enums;
using Wwfd.Data.Schemas.DailyQuote;
using Wwfd.Data.Schemas.dbo;
using ContributorRole = Wwfd.Data.Schemas.dbo.ContributorRole;
using DailyQuoteProcessStatus = Wwfd.Data.Schemas.DailyQuote.DailyQuoteProcessStatus;
using DocumentType = Wwfd.Data.Schemas.dbo.DocumentType;
using FounderRole = Wwfd.Data.Schemas.dbo.FounderRole;
using QuoteHistoryType = Wwfd.Data.Schemas.dbo.QuoteHistoryType;
using QuoteReferenceStatus = Wwfd.Data.Schemas.dbo.QuoteReferenceStatus;
using QuoteStatus = Wwfd.Data.Schemas.dbo.QuoteStatus;

namespace Wwfd.Data.Context
{
	public class WwfdContext :  DbContext
	{
		public WwfdContext() : base (ConfigurationManager.ConnectionStrings["Wwfd"].ConnectionString)
		{
			
		}

		private static Assembly _assembly;

		private static Assembly Assembly
		{
			get { return _assembly ?? (_assembly = Assembly.GetExecutingAssembly()); }
		}

		//dbo
		public DbSet<Founder> Founders { get; set; }
		public DbSet<FounderRole> FounderRoles { get; set; }
		public DbSet<Quote> Quotes { get; set; }
		public DbSet<QuoteHistory> QuoteHistories { get; set; }
		public DbSet<QuoteHistoryType> QuoteHistoryTypes { get; set; }
		public DbSet<QuoteReference> QuoteReferences { get; set; }
		public DbSet<QuoteReferenceStatus> QuoteReferenceStatusTypes { get; set; }
		public DbSet<QuoteStatus> QuoteStatus { get; set; }
		public DbSet<ContributorRole> ContributorRoles { get; set; }
		public DbSet<Contributor> Contributors { get; set; }
		public DbSet<Document> Documents { get; set; }
		public DbSet<DocumentType> DocumentTypes { get; set; }
		public DbSet<DocumentReference> DocumentReferences { get; set; }
		public DbSet<PerformedSearch> PerformedSerarches { get; set; }

		//DailyQuote
		public DbSet<DailyQuoteSubscriber> DailyQuoteSubscribers { get; set; }
		public DbSet<DailyQuote> DailyQuotes { get; set; }
		public DbSet<DailyQuoteProcess> DailyQuoteProcesses { get; set; }
		public DbSet<DailyQuoteProcessStatus> DailyQuoteProcessesStatuses { get; set; }

		public static void Initialize(bool populateSeedData = true)
		{
			//delete existing db
			var context = new WwfdContext();
			context.Database.Delete();

			//create new db from scratch
			context.Database.Initialize(true);

			//seed the lookup tables
			context.CreateLookupForEnum<Enums.FounderRole>();
			context.CreateLookupForEnum<Enums.DocumentType>();
			context.CreateLookupForEnum<Enums.ContributorRole>();
			context.CreateLookupForEnum<Enums.QuoteHistoryType>();
			context.CreateLookupForEnum<Enums.QuoteStatus>();
			context.CreateLookupForEnum<Enums.QuoteReferenceStatus>();
			context.CreateLookupForEnum<Enums.DailyQuoteProcessStatus>();

			//setup advanced stuff
			SetupExtendedOptions(context);

			//populate db with data if requested
			if (populateSeedData)
				PopulateSeedData(context);
		}

		private static void SetupExtendedOptions(WwfdContext context)
		{
			context.Database.ExecuteSqlCommand(TransactionalBehavior.DoNotEnsureTransaction, GetResourceSqlScript("Wwfd.Data.Scripts.SetupCalulatedColumns.sql"));
			
            //full text searching
			context.Database.ExecuteSqlCommand(TransactionalBehavior.DoNotEnsureTransaction, GetResourceSqlScript("Wwfd.Data.Scripts.SetupFullText.sql"));

			//triggers
			//context.Database.ExecuteSqlCommand(TransactionalBehavior.DoNotEnsureTransaction, GetResourceSqlScript("Wwfd.Data.Scripts.SetupTriggers.sql"));

			//disable lazyloading (should be default)
			context.Configuration.LazyLoadingEnabled = false;
		}

		private static void PopulateSeedData(WwfdContext context)
		{
			context.Database.ExecuteSqlCommand(GetResourceSqlScript("Wwfd.Data.Scripts.SeedContributors.sql"));
			context.Database.ExecuteSqlCommand(GetResourceSqlScript("Wwfd.Data.Scripts.SeedFounder.sql"));
			context.Database.ExecuteSqlCommand(GetResourceSqlScript("Wwfd.Data.Scripts.SeedFounderRoles.sql"));
			context.Database.ExecuteSqlCommand(GetResourceSqlScript("Wwfd.Data.Scripts.SeedQuotes.sql"));
			context.Database.ExecuteSqlCommand(GetResourceSqlScript("Wwfd.Data.Scripts.SeedQuoteHistories.sql"));
			context.Database.ExecuteSqlCommand(GetResourceSqlScript("Wwfd.Data.Scripts.SeedQuoteReferences.sql"));
			context.Database.ExecuteSqlCommand(GetResourceSqlScript("Wwfd.Data.Scripts.SeedDocuments.sql"));
		}

		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
			base.OnModelCreating(modelBuilder);

			//schemas
			/*
						modelBuilder.Entity<DailyQuoteSubscriber>().ToTable("DailyQuoteSubscriber", WwfdSchemas.DAILY_QUOTE);
						modelBuilder.Entity<DailyQuoteSubscriber>().ToTable("DailyQuote", WwfdSchemas.DAILY_QUOTE);
						modelBuilder.Entity<DailyQuoteSubscriber>().ToTable("DailyQuoteProcess", WwfdSchemas.DAILY_QUOTE);
						modelBuilder.Entity<DailyQuoteSubscriber>().ToTable("DailyQuoteProcessStatus", WwfdSchemas.DAILY_QUOTE);
			*/

			modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();

/*
			modelBuilder.Entity<QuoteReference>()
				.HasRequired(m => m.Contributor)
				.WithRequiredDependent()
				.Map(x => x.MapKey("ContributorId"))
				.WillCascadeOnDelete(false);

			modelBuilder.Entity<QuoteReference>()
				.HasOptional(e => e.Verifier)
				.WithOptionalDependent()
				.Map(x => x.MapKey("VerifierId"))
				.WillCascadeOnDelete(false);
*/

			//create many-to-many relationship with contributor roles
			modelBuilder.Entity<Contributor>()
				.HasMany(x => x.ContributorRoles)
				.WithMany(x => x.Contributors)
				.Map(x =>
				{
					x.ToTable("ContributorRoles");
					x.MapLeftKey("ContributorId");
					x.MapRightKey("ContributorRoleId");
				});

			//create many-to-many relationship with founder roles
			modelBuilder.Entity<Founder>()
				.HasMany(x => x.FounderRoles)
				.WithMany(x => x.Founders)
				.Map(x =>
				{
					x.ToTable("FounderRoles");
					x.MapLeftKey("FounderId");
					x.MapRightKey("FounderRoleId");
				});

			modelBuilder.Entity<Founder>()
				.HasMany(x => x.Documents)
				.WithMany(x => x.Founders)
				.Map(x => {
					x.ToTable("FounderDocument");
					x.MapLeftKey("FounderId");
					x.MapRightKey("DocumentId");
				});

			//this ensures that full text searching will be enabled for certain fields
			DbInterception.Add(new FullTextSearchInterceptor());

						
		}

		private static string GetResourceSqlScript(string resourcePath)
		{
			using (Stream stream = Assembly.GetManifestResourceStream(resourcePath))
			using (StreamReader reader = new StreamReader(stream))
				return reader.ReadToEnd();
		}

	}
}
