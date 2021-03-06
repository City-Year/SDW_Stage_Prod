USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[RecordType]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordType](
	[Id] [varchar](18) NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[DeveloperName] [varchar](80) NOT NULL,
	[NamespacePrefix] [varchar](15) NULL,
	[Description] [varchar](255) NULL,
	[BusinessProcessId] [varchar](18) NULL,
	[SobjectType] [varchar](40) NOT NULL,
	[IsActive] [int] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[SystemModstamp] [datetime] NOT NULL
) ON [PRIMARY]

GO
