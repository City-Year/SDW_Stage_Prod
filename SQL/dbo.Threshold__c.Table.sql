USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Threshold__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Threshold__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Consecutive__c] [decimal](18, 0) NULL,
	[Cumulative__c] [decimal](18, 0) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Notification__c] [varchar](18) NULL,
	[Time_Lost__c] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
