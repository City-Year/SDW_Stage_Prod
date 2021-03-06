USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Section_ReportingPeriod__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section_ReportingPeriod__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[RecordTypeId] [varchar](18) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Section__c] [varchar](18) NOT NULL,
	[Completed__c] [int] NOT NULL,
	[Course_Weighting__c] [varchar](18) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Number_of_periods__c] [varchar](255) NULL,
	[Period__c] [varchar](100) NULL,
	[ReferenceId__c] [varchar](255) NOT NULL,
	[Scheduler_ReferenceId__c] [varchar](100) NULL,
	[Time__c] [varchar](18) NULL
) ON [PRIMARY]

GO
