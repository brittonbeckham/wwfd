USE [master]
GO
/****** Object:  Database [wwfd]    Script Date: 11/12/2013 10:25:00 PM ******/
CREATE DATABASE [wwfd] 
GO
ALTER DATABASE [wwfd] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wwfd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wwfd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wwfd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wwfd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wwfd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wwfd] SET ARITHABORT OFF 
GO
ALTER DATABASE [wwfd] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wwfd] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [wwfd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wwfd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wwfd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wwfd] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wwfd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wwfd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wwfd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wwfd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wwfd] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wwfd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wwfd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wwfd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wwfd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wwfd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wwfd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wwfd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wwfd] SET RECOVERY FULL 
GO
ALTER DATABASE [wwfd] SET  MULTI_USER 
GO
ALTER DATABASE [wwfd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wwfd] SET DB_CHAINING OFF 
GO
USE [wwfd]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 11/12/2013 10:25:02 PM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 11/12/2013 10:25:02 PM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 11/12/2013 10:25:02 PM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 11/12/2013 10:25:02 PM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 11/12/2013 10:25:02 PM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 11/12/2013 10:25:02 PM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 11/12/2013 10:25:03 PM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 11/12/2013 10:25:03 PM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 11/12/2013 10:25:03 PM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 11/12/2013 10:25:03 PM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 11/12/2013 10:25:03 PM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 11/12/2013 10:25:03 PM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 11/12/2013 10:25:04 PM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 11/12/2013 10:25:05 PM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 11/12/2013 10:25:06 PM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 11/12/2013 10:25:06 PM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 11/12/2013 10:25:06 PM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 11/12/2013 10:25:06 PM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 11/12/2013 10:25:06 PM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 11/12/2013 10:25:06 PM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 11/12/2013 10:25:06 PM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 11/12/2013 10:25:07 PM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 11/12/2013 10:25:07 PM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 11/12/2013 10:25:07 PM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 11/12/2013 10:25:07 PM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 11/12/2013 10:25:07 PM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [bbeckham_master]    Script Date: 11/12/2013 10:25:07 PM ******/
CREATE SCHEMA [bbeckham_master]
GO
/****** Object:  Schema [wwfd_user]    Script Date: 11/12/2013 10:25:07 PM ******/
CREATE SCHEMA [wwfd_user]
GO
/****** Object:  Schema [wwfdweb_34370]    Script Date: 11/12/2013 10:25:08 PM ******/
CREATE SCHEMA [wwfdweb_34370]
GO
/****** Object:  StoredProcedure [dbo].[AddQOTDSubscriber]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddQOTDSubscriber]
	(
		@EmailAddress nvarchar(50)
	)
AS
BEGIN
	
	--check to see if this email already exists in the system
	IF (SELECT COUNT(*) FROM QOTDSubscribers q WHERE q.SubscriberEmail = @EmailAddress) = 1
		BEGIN
			-- if it does and it's not active, simply activate it
			IF (SELECT Active FROM QOTDSubscribers q WHERE q.SubscriberEmail = @EmailAddress) = 0
				UPDATE QOTDSubscribers SET Active = 1 WHERE SubscriberEmail = @EmailAddress
		END
	ELSE
		BEGIN
			-- if it doesn't exist, then add the email to the subscribers list
			INSERT INTO QOTDSubscribers (SubscriberEmail) VALUES (@EmailAddress)
		END	
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END

GO
/****** Object:  StoredProcedure [dbo].[AuthenticateUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AuthenticateUser]
(
	@Email nvarchar(50),
	@Password nvarchar(50)
)
AS
	SET NOCOUNT ON;
SELECT CAST(1 as bit) AS CanLogin FROM Contributors
WHERE
	Active = 1 AND
	Email = @Email AND 
	CAST(RTRIM(Password) as varbinary) = CAST(RTRIM(@Password) as varbinary)

GO
/****** Object:  StoredProcedure [dbo].[CreateRandomQOTD]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateRandomQOTD]
	
AS
	--get a random quoteid not already in the QOTD
	DECLARE @QuoteID int
	SET @QuoteID = (SELECT TOP 1 QuoteID FROM Quotes WHERE QuoteID NOT IN (SELECT QuoteID FROM QOTD q WHERE q.[Date] > GETDATE()-365) ORDER BY NEWID())
	
	--get the last known date for the QOTD and increase by 1
	DECLARE @Date date
	SET @Date = (SELECT DATEADD(d, 1, [Date]) FROM QOTD WHERE [ID] = (SELECT MAX([ID]) FROM QOTD))

	IF (@Date IS NULL)
		SET @Date = GetDate()

	--insert the quote reference
	INSERT INTO QOTD (QuoteID, [Date]) VALUES (@QuoteID, @Date)


	RETURN

GO
/****** Object:  StoredProcedure [dbo].[GetQuoteOfTheDay]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetQuoteOfTheDay]
	
AS
	--gets today's 'quote of the day'
	SELECT * FROM QuotesView
	WHERE QuoteID = (SELECT QuoteID FROM QOTD WHERE QOTD.[Date] = CAST(GETDATE() as date))
		
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[GetRandomQuote]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRandomQuote]
		
AS
	SELECT TOP 1 q.*, f.FullName 
	FROM Quotes q LEFT JOIN Founders f
		on f.FounderID = q.FounderID

	ORDER BY NEWID()		
		
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[GetRandomQuoteID]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRandomQuoteID]
		
AS
	SELECT TOP 1 QuoteID
	FROM Quotes
	ORDER BY NEWID()		
		
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SearchQuotes]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchQuotes]
	(
		@SearchText nvarchar(100) = 'bla',
		@SaveSearch bit = 0
	)
	
AS
	

	--remove leading and trailing spaces
	SET @SearchText = LTRIM(@SearchText)
	SET @SearchText = RTRIM(@SearchText)
	
	IF (@SaveSearch = 1)
		INSERT INTO Searches (SearchText) VALUES (@SearchText)
	
	--stores all the results found with a relative ranking based on the query performed for the result
	CREATE TABLE #TempResults
		(QuoteID int, Rank smallint)

	--stores unique results with summed rankings
	CREATE TABLE #RankedResults
		(QuoteID int, Rank smallint)

	CREATE TABLE #Words
		(Word nvarchar(35))


	/* QUERY #1 - looks for an exact match to the search in the quote text (multi-word searches only)
	   hits are worth 100 points */
	IF (CHARINDEX(' ', @SearchText) > 0)
		BEGIN
			INSERT INTO #TempResults (QuoteID, Rank)
			SELECT QuoteID, 100 as Rank
			FROM Quotes
			WHERE LOWER(QuoteText) LIKE '%' + LOWER(@SearchText) + '%'
		END 
		
	/* QUERY #2 - looks for an exact match of a multi-word search in the keywords 
	   this esentially matches phrases with phrases in the keywords area 
	   hits are worth 65 points */
	IF (CHARINDEX(' ', @SearchText) > 0)
		BEGIN 
			INSERT INTO #TempResults (QuoteID, Rank)
			SELECT QuoteID, 65 as Rank
			FROM Quotes
			WHERE LOWER(Keywords) LIKE '%' + LOWER(@SearchText) + '%'
		END 		
		
	/* this section divides the search text up by the spaces in the 
	text and searches a number of things using each word */
	DECLARE @separator_position INT 
	DECLARE @WordList nvarchar(255)
	DECLARE @Word nvarchar(35)
	DECLARE @Separator char(1)
	
	SET @Separator = ' ' --a space
	SET @WordList = @SearchText + @Separator --adds a space to the end of the search text so this gets executed at least once 
	
	WHILE PATINDEX('%' + @Separator + '%', @WordList) <> 0 
		BEGIN
			
			SELECT @separator_position = PATINDEX('%' + @Separator + '%', @WordList)
			SELECT @Word = LOWER(LEFT(@WordList, @separator_position - 1))
			
			--strip unessential words from the search text (convert them to '^', which will not return a result of any kind)
			IF (@Word = 'a') SET @Word = '^'
			IF (@Word = 'i') SET @Word = '^'
			IF (@Word = 'at') SET @Word = '^'
			IF (@Word = 'of') SET @Word = '^'
			IF (@Word = 'is') SET @Word = '^'
			IF (@Word = 'it') SET @Word = '^'
			IF (@Word = 'in') SET @Word = '^'
			IF (@Word = 'to') SET @Word = '^'
			IF (@Word = 'the') SET @Word = '^'
			IF (@Word = 'but') SET @Word = '^'
			IF (@Word = 'and') SET @Word = '^'
			IF (@Word = 'for') SET @Word = '^'
			IF (@Word = 'this') SET @Word = '^'
			IF (@Word = 'then') SET @Word = '^'
			IF (@Word = 'them') SET @Word = '^'
			IF (@Word = 'that') SET @Word = '^'
			IF (@Word = 'with') SET @Word = '^'
			IF (@Word = 'there') SET @Word = '^'
			IF (@Word = 'their') SET @Word = '^'
			IF (@Word = 'those') SET @Word = '^'
			IF (@Word = 'where') SET @Word = '^'
			
			--keep track of words (for debugging)
			--INSERT INTO #Words (Word) VALUES (@Word)
			
			/* QUERY #3 - search the keywords individually, 
			   hits are worth 15 points each */
			INSERT INTO #TempResults (QuoteID, Rank)			
			SELECT QuoteID, 15 as Rank
				FROM Quotes
				WHERE ' ' + LOWER(REPLACE(Keywords, ',',' ')) + ' ' LIKE '% ' + @Word + ' %'	
				
			/* QUERY #4 - single word matches within the quote text
			   hits are worth 5 points */
			INSERT INTO #TempResults (QuoteID, Rank)			
			SELECT QuoteID, 5 as Rank
				FROM Quotes
				WHERE LOWER(REPLACE(QuoteText,',',' ')) LIKE '% ' + @Word + ' %'
			
			/* QUERY #5 - match names of the founders to boost the ranking  
			   hits are worth 50 points */
			INSERT INTO #TempResults (QuoteID, Rank)			
			SELECT QuoteID, 50 as Rank
				FROM Quotes q LEFT JOIN Founders f on f.FounderID = q.FounderID
				WHERE LOWER(FullName) LIKE '% ' + @Word + ' %'					

			--change the wordlist variable
			SELECT @WordList = STUFF(@WordList, 1, @separator_position, '')
		END	
	
	--get the final results, grouping by rank
	INSERT INTO #RankedResults (QuoteID, Rank)
	SELECT QuoteID, SUM(Rank) FROM #TempResults GROUP BY QuoteID ORDER BY SUM(Rank) DESC
		
	--this gets the final result set
	SELECT TOP 100 Rank, q.* 
	FROM #RankedResults
		LEFT JOIN QuotesView q on #RankedResults.QuoteID = q.QuoteID		 
	ORDER BY Rank DESC

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPForumsCategoriesGetAll]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPForumsCategoriesGetAll]
AS
SELECT 
	CategoryId
	,CategoryName
	,CategoryOrder
