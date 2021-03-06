USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Account_Program__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Program__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[School__c] [varchar](18) NOT NULL,
	[Program__c] [varchar](18) NOT NULL,
	[Active__c] [int] NOT NULL,
	[Additional_Program_Information__c] [varchar](255) NULL,
	[Current_Year_ID__c] [varchar](18) NULL,
	[Current_Year__c] [varchar](1300) NULL,
	[External_ID__c] [varchar](255) NULL,
	[Reason_for_Not_Participating__c] [varchar](255) NULL,
	[Reference_ID__c] [varchar](200) NULL
) ON [PRIMARY]

GO
