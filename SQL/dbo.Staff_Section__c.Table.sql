USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Staff_Section__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Section__c](
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
	[Archived__c] [int] NOT NULL,
	[Display_Teacher_On_RC_PR__c] [int] NOT NULL,
	[External_Id__c] [varchar](255) NULL,
	[Grade_Levels__c] [varchar](1300) NULL,
	[Grade__c] [varchar](1300) NULL,
	[Holding_Source__c] [varchar](18) NULL,
	[Is_Active__c] [int] NOT NULL,
	[Is_Admin_Configured__c] [int] NOT NULL,
	[Legacy_ID__c] [varchar](100) NULL,
	[Reference_Id__c] [varchar](100) NULL,
	[Staff__c] [varchar](18) NULL,
	[View_Gradebook_as_Read_Only__c] [int] NOT NULL,
	[Intervention_Primary_Staff__c] [int] NOT NULL,
	[School__c] [varchar](1300) NULL,
	[Order__c] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
