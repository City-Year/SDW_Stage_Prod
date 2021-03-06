USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Section_Grade__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section_Grade__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[RecordTypeId] [varchar](18) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Student_Section__c] [varchar](18) NOT NULL,
	[Alternate_Lang_Comments__c] [varchar](1300) NULL,
	[Calculated_Standard_Grade__c] [decimal](4, 1) NULL,
	[Comments_Next_Steps__c] [varchar](1300) NULL,
	[Course_Weighting__c] [varchar](18) NULL,
	[Credit_No_Credit_Section_Grade__c] [varchar](1300) NULL,
	[Display_Grade_Formula__c] [varchar](1300) NULL,
	[Do_Not_Show_in_PGV__c] [int] NOT NULL,
	[External_Id__c] [varchar](255) NULL,
	[Grade_Overridden__c] [int] NOT NULL,
	[Grade_Override__c] [varchar](10) NULL,
	[Grade_Scale__c] [varchar](1300) NULL,
	[Grade__c] [decimal](5, 2) NULL,
	[Holding_Source__c] [varchar](18) NULL,
	[Key__c] [varchar](40) NULL,
	[Letter_Grade__c] [varchar](15) NULL,
	[Pass_Fail__c] [varchar](1300) NULL,
	[Reference_Id__c] [varchar](255) NULL,
	[Reporting_Period_Name__c] [varchar](1300) NULL,
	[Section_GPA__c] [decimal](4, 2) NULL,
	[Section_Weighted_GPA__c] [decimal](4, 2) NULL,
	[Standard_Section_Grade__c] [decimal](18, 2) NULL,
	[Standard_Section_Grade_v2__c] [decimal](18, 1) NULL,
	[Student_Name_SG__c] [varchar](1300) NULL,
	[Teachers__c] [varchar](1300) NULL,
	[Time__c] [varchar](18) NULL,
	[Weighted_Final_Grade__c] [decimal](18, 2) NULL,
	[isFinal__c] [int] NOT NULL
) ON [PRIMARY]

GO
