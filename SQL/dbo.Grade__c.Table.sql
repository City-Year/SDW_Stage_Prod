USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Grade__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade__c](
	[Id] [varchar](18) NULL,
	[OwnerId] [varchar](18) NULL,
	[IsDeleted] [int] NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedById] [varchar](18) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedById] [varchar](18) NULL,
	[SystemModstamp] [datetime] NULL,
	[LastActivityDate] [datetime] NULL,
	[Assignment_Weighting__c] [decimal](2, 0) NULL,
	[Assignment__c] [varchar](18) NULL,
	[Comment__c] [varchar](255) NULL,
	[Course__c] [varchar](18) NULL,
	[Entered_Grade__c] [varchar](10) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Faux_Grade__c] [int] NULL,
	[Grade_Number__c] [decimal](5, 2) NULL,
	[Grade_Update__c] [int] NULL,
	[Grade_With_Standard__c] [int] NULL,
	[Grading_Type__c] [varchar](1300) NULL,
	[Include_In_Standard_Grade__c] [int] NULL,
	[Locked_for_Final__c] [int] NULL,
	[Points_Grade__c] [int] NULL,
	[Possible_Points__c] [decimal](10, 0) NULL,
	[Publish_Comment__c] [int] NULL,
	[Reporting_Period_Name__c] [varchar](1300) NULL,
	[Standard_Gradebook_Grade__c] [varchar](18) NULL,
	[Standard_Times_Assignment__c] [decimal](10, 0) NULL,
	[Standard_Weighting__c] [decimal](10, 0) NULL,
	[Standard__c] [varchar](18) NULL,
	[Standards_Only_Grading__c] [int] NULL,
	[Strand_Grade__c] [varchar](18) NULL,
	[Student_Section__c] [varchar](18) NULL,
	[Student__c] [varchar](18) NULL,
	[Time__c] [varchar](18) NULL,
	[Valid_Grade__c] [int] NULL,
	[Weighted_Grade_Value__c] [decimal](8, 2) NULL,
	[exclude_From_Section_Grade__c] [int] NULL,
	[Student_Reference_ID__c] [varchar](1300) NULL,
	[Due_Date__c] [datetime] NULL
) ON [PRIMARY]

GO