FROM
	ForumsCategories
ORDER BY
	CategoryOrder
GO
/****** Object:  StoredProcedure [dbo].[SPForumsDelete]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPForumsDelete]
	@ForumShortName nvarchar(32)
AS

UPDATE Forums
SET
	Active = 0
WHERE
	ForumShortName = @ForumShortName
GO
/****** Object:  StoredProcedure [dbo].[SPForumsGetByCategory]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPForumsGetByCategory]
	@UserGroupId smallint=NULL
AS
SELECT
	F.ForumId
	,F.ForumName
	,F.ForumShortName
	,F.ForumDescription
	,F.UserId
	,F.ForumCreationDate
	,F.ForumTopicCount
	,F.ForumMessageCount
	,C.CategoryId
	,C.CategoryName
FROM
	ForumsCategories C
	INNER JOIN Forums F ON F.CategoryId = C.CategoryId
WHERE
	F.Active = 1
	AND
	ISNULL(F.ReadAccessGroupId,-1) <= ISNULL(@UserGroupId,-1)
ORDER BY
	C.CategoryOrder,
	F.ForumOrder
GO
/****** Object:  StoredProcedure [dbo].[SPForumsGetByShortName]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPForumsGetByShortName]
	@ShortName nvarchar(32)
AS
SELECT
	F.ForumId
	,F.ForumName
	,F.ForumShortName
	,F.ForumDescription
	,F.UserId
	,F.ForumCreationDate
	,F.ForumTopicCount
	,F.ForumMessageCount
	,C.CategoryId
	,C.CategoryName
	,F.ReadAccessGroupId
	,F.PostAccessGroupId
FROM
	Forums F 
	INNER JOIN ForumsCategories C ON F.CategoryId = C.CategoryId
WHERE
	F.ForumShortName = @ShortName
	AND
	F.Active = 1
GO
/****** Object:  StoredProcedure [dbo].[SPForumsGetUsedShortNames]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPForumsGetUsedShortNames]
(
	@ForumShortName nvarchar(32), 
	@SearchShortName nvarchar(32)
)
AS
/*
	Gets used short names for forums
	returns:
		IF NOT USED SHORTNAME: empty result set
		IF USED SHORTNAME: resultset with amount of rows used
*/
DECLARE @CurrentValue nvarchar(32)
SELECT 
	@CurrentValue = ForumShortName
FROM 
	Forums
WHERE
	ForumShortName = @ForumShortName
	

IF @CurrentValue IS NULL
	SELECT NULL As ForumShortName WHERE 1=0
ELSE
	SELECT 
		ForumShortName
	FROM
		Forums
	WHERE
		ForumShortName LIKE @SearchShortName + '%'
		OR
		ForumShortName = @ForumShortName
GO
/****** Object:  StoredProcedure [dbo].[SPForumsInsert]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPForumsInsert]
(
	@ForumName nvarchar(255)
	,@ForumShortName nvarchar(32)
	,@ForumDescription nvarchar(max)
	,@CategoryId int
	,@UserId int
	,@ReadAccessGroupId smallint
	,@PostAccessGroupId smallint
)
AS
INSERT INTO Forums
(
	ForumName
	,ForumShortName
	,ForumDescription
	,CategoryId
	,UserId
	,ForumCreationDate
	,ForumLastEditDate
	,ForumLastEditUser
	,Active
	,ForumTopicCount
	,ForumMessageCount
	,ForumOrder
	,ReadAccessGroupId
	,PostAccessGroupId
)
VALUES
(
	@ForumName
	,@ForumShortName
	,@ForumDescription
	,@CategoryId
	,@UserId
	,GETUTCDATE()
	,GETUTCDATE()
	,@UserId
	,1
	,0
	,0
	,0
	,@ReadAccessGroupId
	,@PostAccessGroupId
)
GO
/****** Object:  StoredProcedure [dbo].[SPForumsUpdate]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPForumsUpdate]
(
	@ForumShortName nvarchar(32)
	,@ForumName nvarchar(255)
	,@ForumDescription nvarchar(max)
	,@CategoryId int
	,@UserId int
	,@ReadAccessGroupId smallint
	,@PostAccessGroupId smallint
)
AS
UPDATE Forums
SET
	ForumName = @ForumName
	,ForumDescription = @ForumDescription 
	,CategoryId = @CategoryId
	,ForumLastEditDate = GETUTCDATE()
	,ForumLastEditUser = @UserId
	,ReadAccessGroupId = @ReadAccessGroupId
	,PostAccessGroupId = @PostAccessGroupId
WHERE
	ForumShortName = @ForumShortName
GO
/****** Object:  StoredProcedure [dbo].[SPForumsUpdateLastMessage]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPForumsUpdateLastMessage]
	@TopicId int
	,@MessageId int
AS

UPDATE F
SET
	F.ForumMessageCount = F.ForumMessageCount + 1
FROM
	Topics T
	INNER JOIN Forums F ON F.ForumId = T.ForumId
WHERE
  T.TopicId = @TopicId;
GO
/****** Object:  StoredProcedure [dbo].[SPForumsUpdateRecount]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPForumsUpdateRecount]
	@ForumId int = 2
AS
/*
	RECOUNTS THE CHILDREN MESSAGES AND TOPICS
*/
DECLARE @ForumTopicCount int, @ForumMessageCount int;

SELECT
	@ForumTopicCount = COUNT(TopicId)
	,@ForumMessageCount = SUM(TopicReplies)
FROM
	Topics
WHERE
	ForumId = @ForumId
	AND
	Active = 1;

UPDATE Forums
SET 
	ForumTopicCount = ISNULL(@ForumTopicCount, 0)
	,ForumMessageCount = ISNULL(@ForumMessageCount, 0)
WHERE	
	ForumId = @ForumId;
GO
/****** Object:  StoredProcedure [dbo].[SPMessagesDelete]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMessagesDelete]
	@TopicId int
	,@MessageId int
	,@UserId int
AS
UPDATE Messages
SET
	Active = 0
	,MessageLastEditDate = GETUTCDATE()
	,MessageLastEditUser = @UserId
WHERE
	TopicId = @TopicId
	AND
	MessageId = @MessageId
GO
/****** Object:  StoredProcedure [dbo].[SPMessagesFlag]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMessagesFlag]
(
	@TopicId int=1
	,@MessageId int=1
	,@Ip varchar (39)='127.0.0.1'
)
AS
IF NOT EXISTS (SELECT * FROM Flags WHERE TopicId=@TopicId AND IP=@Ip AND (MessageId=@MessageId OR (@MessageId IS NULL AND MessageId IS NULL)))
	BEGIN
	INSERT INTO Flags
	(TopicId, MessageId, Ip, FlagDate)
	VALUES
	(@TopicId, @MessageId, @Ip, GETUTCDATE())
	END
GO
/****** Object:  StoredProcedure [dbo].[SPMessagesFlagsClear]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMessagesFlagsClear]
(
	@TopicId int=1
	,@MessageId int=1
)
AS
DELETE FROM 
	Flags
WHERE
	TopicId = @TopicId
	AND
	MessageId = @MessageId
GO
/****** Object:  StoredProcedure [dbo].[SPMessagesFlagsGetAll]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMessagesFlagsGetAll]
AS
/*
	Lists all flagged messages (not topics)
*/
SELECT
	F.TopicId
	,F.MessageId
	,COUNT(FlagId) AS TotalFlags
	,T.TopicTitle
	,T.TopicShortName
	,Forums.ForumId
	,Forums.ForumShortName
	,Forums.ForumName
	,M.MessageBody
	,M.UserName
	,M.UserId
FROM
	Flags F
	INNER JOIN Topics T ON T.TopicId = F.TopicId
	INNER JOIN Forums ON Forums.ForumId = T.ForumId
	INNER JOIN MessagesComplete M ON M.TopicId = T.TopicId AND M.MessageId = F.MessageId
WHERE
	T.Active = 1
	AND	
	M.Active = 1
GROUP BY	
	F.TopicId
	,F.MessageId
	,T.TopicTitle
	,T.TopicShortName
	,Forums.ForumId
	,Forums.ForumShortName
	,Forums.ForumName
	,M.MessageBody
	,M.UserName
	,M.UserId
