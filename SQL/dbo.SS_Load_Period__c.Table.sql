USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[SS_Load_Period__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SS_Load_Period__c](
	[IsDeleted] [int] NOT NULL,
	[Schedule_Template__c] [varchar](18) NOT NULL,
	[End_Time_Text__c] [varchar](100) NULL,
	[End_Time__c] [datetime] NULL,
	[External_Id__c] [varchar](255) NULL,
	[Key__c] [varchar](100) NULL,
	[Order__c] [decimal](2, 0) NULL,
	[Passing_Time__c] [varchar](255) NULL,
	[Start_Time_Text__c] [varchar](100) NULL,
	[Start_Time__c] [datetime] NULL,
	[Type__c] [varchar](255) NULL
) ON [PRIMARY]

GO
