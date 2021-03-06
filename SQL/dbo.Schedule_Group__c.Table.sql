USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Schedule_Group__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule_Group__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[All_Grades__c] [varchar](4099) NULL,
	[Description__c] [varchar](255) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Grade_Level__c] [varchar](255) NULL,
	[Reference_Id__c] [varchar](255) NULL,
	[Setup__c] [varchar](18) NULL
) ON [PRIMARY]

GO
