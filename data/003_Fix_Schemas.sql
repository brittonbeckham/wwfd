USE [wwfd]
GO

ALTER SCHEMA dbo TRANSFER bbeckham_master.KeywordPhrases 
ALTER SCHEMA dbo TRANSFER wwfd_user.BuildKeywordPhrasesTable;
ALTER SCHEMA dbo TRANSFER wwfd_user.GetStats;
ALTER SCHEMA dbo TRANSFER wwfd_user.GetTopKeywordPhrases;
ALTER SCHEMA dbo TRANSFER wwfd_user.SetQOTDStatus;
ALTER SCHEMA dbo TRANSFER wwfdweb_34370.SearchFounders;
GO


DROP SCHEMA [wwfdweb_34370]
DROP SCHEMA [wwfd_user]
DROP SCHEMA [bbeckham_master]
GO

