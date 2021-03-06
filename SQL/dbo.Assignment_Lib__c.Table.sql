USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Assignment_Lib__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment_Lib__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Assignment_Description__c] [varchar](1300) NULL,
	[Course__c] [varchar](18) NULL,
	[Curriculum__c] [varchar](255) NULL,
	[Description__c] [varchar](255) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Instructional_Approach__c] [varchar](255) NULL,
	[Objective_Skill__c] [varchar](40) NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Related_Outside_Source__c] [varchar](255) NULL,
	[Type__c] [varchar](1300) NULL
) ON [PRIMARY]

GO