ORDER BY COUNT(FlagId) DESC, F.TopicId
GO
/****** Object:  StoredProcedure [dbo].[SPMessagesGetByTopic]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMessagesGetByTopic]
	@TopicId int=2
AS
SELECT 
	ROW_NUMBER()
			OVER 
				(ORDER BY M.TopicId, M.MessageId)
			AS RowNumber
	,M.TopicId
	,M.MessageId
	,M.MessageBody
	,M.MessageCreationDate
	,M.MessageLastEditDate
	,M.ParentId
	,UserId
	,UserName
	,UserSignature
	,UserGroupId
	,UserGroupName
	,UserPhoto
	,UserRegistrationDate
	,M.Active
FROM 
	dbo.MessagesComplete M
WHERE 
	M.TopicId = @TopicId
GO
/****** Object:  StoredProcedure [dbo].[SPMessagesGetByTopicFrom]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMessagesGetByTopicFrom]
	@TopicId int=1,
	@FirstMsg int=13,
	@Amount int=10
AS
SELECT
*
FROM
	(
	SELECT 
		ROW_NUMBER()
				OVER 
					(ORDER BY M.TopicId, M.MessageId)
				AS RowNumber
		,M.TopicId
		,M.MessageId
		,M.MessageBody
		,M.MessageCreationDate
		,M.MessageLastEditDate
		,M.ParentId
		,UserId
		,UserName
		,UserSignature
		,UserGroupId
		,UserGroupName
		,UserPhoto
		,UserRegistrationDate
		,M.Active
	FROM 
		dbo.MessagesComplete M
	WHERE 
		M.TopicId = @TopicId
		AND
		M.MessageId > @FirstMsg
	) M
WHERE
	RowNumber <= @Amount
GO
/****** Object:  StoredProcedure [dbo].[SPMessagesGetByTopicLatest]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMessagesGetByTopicLatest]
	@TopicId int=2
AS
SELECT 
	TOP 20
	M.TopicId
	,M.MessageId
	,M.MessageBody
	,M.MessageCreationDate
	,M.MessageLastEditDate
	,M.ParentId
	,UserId
	,UserName
	,UserSignature
	,UserGroupId
	,UserGroupName
	,M.Active
FROM 
	dbo.MessagesComplete M
WHERE 
	M.TopicId = @TopicId
ORDER BY
	TopicId, MessageId DESC
GO
/****** Object:  StoredProcedure [dbo].[SPMessagesGetByTopicUpTo]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMessagesGetByTopicUpTo]
	@TopicId int=1,
	@FirstMsg int=3,
	@LastMsg int=28
AS
SELECT 
	ROW_NUMBER()
			OVER 
				(ORDER BY M.TopicId, M.MessageId)
			AS RowNumber
	,M.TopicId
	,M.MessageId
	,M.MessageBody
	,M.MessageCreationDate
	,M.MessageLastEditDate
	,M.ParentId
	,UserId
	,UserName
	,UserSignature
	,UserGroupId
	,UserGroupName
	,UserPhoto
	,UserRegistrationDate
	,M.Active
FROM 
	dbo.MessagesComplete M
WHERE 
	M.TopicId = @TopicId
	AND
	M.MessageId > @FirstMsg
	AND
	M.MessageId <= @LastMsg
GO
/****** Object:  StoredProcedure [dbo].[SPMessagesInsert]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMessagesInsert]
	@TopicId int
	,@MessageBody nvarchar(max)
	,@UserId int
	,@MessageId int OUTPUT
	,@Ip varchar (39)
	,@ParentId int
AS

UPDATE T
	SET
	MessagesIdentity = MessagesIdentity+1
	,@MessageId = MessagesIdentity+1
FROM
	Topics T
WHERE
	TopicId = @TopicId


BEGIN TRY
	BEGIN TRANSACTION

	INSERT INTO Messages
	(
	TopicId
	,MessageId
	,MessageBody
	,MessageCreationDate
	,MessageLastEditDate
	,MessageLastEditUser
	,UserId
	,Active
	,EditIp
	,ParentId
	)
	VALUES
	(
	@TopicId
	,@MessageId
	,@MessageBody
	,GETUTCDATE()
	,GETUTCDATE()
	,@UserId
	,@UserId
	,1
	,@Ip
	,@ParentId
	)


	
	--Update topic
	exec SPTopicsUpdateLastMessage @TopicId=@TopicId, @MessageId=@MessageId
	--Update forums
	exec SPForumsUpdateLastMessage @TopicId=@TopicId, @MessageId=@MessageId
	COMMIT

END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK

  -- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		 @ErrSeverity = ERROR_SEVERITY()

	RAISERROR(@ErrMsg, @ErrSeverity, 1)

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[SPPageContentsDelete]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPPageContentsDelete]
	@PageContentShortName nvarchar(128)
AS
DELETE FROM PageContents 
WHERE
	PageContentShortName = @PageContentShortName
GO
/****** Object:  StoredProcedure [dbo].[SPPageContentsGet]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPPageContentsGet]
	@PageContentShortName nvarchar(128)='about'
AS
SELECT
	PageContentId
	,PageContentTitle
	,PageContentBody
	,PageContentShortName
FROM
	dbo.PageContents
WHERE
	PageContentShortName = @PageContentShortName
GO
/****** Object:  StoredProcedure [dbo].[SPPageContentsGetAll]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPPageContentsGetAll]
	
AS
SELECT
	PageContentId
	,PageContentTitle
	,PageContentBody
	,PageContentShortName
FROM
	dbo.PageContents
ORDER BY
	PageContentTitle
GO
/****** Object:  StoredProcedure [dbo].[SPPageContentsGetUsedShortNames]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPPageContentsGetUsedShortNames]
(
	@PageContentShortName nvarchar(32), 
	@SearchShortName nvarchar(32)
)
AS
/*
	Gets used short names for PageContents
	returns:
		IF NOT USED SHORTNAME: empty result set
		IF USED SHORTNAME: resultset with amount of rows used
*/
DECLARE @CurrentValue nvarchar(32)
SELECT 
	@CurrentValue = PageContentShortName
FROM 
	PageContents
WHERE
	PageContentShortName = @PageContentShortName
	

IF @CurrentValue IS NULL
	SELECT NULL As ForumShortName WHERE 1=0
ELSE
	SELECT 
		PageContentShortName
	FROM
		PageContents
	WHERE
		PageContentShortName LIKE @SearchShortName + '%'
		OR
		PageContentShortName = @PageContentShortName
GO
/****** Object:  StoredProcedure [dbo].[SPPageContentsInsert]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPPageContentsInsert]
	@PageContentShortName nvarchar(128)
	,@PageContentTitle nvarchar(128)
	,@PageContentBody nvarchar(max)
AS
INSERT INTO PageContents 
(
PageContentTitle
,PageContentBody
,PageContentShortName
,PageContentEditDate
)
VALUES
(
@PageContentTitle
,@PageContentBody
,@PageContentShortName
,GETUTCDATE()
)
GO
/****** Object:  StoredProcedure [dbo].[SPPageContentsUpdate]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPPageContentsUpdate]
	@PageContentShortName nvarchar(128)
	,@PageContentTitle nvarchar(128)
	,@PageContentBody nvarchar(max)
AS
UPDATE PageContents 
SET
	PageContentTitle = @PageContentTitle
	,PageContentBody = @PageContentBody
	,PageContentEditDate = GETUTCDATE()
WHERE
	PageContentShortName = @PageContentShortName
GO
/****** Object:  StoredProcedure [dbo].[SPTagsGetMostViewed]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTagsGetMostViewed]
	@ForumId int=2
	,@Top bigint=5
AS
SELECT
	Tag, 
	TagViews, 
	(TagViews*100.00)/SUM(case when TagViews > 0 then TagViews else 1 end) OVER() AS Weight
FROM
	(
	SELECT
		TOP (@Top)
		Tags.Tag
		,SUM(T.TopicViews) As TagViews
		,COUNT(T.TopicId) As TopicCount
	FROM
		Tags
		INNER JOIN Topics T ON Tags.TopicId = T.TopicId
	WHERE
		T.ForumId = @ForumId
		AND
		T.Active = 1
	GROUP BY
		Tags.Tag
	ORDER BY SUM(T.TopicViews) desc
	) T
ORDER BY Tag
GO
/****** Object:  StoredProcedure [dbo].[SPTagsInsert]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTagsInsert]
	@Tags nvarchar(256),
	@TopicId int,
	@PreviousTags nvarchar(256)=NULL
AS

IF NOT @PreviousTags IS NULL
	BEGIN
	DELETE FROM Tags
	WHERE
		Tag IN (SELECT part FROM dbo.Split(@PreviousTags, ' '))
		AND
		TopicId = @TopicId
	END

INSERT INTO Tags
(Tag,TopicId)
SELECT part, @TopicId FROM dbo.Split(@Tags, ' ')
GO
/****** Object:  StoredProcedure [dbo].[SPTemplatesDelete]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTemplatesDelete]
	@TemplateId int
AS
DELETE FROM Templates WHERE TemplateId = @TemplateId
GO
/****** Object:  StoredProcedure [dbo].[SPTemplatesGet]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTemplatesGet]
	@TemplateId int
AS
SELECT
	TemplateId
	,TemplateKey
	,TemplateDescription
	,TemplateIsCurrent
FROM
	Templates
WHERE
	TemplateId = @TemplateId
GO
/****** Object:  StoredProcedure [dbo].[SPTemplatesGetAll]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTemplatesGetAll]
AS
SELECT
	TemplateId
	,TemplateKey
	,TemplateDescription
	,TemplateIsCurrent
FROM
	Templates
GO
/****** Object:  StoredProcedure [dbo].[SPTemplatesGetCurrent]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTemplatesGetCurrent]

AS
SELECT
	TemplateId
	,TemplateKey
	,TemplateDescription
FROM
	Templates
WHERE
	TemplateIsCurrent = 1
GO
/****** Object:  StoredProcedure [dbo].[SPTemplatesInsert]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTemplatesInsert]
	@TemplateKey nvarchar(64)
	,@TemplateDescription nvarchar(256)
	,@TemplateId int OUTPUT
AS

SELECT @TemplateId = TemplateId 
FROM Templates WHERE TemplateKey=@TemplateKey;

IF @TemplateId IS NULL
	BEGIN
	INSERT INTO Templates
	(
		TemplateKey
		,TemplateDescription
		,TemplateDate
		,TemplateIsCurrent
	)
	VALUES
	(
		@TemplateKey
		,@TemplateDescription
		,GETUTCDATE()
		,0
	);

	SELECT @TemplateId = @@IDENTITY;
	
	END
ELSE
	BEGIN
	UPDATE Templates
	SET
		TemplateDescription = @TemplateDescription
		,TemplateDate = GETUTCDATE()
	WHERE 
		TemplateKey=@TemplateKey;
	END
GO
/****** Object:  StoredProcedure [dbo].[SPTemplatesUpdateCurrent]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTemplatesUpdateCurrent]
	@TemplateId int
AS
UPDATE T
SET
	TemplateIsCurrent = 
		CASE WHEN TemplateId = @TemplateId THEN 1 ELSE 0 END
FROM
	Templates T
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsAddVisit]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsAddVisit]
	@TopicId int=2
AS
UPDATE Topics
SET
	TopicViews = TopicViews+1
WHERE
	TopicId = @TopicId
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsClose]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsClose]
	@TopicId int
	,@UserId int
	,@Ip varchar (39)
AS
	UPDATE Topics
	SET
		TopicIsClose = 1
		,TopicLastEditDate = GETUTCDATE()
		,TopicLastEditUser = @UserId
		,TopicLastEditIp = @Ip
	WHERE
		TopicId = @TopicId
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsDelete]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsDelete]
	@TopicId int
	,@UserId int
	,@Ip varchar (39)
AS
/*
- SETS THE TOPIC ACTIVE=0
- UPDATES RECOUNT ON FORUM
*/

