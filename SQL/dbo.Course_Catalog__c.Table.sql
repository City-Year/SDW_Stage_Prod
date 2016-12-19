USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Course_Catalog__c]    Script Date: 12/19/2016 4:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Catalog__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Course_Catalog_Description__c] [varchar](255) NULL,
	[Course_Catalog_Status__c] [int] NOT NULL,
	[External_Id__c] [varchar](255) NULL
) ON [PRIMARY]

GO
