USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Notification__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Setup__c] [varchar](18) NOT NULL,
	[Daily_Tracking__c] [int] NOT NULL,
	[End_Date__c] [datetime] NOT NULL,
	[External_Id__c] [varchar](255) NULL,
	[Grade__c] [varchar](1300) NULL,
	[Module__c] [varchar](255) NULL,
	[Parental_Notification__c] [int] NOT NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Start_Date__c] [datetime] NOT NULL
) ON [PRIMARY]

GO