DECLARE @ForumId int;
SELECT @ForumId = ForumId FROM Topics WHERE TopicId = @TopicId;

UPDATE Topics
SET
	Active = 0
	,TopicLastEditDate = GETUTCDATE()
	,TopicLastEditUser = @UserId
	,TopicLastEditIp = @Ip
WHERE
	TopicId = @TopicId;

exec dbo.SPForumsUpdateRecount @ForumId;
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGet]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGet]
	@TopicId int=1
AS
SELECT
	T.TopicId
	,T.TopicTitle
	,T.TopicShortName
	,T.TopicDescription
	,T.TopicCreationDate
	,T.TopicViews
	,T.TopicReplies
	,T.UserId
	,T.TopicTags
	,T.TopicIsClose
	,T.TopicOrder
	,T.LastMessageId
	,T.UserName
	,T.ForumId
	,T.ForumName
	,T.ForumShortName
	,T.ReadAccessGroupId
	,T.PostAccessGroupId
FROM 
	TopicsComplete T
WHERE
	T.TopicId = @TopicId
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGetByForum]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGetByForum]
	@ForumId int = 2
	,@StartIndex int = 0
	,@Length int = 10
	,@UserGroupId int = null
AS
SELECT
	*
FROM
	(SELECT
		ROW_NUMBER()
			OVER 
				(ORDER BY TopicOrder desc
				 ,TopicViews desc)
			AS RowNumber
		,T.TopicId
		,T.TopicTitle
		,T.TopicShortName
		,T.TopicDescription
		,T.TopicCreationDate
		,T.TopicViews
		,T.TopicReplies
		,T.UserId
		,T.TopicTags
		,T.TopicIsClose
		,T.TopicOrder
		,T.LastMessageId
		,T.UserName
		,M.MessageCreationDate
		,M.UserId AS MessageUserId
		,MU.UserName AS MessageUserName
		,T.ReadAccessGroupId
		,T.PostAccessGroupId
	FROM
		TopicsComplete T
		LEFT JOIN [Messages] M ON M.TopicId = T.TopicId AND M.MessageId = T.LastMessageId AND M.Active = 1
		LEFT JOIN Users MU ON MU.UserId = M.UserId
	WHERE
		T.ForumId = @ForumId
		AND
		ISNULL(T.ReadAccessGroupId,-1) <= ISNULL(@UserGroupId,-1)
	) T
WHERE
	RowNumber BETWEEN @StartIndex+1 AND @StartIndex + @Length
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGetByForumLatest]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGetByForumLatest]
	@ForumId int = 2
	,@StartIndex int = 0
	,@Length int = 10
	,@UserGroupId int = null
AS
SELECT
	*
FROM
	(SELECT
		ROW_NUMBER()
			OVER 
				(ORDER BY TopicOrder desc
				 ,
				 (CASE 
					WHEN M.MessageCreationDate > T.TopicCreationDate THEN M.MessageCreationDate
					ELSE T.TopicCreationDate
				END) desc)
			AS RowNumber
		,T.TopicId
		,T.TopicTitle
		,T.TopicShortName
		,T.TopicDescription
		,T.TopicCreationDate
		,T.TopicViews
		,T.TopicReplies
		,T.UserId
		,T.TopicTags
		,T.TopicIsClose
		,T.TopicOrder
		,T.LastMessageId
		,T.UserName
		,M.MessageCreationDate
		,M.UserId AS MessageUserId
		,MU.UserName AS MessageUserName
		,T.ReadAccessGroupId
		,T.PostAccessGroupId
	FROM
		TopicsComplete T
		LEFT JOIN [Messages] M ON M.TopicId = T.TopicId AND M.MessageId = T.LastMessageId AND M.Active = 1
		LEFT JOIN Users MU ON MU.UserId = M.UserId
	WHERE
		T.ForumId = @ForumId
		AND
		ISNULL(T.ReadAccessGroupId,-1) <= ISNULL(@UserGroupId,-1)
	) T
WHERE
	RowNumber BETWEEN @StartIndex+1 AND @StartIndex + @Length
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGetByForumUnanswered]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGetByForumUnanswered]
	@ForumId int = 2
	,@UserGroupId int = null
AS
SELECT
	T.TopicId
	,T.TopicTitle
	,T.TopicShortName
	,T.TopicDescription
	,T.TopicCreationDate
	,T.TopicViews
	,T.TopicReplies
	,T.UserId
	,T.TopicTags
	,T.TopicIsClose
	,T.TopicOrder
	,T.LastMessageId
	,T.UserName
	,M.MessageCreationDate
	,M.UserId AS MessageUserId
	,MU.UserName AS MessageUserName
	,T.ReadAccessGroupId
	,T.PostAccessGroupId
FROM
	TopicsComplete T
	LEFT JOIN Messages M ON M.TopicId = T.TopicId AND M.MessageId = T.LastMessageId AND M.Active = 1
	LEFT JOIN Users MU ON MU.UserId = M.UserId
WHERE
	T.ForumId = @ForumId
	AND
	T.TopicReplies = 0 -- Unanswered
	AND
	T.TopicOrder IS NULL -- Not sticky	
	AND
	ISNULL(T.ReadAccessGroupId,-1) <= ISNULL(@UserGroupId,-1)
ORDER BY 
	TopicViews DESC, TopicId DESC
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGetByRelated]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGetByRelated]
	@Tag1 nvarchar(50)='problem'
	,@Tag2 nvarchar(50)='installation'
	,@Tag3 nvarchar(50)='copy'
	,@Tag4 nvarchar(50)=null
	,@Tag5 nvarchar(50)=null
	,@Tag6 nvarchar(50)=null
	,@TopicId int=1
	,@Amount int=5
	,@UserGroupId int = null
AS
	
WITH TagsParams (Tag) AS
(
	SELECT @Tag1
	UNION
	SELECT @Tag2
	UNION
	SELECT @Tag3
	UNION
	SELECT @Tag4
	UNION
	SELECT @Tag5
	UNION
	SELECT @Tag6
)
SELECT
	TOP (@Amount)
	Ta.TagCount
	,Topics.TopicId
	,Topics.TopicTitle
	,Topics.TopicShortName
	,Topics.TopicDescription
	,Topics.TopicCreationDate
	,Topics.TopicViews
	,Topics.TopicReplies
	,Topics.ForumId
	,Topics.ForumName
	,Topics.ForumShortName
	,Topics.TopicIsClose
	,Topics.TopicOrder
	,Topics.ReadAccessGroupId
	,Topics.PostAccessGroupId
FROM
	(
	SELECT 
		T.TopicId
		,COUNT(T.Tag) AS TagCount
	FROM 
		Tags T
		INNER JOIN TagsParams P ON T.Tag=P.Tag
	WHERE
		T.Tag=P.Tag
	GROUP BY
		T.TopicId
	)
	Ta
	INNER JOIN TopicsComplete Topics ON Topics.TopicId = Ta.TopicId
WHERE
	Topics.TopicId <> @TopicId
	AND
	ISNULL(Topics.ReadAccessGroupId,-1) <= ISNULL(@UserGroupId,-1)
ORDER BY
	1 desc, Topics.TopicViews DESC
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGetByTag]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGetByTag]
	@Tag nvarchar(50)='forum'
	,@ForumId int=2
	,@UserGroupId int = null
AS

