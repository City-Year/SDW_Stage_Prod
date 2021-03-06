USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Grade_Normalization__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade_Normalization__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[External_Id__c] [varchar](255) NULL,
	[GP_Value__c] [decimal](4, 2) NULL,
	[Grade_Value__c] [decimal](5, 2) NULL,
	[Is_Max_Value__c] [int] NOT NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Setup__c] [varchar](18) NULL,
	[Transformed_Grade__c] [varchar](10) NULL,
	[isFinal__c] [int] NOT NULL
) ON [PRIMARY]

GO
