USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Value__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Value__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Communication_Type__c] [varchar](255) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Language__c] [varchar](255) NULL,
	[Setup__c] [varchar](18) NULL,
	[Text_Alert__c] [varchar](1300) NULL,
	[Type__c] [varchar](255) NULL
) ON [PRIMARY]

GO