--Remove the last char
SET @Tag = SUBSTRING(@Tag, 1, LEN(@Tag)-1)
SELECT
		T.TopicId
		,T.TopicTitle
		,T.TopicShortName
		,T.TopicDescription
		,T.TopicCreationDate
		,T.TopicViews
		,T.TopicReplies
		,T.UserId
		,T.TopicTags
		,T.TopicIsClose
		,T.TopicOrder
		,T.LastMessageId
		,T.UserName
		,M.MessageCreationDate
		,M.UserId AS MessageUserId
		,MU.UserName AS MessageUserName
		,T.ReadAccessGroupId
		,T.PostAccessGroupId
FROM
	Tags
	INNER JOIN TopicsComplete T ON T.TopicId = Tags.TopicId
	LEFT JOIN Messages M ON M.TopicId = T.TopicId AND M.MessageId = T.LastMessageId AND M.Active = 1
	LEFT JOIN Users MU ON MU.UserId = M.UserId
WHERE
	Tags.Tag LIKE @Tag + '%'
	AND
	T.ForumId = @ForumId
	AND
	ISNULL(T.ReadAccessGroupId,-1) <= ISNULL(@UserGroupId,-1)
ORDER BY TopicOrder DESC,TopicViews DESC
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGetByUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGetByUser]
	@UserId int
	,@UserGroupId int = null
AS
SELECT
	T.TopicId
	,T.TopicTitle
	,T.TopicShortName
	,T.TopicDescription
	,T.TopicCreationDate
	,T.TopicViews
	,T.TopicReplies
	,T.UserId
	,T.TopicTags
	,T.TopicIsClose
	,T.TopicOrder
	,T.LastMessageId
	,T.UserName
	,M.MessageCreationDate
	,T.ReadAccessGroupId
	,T.PostAccessGroupId
FROM
	TopicsComplete T
	LEFT JOIN Messages M ON M.TopicId = T.TopicId AND M.MessageId = T.LastMessageId AND M.Active = 1
WHERE
	T.UserId = @UserId
	AND
	ISNULL(T.ReadAccessGroupId,-1) <= ISNULL(@UserGroupId,-1)
ORDER BY T.TopicId DESC
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGetLatest]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGetLatest]
	@UserGroupId int = null
AS
/*
	Gets the latest messages in all forums	
*/
	SELECT
		TOP 20
		T.TopicId
		,T.TopicTitle
		,T.TopicShortName
		,T.TopicDescription
		,T.TopicCreationDate
		,T.TopicViews
		,T.TopicReplies
		,T.UserId
		,T.TopicTags
		,T.TopicIsClose
		,T.TopicOrder
		,T.LastMessageId
		,T.UserName
		,M.MessageCreationDate
	FROM
		TopicsComplete T
		LEFT JOIN Messages M ON M.TopicId = T.TopicId AND M.MessageId = T.LastMessageId AND M.Active = 1
	WHERE
		ISNULL(T.ReadAccessGroupId,-1) <= ISNULL(@UserGroupId,-1)
	ORDER BY T.TopicId desc
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGetMessagesByUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGetMessagesByUser]
	@UserId int	
AS
/*
Gets the messages posted by the user grouped by topic
*/
SELECT
	T.TopicId
	,M.MessageId
	,M.MessageCreationDate
	,T.TopicTitle
	,T.TopicShortName
	,T.TopicDescription
	,T.TopicCreationDate
	,T.TopicViews
	,T.TopicReplies
	,T.UserId
	,T.TopicTags
	,T.TopicIsClose
	,T.TopicOrder
FROM
	TopicsComplete T
	INNER JOIN Messages M ON M.TopicId = T.TopicId
WHERE
	M.UserId = @UserId
ORDER BY T.TopicId desc, M.MessageId desc
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsGetUnanswered]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsGetUnanswered]
AS
SELECT
	T.TopicId
	,T.TopicTitle
	,T.TopicShortName
	,T.TopicDescription
	,T.TopicCreationDate
	,T.TopicViews
	,T.TopicReplies
	,T.UserId
	,T.TopicTags
	,T.TopicIsClose
	,T.TopicOrder
	,T.LastMessageId
	,T.UserName
	,M.MessageCreationDate
	,T.ForumId
	,T.ForumName
	,T.ForumShortName
FROM
	TopicsComplete T
	LEFT JOIN Messages M ON M.TopicId = T.TopicId AND M.MessageId = T.LastMessageId AND M.Active = 1
WHERE
	T.TopicReplies = 0 -- Unanswered
	AND
	T.TopicOrder IS NULL -- Not sticky	
ORDER BY 
	TopicId DESC
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsInsert]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsInsert]
(
	@TopicTitle nvarchar(255)
	,@TopicShortName nvarchar(64)
	,@TopicDescription nvarchar(max)
	,@UserId int
	,@TopicTags nvarchar(256)
	,@TopicOrder int
	,@Forum nvarchar(32)
	,@Ip varchar (39)
	,@ReadAccessGroupId smallint
	,@PostAccessGroupId smallint
	,@TopicId int OUTPUT
)
AS
/*
- Inserts topic
- Insert tags
- Updates recount on father
*/

DECLARE @ForumId int

SELECT @ForumId = ForumId FROM Forums WHERE ForumShortName = @Forum
SET @TopicTags = LOWER(@TopicTags)

IF @TopicOrder IS NOT NULL
	BEGIN
	SELECT @TopicOrder = MAX(TopicOrder)+1 FROM Topics
	SELECT @TopicOrder = ISNULL(@TopicOrder, 1)
	END

BEGIN TRY
	BEGIN TRANSACTION
	
	INSERT INTO dbo.Topics
	(
	TopicTitle
	,TopicShortName
	,TopicDescription
	,TopicCreationDate
	,TopicLastEditDate
	,TopicViews
	,TopicReplies
	,UserId
	,TopicTags
	,ForumId
	,TopicLastEditUser
	,TopicLastEditIp
	,Active
	,TopicIsClose
	,TopicOrder
	,MessagesIdentity
	,ReadAccessGroupId
	,PostAccessGroupId
	)
	VALUES
	(
	@TopicTitle
	,@TopicShortName
	,@TopicDescription
	,GETUTCDATE()
	,GETUTCDATE()
	,0--TopicViews
	,0--TopicReplies
	,@UserId
	,@TopicTags
	,@ForumId
	,@UserId
	,@Ip
	,1--Active
	,0--TopicIsClose
	,@TopicOrder
	,0--MessageIdentity
	,@ReadAccessGroupId
	,@PostAccessGroupId
	);

	SELECT @TopicId = @@IDENTITY;

	--Add tags
	exec dbo.SPTagsInsert @Tags=@TopicTags, @TopicId=@TopicId;

	--Recount
	exec dbo.SPForumsUpdateRecount @ForumId=@ForumId;
	COMMIT
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK

  -- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		 @ErrSeverity = ERROR_SEVERITY()

	RAISERROR(@ErrMsg, @ErrSeverity, 1)

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsMove]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsMove]
	@TopicId int
	,@ForumId int
	,@UserId int
	,@Ip varchar (39)
AS
DECLARE @PreviousForumId int
SELECT @PreviousForumId = ForumId FROM Topics WHERE TopicId = @TopicId
BEGIN TRY
	BEGIN TRANSACTION
	
	UPDATE Topics
	SET
		ForumId = @ForumId
		,TopicLastEditDate = GETUTCDATE()
		,TopicLastEditUser = @UserId
		,TopicLastEditIp = @Ip
	WHERE
		TopicId = @TopicId

	exec SPForumsUpdateRecount @ForumId
	exec SPForumsUpdateRecount @PreviousForumId

	COMMIT
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK

  -- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		 @ErrSeverity = ERROR_SEVERITY()

	RAISERROR(@ErrMsg, @ErrSeverity, 1)

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsOpen]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsOpen]
	@TopicId int
	,@UserId int
	,@Ip varchar (39)
AS
	UPDATE Topics
	SET
		TopicIsClose = 0
		,TopicLastEditDate = GETUTCDATE()
		,TopicLastEditUser = @UserId
		,TopicLastEditIp = @Ip
	WHERE
		TopicId = @TopicId
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsSubscriptionsDelete]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsSubscriptionsDelete]
	@TopicId int
	,@UserId int
	,@Userguid char(32)
AS
DELETE S
FROM 
	TopicsSubscriptions S
	INNER JOIN Users U ON U.UserId = S.UserId
WHERE
	S.TopicId = @TopicId
	AND
	S.UserId = @UserId	
	AND
	U.UserGuid = @UserGuid
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsSubscriptionsGetByTopic]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsSubscriptionsGetByTopic]
	@TopicId int
AS
/*
	Gets the active users subscribed to a topic.
	Checks read access of topic vs user role
*/
SELECT
	U.UserId
	,U.UserName
	,U.UserEmail
	,U.UserEmailPolicy
	,U.UserGuid
FROM
	TopicsSubscriptions S
	INNER JOIN Topics T ON T.TopicId = S.TopicId
	INNER JOIN Users U ON U.UserId = S.UserId
WHERE
	S.TopicId = @TopicId
	AND
	U.Active = 1
	AND
	U.UserGroupId >= ISNULL(T.ReadAccessGroupId, -1)
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsSubscriptionsGetByUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsSubscriptionsGetByUser]
	@UserId int=21
AS
SELECT
	T.TopicId
	,T.TopicTitle
	,T.TopicShortName
	,T.ForumId
	,T.ForumName
	,T.ForumShortName
FROM
	TopicsSubscriptions S
	INNER JOIN TopicsComplete T ON T.TopicId = S.TopicId
