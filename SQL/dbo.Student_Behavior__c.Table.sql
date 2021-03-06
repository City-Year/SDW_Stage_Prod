USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Student_Behavior__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Behavior__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Student__c] [varchar](18) NOT NULL,
	[Behavior_Incident__c] [varchar](18) NOT NULL,
	[Behavior_Weighting__c] [decimal](10, 0) NULL,
	[Consequence_Time_Lost__c] [decimal](18, 0) NULL,
	[Contact__c] [varchar](18) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Family_Contacted__c] [int] NOT NULL,
	[Final_Consequence_Weighting__c] [decimal](18, 0) NULL,
	[Incident_Role__c] [varchar](255) NULL,
	[Reporting_Reference__c] [varchar](40) NULL,
	[Student_s_Grade__c] [varchar](1300) NULL,
	[Total_Time_Lost__c] [decimal](18, 0) NULL,
	[Type_Of_Contact__c] [varchar](255) NULL
) ON [PRIMARY]

GO
