USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Course_Weightings__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Weightings__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Course__c] [varchar](18) NOT NULL,
	[Key__c] [varchar](100) NULL,
	[Parent_Weighting__c] [varchar](18) NULL,
	[Reporting_Period_Type__c] [varchar](18) NULL,
	[Time__c] [varchar](18) NULL,
	[Weighting__c] [decimal](5, 2) NULL,
	[External_Id__c] [varchar](255) NULL
) ON [PRIMARY]

GO
