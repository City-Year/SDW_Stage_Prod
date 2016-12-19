USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Grade_Scale_Catalog_Scale__c]    Script Date: 12/19/2016 4:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade_Scale_Catalog_Scale__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Grade_Scale_Catalog__c] [varchar](18) NOT NULL,
	[External_Id__c] [varchar](255) NULL,
	[Picklist_Value__c] [varchar](18) NULL
) ON [PRIMARY]

GO
