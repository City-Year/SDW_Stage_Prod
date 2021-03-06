USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Intervention_Session_Result__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intervention_Session_Result__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Intervention_Session__c] [varchar](18) NOT NULL,
	[Student_Section__c] [varchar](18) NOT NULL,
	[Amount_of_Time__c] [decimal](18, 0) NULL,
	[Individual_Student_Comment__c] [varchar](255) NULL,
	[Intervention_Session_Date__c] [datetime] NULL,
	[Program_Name__c] [varchar](1300) NULL,
	[Program__c] [varchar](1300) NULL,
	[Related_Student_s_Name__c] [varchar](1300) NULL,
	[Section_Name__c] [varchar](1300) NULL,
	[Session_DOW__c] [varchar](1300) NULL,
	[SkillsCovered__c] [nvarchar](max) NULL,
	[Skills_Covered__c] [varchar](1300) NULL,
	[Student_Reference_ID__c] [varchar](1300) NULL,
	[Student__c] [varchar](18) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
