USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Standard__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Standard__c](
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
	[Attribute__c] [varchar](255) NULL,
	[Citywide_Instructional_Expectation__c] [int] NOT NULL,
	[Course__c] [varchar](18) NULL,
	[Department__c] [varchar](18) NULL,
	[Description_Spanish__c] [varchar](1300) NULL,
	[External_Id__c] [varchar](18) NULL,
	[Grade_Level_Text__c] [varchar](10) NULL,
	[Grade_Level__c] [varchar](18) NULL,
	[Identifier__c] [varchar](50) NULL,
	[Level__c] [decimal](3, 0) NULL,
	[Long_Text__c] [varchar](1300) NULL,
	[Parent_Standard__c] [varchar](18) NULL,
	[Reference_Id__c] [varchar](255) NULL,
	[School__c] [varchar](18) NULL,
	[Standard_Subject__c] [varchar](18) NULL,
	[Strand__c] [varchar](18) NULL,
	[Subject__c] [varchar](100) NULL
) ON [PRIMARY]

GO
