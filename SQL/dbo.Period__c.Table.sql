USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Period__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Period__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Schedule_Template__c] [varchar](18) NOT NULL,
	[Abbreviation__c] [varchar](10) NULL,
	[Class_Minutes__c] [decimal](18, 0) NULL,
	[Description__c] [varchar](255) NULL,
	[End_Time_Text__c] [varchar](100) NULL,
	[End_Time__c] [datetime] NULL,
	[External_Id__c] [varchar](255) NULL,
	[Key__c] [varchar](100) NULL,
	[Order__c] [decimal](2, 0) NULL,
	[Passing_Time__c] [varchar](255) NULL,
	[Start_Time_Text__c] [varchar](100) NULL,
	[Start_Time__c] [datetime] NULL,
	[Time__c] [varchar](18) NULL,
	[Type__c] [varchar](255) NULL
) ON [PRIMARY]

GO
