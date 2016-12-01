USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[HW_Assignment__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HW_Assignment__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Section__c] [varchar](18) NOT NULL,
	[External_Id__c] [varchar](255) NULL,
	[HWT_Date__c] [datetime] NOT NULL
) ON [PRIMARY]

GO