WHERE
	S.UserId = @UserId
ORDER BY
	S.TopicId DESC
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsSubscriptionsInsert]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsSubscriptionsInsert]
	@TopicId int
	,@UserId int
AS
IF NOT EXISTS (SELECT TopicId FROM TopicsSubscriptions WHERE TopicId = @TopicId AND UserID = @UserId)
BEGIN
	INSERT INTO TopicsSubscriptions
	(TopicId, UserId)
	VALUES
	(@TopicId, @UserId)
END
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsUpdate]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsUpdate]
	@TopicId int
	,@TopicTitle nvarchar(256)
	,@TopicDescription nvarchar(max)
	,@UserId int
	,@TopicTags nvarchar(256)
	,@TopicOrder int
	,@ReadAccessGroupId smallint
	,@PostAccessGroupId smallint
	,@Ip varchar (39)
AS
DECLARE @PreviousTags nvarchar(256)
SELECT @PreviousTags=TopicTags FROM Topics WHERE TopicId=@TopicId

IF @TopicOrder IS NOT NULL
	BEGIN
	SELECT @TopicOrder = MAX(TopicOrder)+1 FROM Topics
	SELECT @TopicOrder = ISNULL(@TopicOrder, 1)
	END

BEGIN TRY
	BEGIN TRANSACTION

	UPDATE T
	SET
		TopicTitle = @TopicTitle
		,TopicDescription = @TopicDescription
		,TopicLastEditDate = GETUTCDATE()
		,TopicTags = @TopicTags
		,TopicLastEditUser = @UserId
		,TopicLastEditIp = @Ip
		,TopicOrder = @TopicOrder
		,ReadAccessGroupId = @ReadAccessGroupId
		,PostAccessGroupId = @PostAccessGroupId
	FROM
		Topics T
	WHERE
		TopicId = @TopicId

	--Edit tags
	EXEC dbo.[SPTagsInsert] @Tags=@TopicTags, @TopicId=@TopicId, @PreviousTags=@PreviousTags

	COMMIT
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK

  -- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		 @ErrSeverity = ERROR_SEVERITY()

	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[SPTopicsUpdateLastMessage]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTopicsUpdateLastMessage]
	@TopicId int
	,@MessageId int
AS

UPDATE Topics
SET
	TopicReplies = TopicReplies + 1
	,LastMessageId = @MessageId
WHERE
	TopicId = @TopicId
