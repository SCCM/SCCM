USE [master]
GO

CREATE DATABASE [Grafana]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Grafana', FILENAME = N'D:\Data\Grafana.mdf' , SIZE = 401408KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Grafana_log', FILENAME = N'G:\Log\Grafana_log.ldf' , SIZE = 1318912KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Grafana] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Grafana].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Grafana] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Grafana] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Grafana] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Grafana] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Grafana] SET ARITHABORT OFF 
GO

ALTER DATABASE [Grafana] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Grafana] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Grafana] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Grafana] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Grafana] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Grafana] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Grafana] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Grafana] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Grafana] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Grafana] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Grafana] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Grafana] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Grafana] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Grafana] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Grafana] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Grafana] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Grafana] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Grafana] SET RECOVERY FULL 
GO

ALTER DATABASE [Grafana] SET  MULTI_USER 
GO

ALTER DATABASE [Grafana] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Grafana] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Grafana] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Grafana] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Grafana] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Grafana] SET QUERY_STORE = OFF
GO

USE [Grafana]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [Grafana] SET  READ_WRITE 
GO

USE [Grafana]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MW](
	[CollectionName] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[StartTime] [datetime] NULL,
	[Endtime] [datetime] NULL
) ON [PRIMARY]
GO

USE [Grafana]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SCEP](
	[AntivirusSignatureVersion] [varchar](50) NULL,
	[Count] [int] NULL,
	[Filter] [varchar](50) NULL,
	[TimeStamp] [smalldatetime] NULL
) ON [PRIMARY]
GO

USE [Grafana]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Servers](
	[Name] [nvarchar](250) NULL,
	[ResourceID] [bigint] NULL,
	[StateName] [nvarchar](250) NULL,
	[Compliance] [nvarchar](250) NULL,
	[Filter] [nvarchar](100) NULL,
	[TimeStamp] [smalldatetime] NULL,
	[TimeStamp2] [datetime] NULL,
	[Host] [nvarchar](250) NULL
) ON [PRIMARY]
GO

USE [Grafana]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Workstations](
	[Name] [nvarchar](250) NULL,
	[ResourceID] [bigint] NULL,
	[StateName] [nvarchar](250) NULL,
	[Compliance] [nvarchar](250) NULL,
	[Filter] [nvarchar](100) NULL,
	[TimeStamp] [smalldatetime] NULL
) ON [PRIMARY]
GO

USE [Grafana]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WSUS](
	[SyncCatalogVersion] [int] NULL,
	[LastSuccessfulSyncTime] [datetime] NULL,
	[LastSyncState] [varchar](80) NULL,
	[LastSyncStatus] [nvarchar](150) NULL,
	[Status] [int] NULL,
	[LastSyncErrorCode] [nvarchar](50) NULL,
	[LastSyncStateTime] [datetime] NULL,
	[StatusTime] [datetime] NULL
) ON [PRIMARY]
GO
