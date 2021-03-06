USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Final_Grade__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Final_Grade__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Student__c] [varchar](18) NOT NULL,
	[Course__c] [varchar](18) NOT NULL,
	[Course_Credits__c] [decimal](7, 2) NULL,
	[Credit_No_Credit_Current_Grade__c] [varchar](1300) NULL,
	[Credit_No_Credit_Final_Grade__c] [varchar](1300) NULL,
	[Current_Grade_Letter__c] [varchar](3) NULL,
	[Current_Grade_Letter_v2__c] [varchar](15) NULL,
	[Current_Grade_Value__c] [decimal](17, 2) NULL,
	[Display_Current_Grade_Formula__c] [varchar](1300) NULL,
	[Display_Final_Grade_Formula__c] [varchar](1300) NULL,
	[Exclude_Course_from_GPA__c] [int] NOT NULL,
	[External_Id__c] [varchar](255) NULL,
	[Final_GPA_Value__c] [decimal](17, 2) NULL,
	[Final_Grade_Letter__c] [varchar](3) NULL,
	[Final_Grade_Letter_v2__c] [varchar](15) NULL,
	[Final_Grade_Value__c] [decimal](17, 2) NULL,
	[Grade_Overridden__c] [int] NOT NULL,
	[Grade_Override__c] [varchar](10) NULL,
	[Grade_Scale__c] [varchar](1300) NULL,
	[Key__c] [varchar](40) NULL,
	[Section_Grades_Overridden__c] [int] NOT NULL,
	[Standard_Current_Grade__c] [decimal](18, 2) NULL,
	[Standard_Final_Grade__c] [decimal](18, 1) NULL,
	[Total_GPA_Credit_Value__c] [decimal](5, 2) NULL,
	[Total_Weighted_GPA_Credit_Value__c] [decimal](18, 2) NULL,
	[Transfer_School__c] [varchar](255) NULL,
	[Unweighted_GPA__c] [decimal](18, 2) NULL,
	[Weighted_GPA__c] [decimal](18, 2) NULL,
	[Credits_Earned__c] [decimal](18, 2) NULL,
	[Final__c] [int] NOT NULL,
	[Show_in_Portal__c] [int] NOT NULL,
	[Credit_Earned_Override__c] [int] NOT NULL
) ON [PRIMARY]

GO
