USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[SS_Load_Reporting_Periods]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SS_Load_Reporting_Periods](
	[Name] [varchar](100) NOT NULL,
	[Allow_Periods__c] [varchar](1) NOT NULL,
	[Current__c] [varchar](1) NOT NULL,
	[Date_Start_Date__c] [datetime] NULL,
	[Days_of_Week__c] [varchar](5) NOT NULL,
	[EndTime__c] [varchar](100) NULL,
	[End_Date__c] [datetime] NULL,
	[External_Id__c] [varchar](43) NULL,
	[Name_On_Report_Card__c] [varchar](5) NULL,
	[Name__c] [varchar](100) NULL,
	[New_School_Year__c] [varchar](1) NOT NULL,
	[Number__c] [int] NULL,
	[Parent_Time_Element__c] [varchar](18) NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Previous_Year__c] [varchar](1) NOT NULL,
	[Reference_Id__c] [int] NULL,
	[Reporting_Period_Value__c] [int] NULL,
	[Reporting_Period__c] [varchar](1) NOT NULL,
	[School__c] [varchar](18) NULL,
	[StartTime__c] [varchar](100) NULL,
	[Start_Time__c] [datetime] NULL,
	[Type__c] [int] NULL
) ON [PRIMARY]

GO
