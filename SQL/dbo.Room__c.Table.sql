USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Room__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[School__c] [varchar](18) NOT NULL,
	[Description__c] [varchar](255) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Has_a_lab__c] [int] NOT NULL,
	[Number__c] [decimal](5, 0) NULL,
	[Reference_Id__c] [varchar](200) NULL,
	[Room_type__c] [varchar](100) NULL,
	[Schedulable__c] [int] NOT NULL,
	[Size__c] [decimal](3, 0) NULL,
	[Usable__c] [int] NOT NULL
) ON [PRIMARY]

GO
