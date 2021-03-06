USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[SS_Load_Schedule_Template__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SS_Load_Schedule_Template__c](
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[Color__c] [varchar](100) NULL,
	[Has_Class__c] [int] NOT NULL,
	[Is_Master__c] [int] NOT NULL,
	[Reference_Id__c] [varchar](100) NULL,
	[Reporting_Period__c] [varchar](18) NULL,
	[Setup__c] [varchar](18) NULL,
	[Number_of_Periods__c] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
