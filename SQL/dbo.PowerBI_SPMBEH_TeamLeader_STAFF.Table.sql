USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_SPMBEH_TeamLeader_STAFF]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_SPMBEH_TeamLeader_STAFF](
	[Id] [varchar](18) NOT NULL,
	[Name] [varchar](80) NULL,
	[Active__c] [int] NOT NULL,
	[Email__c] [varchar](80) NULL,
	[External_Id__c] [varchar](255) NULL,
	[First_Name_Staff__c] [varchar](80) NOT NULL,
	[ID__c] [varchar](20) NULL,
	[Individual__c] [varchar](18) NULL,
	[Organization__c] [varchar](18) NULL,
	[Reference_Id__c] [varchar](100) NULL,
	[Role__c] [varchar](50) NULL,
	[Staff_Last_Name__c] [varchar](80) NULL,
	[User_ID__c] [varchar](1300) NULL,
	[legacy_key1__c] [varchar](100) NULL,
	[legacy_key2__c] [varchar](100) NULL,
	[Site__c] [varchar](1300) NULL,
	[School__c] [varchar](1300) NULL
) ON [PRIMARY]

GO
