USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Time_Element__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time_Element__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Allow_Periods__c] [int] NOT NULL,
	[Current__c] [int] NOT NULL,
	[Date_Start_Date__c] [datetime] NULL,
	[Days_of_Week__c] [varchar](100) NULL,
	[EndTime__c] [varchar](100) NULL,
	[End_Date__c] [datetime] NULL,
	[End_Time__c] [datetime] NULL,
	[External_Id__c] [varchar](255) NULL,
	[Name_On_Report_Card__c] [varchar](5) NULL,
	[Name__c] [varchar](100) NOT NULL,
	[New_School_Year__c] [int] NOT NULL,
	[Number__c] [varchar](255) NULL,
	[Parent_Time_Element__c] [varchar](18) NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Previous_Year__c] [int] NOT NULL,
	[Reference_Id__c] [varchar](100) NULL,
	[Reporting_Period_Value__c] [varchar](18) NULL,
	[Reporting_Period__c] [int] NOT NULL,
	[School__c] [varchar](18) NULL,
	[StartTime__c] [varchar](100) NULL,
	[Start_Time__c] [datetime] NULL,
	[Type__c] [varchar](255) NULL
) ON [PRIMARY]

GO
