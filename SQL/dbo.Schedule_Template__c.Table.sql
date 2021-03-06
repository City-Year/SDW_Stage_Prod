USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Schedule_Template__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule_Template__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Color__c] [varchar](100) NULL,
	[End_Time_Text__c] [varchar](100) NULL,
	[End_Time__c] [datetime] NULL,
	[External_Id__c] [varchar](255) NULL,
	[Has_Class__c] [int] NOT NULL,
	[Is_Master__c] [int] NOT NULL,
	[Reference_Id__c] [varchar](100) NULL,
	[Reporting_Period__c] [varchar](18) NULL,
	[Setup__c] [varchar](18) NULL,
	[Start_Time_Text__c] [varchar](100) NULL,
	[Start_Time__c] [datetime] NULL,
	[Number_of_Periods__c] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
