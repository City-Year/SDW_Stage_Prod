USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Team_Staff__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team_Staff__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Team__c] [varchar](18) NOT NULL,
	[Staff_Member__c] [varchar](18) NOT NULL,
	[External_ID__c] [varchar](255) NULL,
	[Notes_Comments__c] [varchar](255) NULL,
	[School__c] [varchar](1300) NULL
) ON [PRIMARY]

GO
