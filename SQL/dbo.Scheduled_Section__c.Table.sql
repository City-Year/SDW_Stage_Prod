USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Scheduled_Section__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheduled_Section__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Account__c] [varchar](18) NULL,
	[Color__c] [varchar](20) NULL,
	[Course_Name__c] [varchar](1300) NULL,
	[Course__c] [varchar](18) NULL,
	[Daily_Attendance__c] [int] NOT NULL,
	[End_Time_Text__c] [varchar](100) NULL,
	[End_Time__c] [datetime] NULL,
	[External_Id__c] [varchar](255) NULL,
	[Grade_Level__c] [varchar](1300) NULL,
	[Grade_Levels__c] [varchar](1300) NULL,
	[Needs_Publish__c] [int] NOT NULL,
	[No_Meeting__c] [int] NOT NULL,
	[Period_Key__c] [varchar](100) NULL,
	[Record_Attendance__c] [int] NOT NULL,
	[Reference_Id__c] [varchar](255) NULL,
	[Reporting_Period__c] [varchar](18) NULL,
	[Room_Key__c] [varchar](250) NULL,
	[Room__c] [varchar](18) NULL,
	[Rounded_End_Time__c] [varchar](10) NULL,
	[Rounded_Start_Time__c] [varchar](10) NULL,
	[Schedule_Group_Name__c] [varchar](1300) NULL,
	[Schedule_Group_Section__c] [varchar](18) NULL,
	[Schedule_Group__c] [varchar](18) NULL,
	[Schedule_Template__c] [varchar](18) NULL,
	[Section_Reference_Id__c] [varchar](255) NULL,
	[Section_ReportingPeriod__c] [varchar](18) NULL,
	[Section__c] [varchar](18) NULL,
	[Staff_Key__c] [varchar](200) NULL,
	[Staff__c] [varchar](18) NULL,
	[Start_Time_Text__c] [varchar](100) NULL,
	[Start_Time__c] [datetime] NULL,
	[Type__c] [varchar](100) NULL
) ON [PRIMARY]

GO
