USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Intervention_Session__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intervention_Session__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Section__c] [varchar](18) NOT NULL,
	[Comments__c] [varchar](255) NULL,
	[Date__c] [datetime] NULL,
	[Month_of_Year__c] [decimal](18, 0) NULL,
	[Session_Time_Completed_For__c] [varchar](18) NULL,
	[Skills_Covered_for_the_Session__c] [varchar](1300) NULL,
	[Skills__c] [varchar](255) NULL,
	[Week_of_Year__c] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