GO
/****** Object:  StoredProcedure [dbo].[SPUsersDelete]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersDelete]
	@UserId int
AS
UPDATE Users
SET	
	Active = 0
WHERE 
	UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[SPUsersDemote]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersDemote]
	@UserId int
AS
DECLARE @UserGroupId int
SELECT @UserGroupId = UserGroupId FROM Users WHERE UserId = @UserId
SELECT @UserGroupId = MAX(UserGroupId) FROM UsersGroups WHERE UserGroupId < @UserGroupId

IF @UserGroupId IS NOT NULL
	UPDATE Users
	SET
		UserGroupId = @UserGroupId
	WHERE
		UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[SPUsersGet]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersGet]
	@UserId int=11
AS
SELECT
	U.UserId
	,U.UserName
	,U.UserProfile
	,U.UserSignature
	,U.UserGroupId
	,U.UserBirthDate
	,U.UserWebsite
	,U.UserTimezone
	,U.UserPhoto
	,U.UserRegistrationDate
	,U.UserExternalProfileUrl
	,U.UserEmail
	,U.UserEmailPolicy
	,UG.UserGroupId
	,UG.UserGroupName
FROM
	Users U
	INNER JOIN UsersGroups UG ON UG.UserGroupId = U.UserGroupId
WHERE
	U.UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[SPUsersGetAll]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersGetAll]
AS
SELECT
	U.UserId
	,U.UserName
	,U.UserProfile
	,U.UserSignature
	,U.UserGroupId
	,U.UserBirthDate
	,U.UserWebsite
	,U.UserTimezone
	,U.UserPhoto
	,U.UserRegistrationDate
	,UG.UserGroupId
	,UG.UserGroupName
FROM
	Users U
	INNER JOIN UsersGroups UG ON UG.UserGroupId = U.UserGroupId
WHERE
	U.Active = 1
ORDER BY 
	U.UserName
GO
/****** Object:  StoredProcedure [dbo].[SPUsersGetByName]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersGetByName]
	@UserName nvarchar(50)='Jorge'	
AS
SELECT
	U.UserId
	,U.UserName
	,U.UserProfile
	,U.UserSignature
	,U.UserGroupId
	,U.UserBirthDate
	,U.UserWebsite
	,U.UserTimezone
	,U.UserPhoto
	,U.UserRegistrationDate
	,UG.UserGroupId
	,UG.UserGroupName
FROM
	Users U
	INNER JOIN UsersGroups UG ON UG.UserGroupId = U.UserGroupId
WHERE
	U.UserName LIKE '%' + @UserName +  '%'
	AND
	U.Active = 1
ORDER BY 
	U.UserName
GO
/****** Object:  StoredProcedure [dbo].[SPUsersGetByPasswordResetGuid]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersGetByPasswordResetGuid]
	@Provider nvarchar(32)
	,@PasswordResetGuid nvarchar(64)
AS
SELECT 
	U.UserId
	,U.UserName
	,U.UserGroupId
	,U.UserGuid
	,U.UserTimeZone
	,U.UserExternalProfileUrl
	,U.UserProviderLastCall
	,U.UserEmail
	,U.UserProviderId
	,U.PasswordResetGuid
	,U.PasswordResetGuidExpireDate
FROM
	Users U
WHERE
	UserProvider = @Provider
	AND
	PasswordResetGuid = @PasswordResetGuid
GO
/****** Object:  StoredProcedure [dbo].[SPUsersGetByProvider]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersGetByProvider]
	@Provider nvarchar(32)
	,@ProviderId nvarchar(64)
AS
SELECT 
	U.UserId
	,U.UserName
	,U.UserGroupId
	,U.UserGuid
	,U.UserTimeZone
	,U.UserExternalProfileUrl
	,U.UserProviderLastCall
	,U.UserEmail
FROM
	Users U
WHERE
	UserProvider = @Provider
	AND
	UserProviderId = @ProviderId
	AND
	U.Active = 1
GO
/****** Object:  StoredProcedure [dbo].[SPUsersGetTestUser]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersGetTestUser]
	
AS
SELECT 
	Top 1
	U.UserId
	,U.UserName
	,U.UserGroupId
	,U.UserGuid
	,U.UserTimeZone
	,U.UserExternalProfileUrl
	,U.UserProviderLastCall
	,U.UserEmail
FROM
	Users U
WHERE
	U.Active = 1
ORDER BY
	U.UserGroupId DESC
GO
/****** Object:  StoredProcedure [dbo].[SPUsersGroupsGet]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersGroupsGet]
	@UserGroupId smallint=1
AS
SELECT 
	UserGroupId
	,UserGroupName
FROM
	UsersGroups
WHERE
	UserGroupId = @UserGroupId
GO
/****** Object:  StoredProcedure [dbo].[SPUsersGroupsGetAll]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUsersGroupsGetAll]
	
AS
SELECT 
	UserGroupId
	,UserGroupName
FROM
	UsersGroups
ORDER BY 
	UserGroupId asc
GO
/****** Object:  StoredProcedure [dbo].[SPUsersInsertFromProvider]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersInsertFromProvider]
	(@UserName nvarchar(50)
	,@UserProfile nvarchar(max)
	,@UserSignature nvarchar(max)
	,@UserGroupId smallint
	,@UserBirthDate datetime
	,@UserWebsite nvarchar(255)
	,@UserGuid char(32)
	,@UserTimezone decimal(9,2)
	,@UserEmail nvarchar(100)
	,@UserEmailPolicy int
	,@UserPhoto nvarchar(1024)
	,@UserExternalProfileUrl nvarchar(255)
	,@UserProvider nvarchar(32)
	,@UserProviderId nvarchar(64))
AS

--If it is the first active user -> make it an admin
DECLARE @UserCount int
SELECT @UserCount=COUNT(UserId) FROM Users WHERE Active = 1
IF ISNULL(@UserCount, 0) = 0
	SELECT @UserGroupId = MAX(UserGroupId) FROM UsersGroups


INSERT INTO Users
   (UserName
   ,UserProfile
   ,UserSignature
   ,UserGroupId
   ,Active
   ,UserBirthDate
   ,UserWebsite
   ,UserGuid
   ,UserTimezone
   ,UserEmail
   ,UserEmailPolicy
   ,UserPhoto
   ,UserRegistrationDate
   ,UserExternalProfileUrl
   ,UserProvider
   ,UserProviderId
   ,UserProviderLastCall)
VALUES
	(@UserName
   ,@UserProfile
   ,@UserSignature
   ,@UserGroupId
   ,1 --Active
   ,@UserBirthDate
   ,@UserWebsite
   ,@UserGuid
   ,@UserTimezone
   ,@UserEmail
   ,@UserEmailPolicy
   ,@UserPhoto
   ,GETUTCDATE() --RegitrationDate
   ,@UserExternalProfileUrl
   ,@UserProvider
   ,@UserProviderId
   ,GETUTCDATE() --UserProviderLastCall
	);

DECLARE @UserId int;
SELECT @UserId = @@IDENTITY;
SELECT 	
	U.UserId
	,U.UserName
	,U.UserGroupId
	,U.UserGuid
	,U.UserTimeZone
	,U.UserExternalProfileUrl
	,U.UserProviderLastCall
	,U.UserEmail
FROM
	Users U
WHERE
	U.UserId = @UserId;
GO
/****** Object:  StoredProcedure [dbo].[SPUsersPromote]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersPromote]
	@UserId int
AS
DECLARE @UserGroupId int
SELECT @UserGroupId = UserGroupId FROM Users WHERE UserId = @UserId
SELECT @UserGroupId = MIN(UserGroupId) FROM UsersGroups WHERE UserGroupId > @UserGroupId

IF @UserGroupId IS NOT NULL
	UPDATE Users
	SET
		UserGroupId = @UserGroupId
	WHERE
		UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[SPUsersUpdate]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersUpdate]
	@UserId int
	,@UserName nvarchar(50)
	,@UserProfile nvarchar(max)
	,@UserSignature nvarchar(max)
	,@UserBirthDate datetime
	,@UserWebsite nvarchar(255)
	,@UserTimezone decimal(9,2)
	,@UserEmail nvarchar(100)
	,@UserEmailPolicy int
	,@UserPhoto nvarchar(1024)
	,@UserExternalProfileUrl nvarchar(255)
AS

UPDATE Users
SET 
UserName = @UserName
,UserProfile = @UserProfile
,UserSignature = @UserSignature
,UserBirthDate = @UserBirthDate
,UserWebsite = @UserWebsite
,UserTimezone = @UserTimezone
,UserEmail = @UserEmail
,UserEmailPolicy = @UserEmailPolicy
,UserPhoto = @UserPhoto
,UserExternalProfileUrl = @UserExternalProfileUrl
WHERE 
	UserId = @UserId;
GO
/****** Object:  StoredProcedure [dbo].[SPUsersUpdateEmail]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersUpdateEmail]
	@UserId int
	,@UserEmail nvarchar(100)
	,@UserEmailPolicy int
AS
UPDATE Users
SET
	UserEmail = @UserEmail
	,UserEmailPolicy = @UserEmailPolicy
WHERE
	UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[SPUsersUpdatePasswordResetGuid]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPUsersUpdatePasswordResetGuid]
	@UserId int
	,@PasswordResetGuid nvarchar(100)
	,@PasswordResetGuidExpireDate datetime
AS
UPDATE Users
SET
	PasswordResetGuid = @PasswordResetGuid
	,PasswordResetGuidExpireDate = @PasswordResetGuidExpireDate
WHERE
	UserId = @UserId
GO
/****** Object:  StoredProcedure [wwfd_user].[BuildKeywordPhrasesTable]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [wwfd_user].[BuildKeywordPhrasesTable]

AS
	--clear the table
DELETE KeywordPhrases

DROP TABLE #Keywords
CREATE TABLE #Keywords (Keyword nvarchar(255))

--get all the distinct keywords from the quotes table
DECLARE @WordList nvarchar(255)
DECLARE KeywordsCursor CURSOR FORWARD_ONLY FAST_FORWARD
FOR SELECT DISTINCT Keywords FROM Quotes

OPEN KeywordsCursor

FETCH NEXT FROM KeywordsCursor INTO @WordList

--loop through keyword records
WHILE @@FETCH_STATUS = 0
	BEGIN

		DECLARE @separator_position INT 
		DECLARE @Word nvarchar(100)
		DECLARE @Separator char(1)
		
		SET @Separator = ',' --comma
		SET @WordList = @WordList + @Separator --adds a space to the end of the search text so this gets executed at least once 
		--PRINT @WordList
		
		WHILE PATINDEX('%' + @Separator + '%', @WordList) <> 0 
			BEGIN
								
				SELECT @separator_position = PATINDEX('%' + @Separator + '%', @WordList)
				--PRINT @separator_position
				SELECT @Word = LOWER(LEFT(@WordList, @separator_position - 1))
				--PRINT @Word
				
				INSERT INTO #Keywords VALUES (RTRIM(LTRIM(@Word)))
				
				--change the wordlist variable
				SELECT @WordList = STUFF(@WordList, 1, @separator_position, '')
				
			END	
		
		FETCH NEXT FROM KeywordsCursor INTO @WordList
	END

--clean up
CLOSE KeywordsCursor
DEALLOCATE KeywordsCursor

--get the total count of distinct keywords
DECLARE @KeywordCountTotal INT
SET @KeywordCountTotal = (SELECT COUNT(*) FROM #Keywords)

--insert list into permanent table
INSERT INTO KeywordPhrases(Phrase, Cardinality, Ratio)
SELECT 
	Keyword, 
	COUNT(Keyword),
	CAST(COUNT(Keyword) as decimal) / CAST(@KeywordCountTotal as decimal)
FROM #Keywords 
GROUP BY Keyword 
ORDER BY COUNT(Keyword) DESC, Keyword


	RETURN

GO
/****** Object:  StoredProcedure [wwfd_user].[GetStats]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [wwfd_user].[GetStats]
	
AS
	SELECT 
		(SELECT COUNT(*) FROM Quotes) as QuoteCount,
		(SELECT COUNT(*) FROM Founders) as FounderCount,
		(SELECT COUNT(*) FROM QOTDSubscribers) as SubscriberCount,
		(SELECT MAX([Date]) FROM QOTD) as LastQOTD
	
	RETURN

GO
/****** Object:  StoredProcedure [wwfd_user].[GetTopKeywordPhrases]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [wwfd_user].[GetTopKeywordPhrases]
	
AS

DROP TABLE #TempTable
CREATE TABLE #TempTable
(KeywordPhraseID int)

DECLARE @Cardinality int
DECLARE TblCursor CURSOR FORWARD_ONLY FAST_FORWARD
FOR SELECT DISTINCT Cardinality FROM KeywordPhrases

OPEN TblCursor

FETCH NEXT FROM TblCursor INTO @Cardinality

--loop through keyword records
WHILE @@FETCH_STATUS = 0
	BEGIN

		INSERT INTO #TempTable
		SELECT TOP 5 (KeywordPhraseID) FROM KeywordPhrases 
		WHERE Cardinality = @Cardinality 
		ORDER BY NEWID()
			
		FETCH NEXT FROM TblCursor INTO @Cardinality

	END

--clean up
CLOSE TblCursor
DEALLOCATE TblCursor

SELECT * FROM KeywordPhrases
WHERE KeywordPhraseID IN (SELECT * FROM #Temptable) ORDER BY NEWID()
	
	RETURN

GO
/****** Object:  StoredProcedure [wwfd_user].[SetQOTDStatus]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [wwfd_user].[SetQOTDStatus]
	(
	@QuoteDate as datetime,
	@Status as bit
	)

AS

	UPDATE QOTD
		SET Status = @Status WHERE [Date] = @QuoteDate

	RETURN

GO
/****** Object:  StoredProcedure [wwfdweb_34370].[SearchFounders]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [wwfdweb_34370].[SearchFounders]
	(
	@SearchText nvarchar(25)
	)
AS
	SELECT * FROM Founders WHERE FullName LIKE '%' + @SearchText + '%'
	
	
	RETURN

GO
/****** Object:  Table [bbeckham_master].[KeywordPhrases]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bbeckham_master].[KeywordPhrases](
	[KeywordPhraseID] [int] IDENTITY(1,1) NOT NULL,
	[Phrase] [varchar](100) NOT NULL,
	[Cardinality] [smallint] NOT NULL,
	[Ratio] [decimal](8, 6) NOT NULL,
 CONSTRAINT [PK__KeywordP__349187072CF2ADDF] PRIMARY KEY CLUSTERED 
(
	[KeywordPhraseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contributors]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contributors](
	[ContributorID] [uniqueidentifier] NOT NULL,
	[RoleID] [tinyint] NOT NULL,
	[FirstName] [nvarchar](25) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[FullName]  AS (([FirstName]+' ')+[LastName]),
 CONSTRAINT [PK_Contributors] PRIMARY KEY CLUSTERED 
(
	[ContributorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Founders]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Founders](
	[FounderID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](35) NOT NULL,
	[MiddleName] [nvarchar](35) NULL,
	[LastName] [nvarchar](35) NOT NULL,
	[Suffix] [nvarchar](15) NULL,
	[Gender] [char](1) NOT NULL,
	[DateBorn] [date] NULL,
	[DateDied] [date] NULL,
	[FullName]  AS (case when [Suffix] IS NOT NULL AND [MiddleName] IS NOT NULL then ((((([FirstName]+' ')+[MiddleName])+' ')+[LastName])+', ')+[Suffix] when [MiddleName] IS NOT NULL then ((([FirstName]+' ')+[MiddleName])+' ')+[LastName] when [Suffix] IS NOT NULL then ((([FirstName]+' ')+[LastName])+', ')+[Suffix] else ([FirstName]+' ')+[LastName] end),
 CONSTRAINT [PK_Founders] PRIMARY KEY CLUSTERED 
(
	[FounderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QOTD]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QOTD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_QOTD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QOTDSubscribers]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QOTDSubscribers](
	[SubscriberID] [nvarchar](20) NOT NULL,
	[SubscriberEmail] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_Subscribers_QOTD] PRIMARY KEY CLUSTERED 
(
	[SubscriberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuoteFlags]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuoteFlags](
	[FlagID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[FlaggedByContributorID] [uniqueidentifier] NOT NULL,
	[FlagRemovedByContributorID] [uniqueidentifier] NULL,
	[QuoteFlagTypeID] [varchar](15) NOT NULL,
	[DateFlagged] [datetime] NOT NULL,
	[DateFlaggedRemoved] [datetime] NULL,
	[Notes] [nvarchar](255) NULL,
 CONSTRAINT [PK_QuoteFlags] PRIMARY KEY CLUSTERED 
(
	[FlagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuoteFlagTypes]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuoteFlagTypes](
	[QuoteFlagTypeID] [varchar](15) NOT NULL,
	[FlagDescription] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_QuoteFlagTypes] PRIMARY KEY CLUSTERED 
(
	[QuoteFlagTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuoteHistory]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuoteHistory](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[ContributorID] [int] NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_QuoteHistory] PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quotes]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotes](
	[QuoteID] [int] IDENTITY(1,1) NOT NULL,
	[ContributorID] [uniqueidentifier] NOT NULL,
	[FounderID] [int] NOT NULL,
	[QuoteText] [nvarchar](1850) NOT NULL,
	[ReferenceInfo] [nvarchar](255) NOT NULL,
	[Keywords] [nvarchar](255) NOT NULL,
	[DateAdded] [datetime] NOT NULL,
	[Approved] [bit] NOT NULL,
	[QuoteLength]  AS (len([QuoteText])),
 CONSTRAINT [PK_Quotes] PRIMARY KEY CLUSTERED 
(
	[QuoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuoteTaskHistory]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuoteTaskHistory](
	[QuoteTaskHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteTaskTypeID] [int] NOT NULL,
	[QuoteID] [int] NOT NULL,
	[ContributorID] [uniqueidentifier] NOT NULL,
	[DateCompleted] [datetime] NOT NULL,
 CONSTRAINT [PK_QuoteTaskHistory] PRIMARY KEY CLUSTERED 
(
	[QuoteTaskHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuoteTaskTypes]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuoteTaskTypes](
	[QuoteTaskTypeID] [int] NOT NULL,
	[TaskName] [nvarchar](25) NOT NULL,
	[TaskDescription] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_QuoteTaskTypes] PRIMARY KEY CLUSTERED 
(
	[QuoteTaskTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [tinyint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Searches]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Searches](
	[SearchID] [int] IDENTITY(1,1) NOT NULL,
	[SearchText] [nvarchar](255) NOT NULL,
	[DateSearched] [datetime] NOT NULL,
 CONSTRAINT [PK_Searches] PRIMARY KEY CLUSTERED 
(
	[SearchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Split] (@s nvarchar(512), @sep char(1))
RETURNS table
AS
RETURN (
    WITH Pieces(pn, start, stop) AS (
      SELECT 1, 1, CHARINDEX(@sep, @s)
      UNION ALL
      SELECT pn + 1, stop + 1, CHARINDEX(@sep, @s, stop + 1)
      FROM Pieces
      WHERE stop > 0
    )
    SELECT pn AS position,
      SUBSTRING(@s, start, CASE WHEN stop > 0 THEN stop-start ELSE 512 END) AS part
    FROM Pieces
  )
GO
/****** Object:  View [dbo].[ContributionsView]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ContributionsView]
AS
SELECT        dbo.Contributors.ContributorID, dbo.Contributors.FullName AS Contributor, COUNT(*) AS QuotesEntered
FROM            dbo.Contributors INNER JOIN
                         dbo.Quotes ON dbo.Contributors.ContributorID = dbo.Quotes.ContributorID
GROUP BY dbo.Contributors.FullName, dbo.Contributors.ContributorID

GO
/****** Object:  View [dbo].[QuotesView]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[QuotesView]
AS
SELECT        dbo.Founders.FounderID, dbo.Quotes.QuoteID, dbo.Quotes.ContributorID, dbo.Founders.FullName, dbo.Quotes.QuoteText, dbo.Quotes.ReferenceInfo, 
                         dbo.Quotes.Keywords, dbo.Quotes.QuoteLength, dbo.Quotes.DateAdded
FROM            dbo.Contributors RIGHT OUTER JOIN
                         dbo.Quotes ON dbo.Contributors.ContributorID = dbo.Quotes.ContributorID LEFT OUTER JOIN
                         dbo.Founders ON dbo.Quotes.FounderID = dbo.Founders.FounderID

GO
/****** Object:  View [dbo].[SearchReportView]    Script Date: 11/12/2013 10:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SearchReportView]
AS
SELECT        TOP (100) PERCENT SearchText, COUNT(*) AS TimesSearched
FROM            dbo.Searches
GROUP BY SearchText
ORDER BY SearchText

GO

SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Contributors]    Script Date: 11/12/2013 10:25:08 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Contributors] ON [dbo].[Contributors]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QOTD]    Script Date: 11/12/2013 10:25:08 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_QOTD] ON [dbo].[QOTD]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contributors] ADD  CONSTRAINT [DF_Contributors_ContributorID]  DEFAULT (newid()) FOR [ContributorID]
GO
ALTER TABLE [dbo].[Contributors] ADD  CONSTRAINT [DF_Contributors_Enabled]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Founders] ADD  CONSTRAINT [DF_Founders_Gender]  DEFAULT ('M') FOR [Gender]
GO
ALTER TABLE [dbo].[QOTD] ADD  CONSTRAINT [DF_QOTD_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[QOTD] ADD  CONSTRAINT [DF_QOTD_Emailed]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[QOTDSubscribers] ADD  CONSTRAINT [DF_Subscribers_QOTD_SubscriberID]  DEFAULT (replace(lower(right(newid(),(22))),'-','')) FOR [SubscriberID]
GO
ALTER TABLE [dbo].[QOTDSubscribers] ADD  CONSTRAINT [DF_Subscribers_QOTD_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[QOTDSubscribers] ADD  CONSTRAINT [DF_Subscribers_QOTD_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[QuoteFlags] ADD  CONSTRAINT [DF_QuoteFlags_DateFlagged]  DEFAULT (getdate()) FOR [DateFlagged]
GO
ALTER TABLE [dbo].[Quotes] ADD  CONSTRAINT [DF_Quotes_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[Quotes] ADD  CONSTRAINT [DF_Quotes_Approved]  DEFAULT ((0)) FOR [Approved]
GO
ALTER TABLE [dbo].[Searches] ADD  CONSTRAINT [DF_Searches_DateSearched]  DEFAULT (getdate()) FOR [DateSearched]
GO
ALTER TABLE [dbo].[Contributors]  WITH CHECK ADD  CONSTRAINT [FK_Contributors_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Contributors] CHECK CONSTRAINT [FK_Contributors_Roles]
GO
ALTER TABLE [dbo].[QuoteFlags]  WITH CHECK ADD  CONSTRAINT [FK_QuoteFlags_Contributors] FOREIGN KEY([FlaggedByContributorID])
REFERENCES [dbo].[Contributors] ([ContributorID])
GO
ALTER TABLE [dbo].[QuoteFlags] CHECK CONSTRAINT [FK_QuoteFlags_Contributors]
GO
ALTER TABLE [dbo].[QuoteFlags]  WITH CHECK ADD  CONSTRAINT [FK_QuoteFlags_QuoteFlagTypes] FOREIGN KEY([QuoteFlagTypeID])
REFERENCES [dbo].[QuoteFlagTypes] ([QuoteFlagTypeID])
GO
ALTER TABLE [dbo].[QuoteFlags] CHECK CONSTRAINT [FK_QuoteFlags_QuoteFlagTypes]
GO
ALTER TABLE [dbo].[QuoteFlags]  WITH CHECK ADD  CONSTRAINT [FK_QuoteFlags_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[Quotes] ([QuoteID])
GO
ALTER TABLE [dbo].[QuoteFlags] CHECK CONSTRAINT [FK_QuoteFlags_Quotes]
GO
ALTER TABLE [dbo].[QuoteHistory]  WITH CHECK ADD  CONSTRAINT [FK_QuoteHistory_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[Quotes] ([QuoteID])
GO
ALTER TABLE [dbo].[QuoteHistory] CHECK CONSTRAINT [FK_QuoteHistory_Quotes]
GO
ALTER TABLE [dbo].[Quotes]  WITH CHECK ADD  CONSTRAINT [FK_Quotes_Contributors] FOREIGN KEY([ContributorID])
REFERENCES [dbo].[Contributors] ([ContributorID])
GO
ALTER TABLE [dbo].[Quotes] CHECK CONSTRAINT [FK_Quotes_Contributors]
GO
ALTER TABLE [dbo].[Quotes]  WITH CHECK ADD  CONSTRAINT [FK_Quotes_Founders] FOREIGN KEY([FounderID])
REFERENCES [dbo].[Founders] ([FounderID])
GO
ALTER TABLE [dbo].[Quotes] CHECK CONSTRAINT [FK_Quotes_Founders]
GO
ALTER TABLE [dbo].[QuoteTaskHistory]  WITH CHECK ADD  CONSTRAINT [FK_QuoteTaskHistory_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[Quotes] ([QuoteID])
GO
ALTER TABLE [dbo].[QuoteTaskHistory] CHECK CONSTRAINT [FK_QuoteTaskHistory_Quotes]
GO
ALTER TABLE [dbo].[QuoteTaskHistory]  WITH CHECK ADD  CONSTRAINT [FK_QuoteTaskHistory_QuoteTaskTypes] FOREIGN KEY([QuoteTaskTypeID])
REFERENCES [dbo].[QuoteTaskTypes] ([QuoteTaskTypeID])
GO
ALTER TABLE [dbo].[QuoteTaskHistory] CHECK CONSTRAINT [FK_QuoteTaskHistory_QuoteTaskTypes]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Contributors (dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Quotes (dbo)"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 135
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2400
         Width = 1575
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ContributionsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ContributionsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Founders"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 225
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Quotes"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 231
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Contributors"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 155
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'QuotesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'QuotesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Searches"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 120
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2310
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SearchReportView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SearchReportView'
GO
USE [master]
GO
ALTER DATABASE [wwfd] SET  READ_WRITE 
GO
