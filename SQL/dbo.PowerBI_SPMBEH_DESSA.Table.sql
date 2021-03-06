USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_SPMBEH_DESSA]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_SPMBEH_DESSA](
	[Student] [varchar](80) NULL,
	[School] [varchar](1300) NULL,
	[Date Administered] [date] NULL,
	[Month Administered] [date] NULL,
	[MonthYear] [varchar](255) NULL,
	[Month#] [int] NULL,
	[Assessment Administration #] [bigint] NULL,
	[ASSESSMENT_ADMINISTRATION_TEXT] [varchar](19) NULL,
	[SEL_Composite_Description__c] [varchar](255) NULL,
	[SEL_Composite_T_Score__c] [int] NULL,
	[Decision_Making_Description__c] [varchar](255) NULL,
	[Decision_Making_T_Score__c] [int] NULL,
	[Goal_directed_Behavior_Description__c] [varchar](255) NULL,
	[Goal_directed_Behavior_T_Score__c] [int] NULL,
	[Optimistic_Thinking_Description__c] [varchar](255) NULL,
	[Optimistic_Thinking_T_Score__c] [int] NULL,
	[Personal_Responsibility_Description__c] [varchar](255) NULL,
	[Personal_Responsibility_T_Score__c] [int] NULL,
	[Relationship_Skills_Description__c] [varchar](255) NULL,
	[Relationship_Skills_T_Score__c] [int] NULL,
	[Self_Awareness_Description__c] [varchar](255) NULL,
	[Self_Awareness_T_Score__c] [int] NULL,
	[Self_Management_Description__c] [varchar](255) NULL,
	[Self_Management_T_Score__c] [int] NULL,
	[Social_Awareness_Description__c] [varchar](255) NULL,
	[Social_Awareness_T_Score__c] [int] NULL,
	[Assessment_Name__c] [varchar](1300) NULL,
	[Student_SF_ID] [varchar](18) NOT NULL,
	[cych_Accnt_SF_ID] [varchar](20) NULL,
	[cysch_Accnt_SF_ID] [varchar](20) NULL,
	[School Type] [varchar](1300) NULL,
	[DN Indicator] [varchar](20) NULL,
	[Americorps Member] [varchar](80) NULL,
	[Section Primary Staff ID] [varchar](18) NULL,
	[Program] [varchar](255) NULL,
	[Afterschool Participant] [decimal](1, 0) NULL,
	[Student_IA_ATT] [decimal](1, 0) NULL,
	[Student_IA_BEH] [decimal](1, 0) NULL,
	[Student_IA_ELA] [decimal](1, 0) NULL,
	[Student_IA_MATH] [decimal](1, 0) NULL,
	[Total IA Assigned] [decimal](1, 0) NULL,
	[Gender] [varchar](255) NULL,
	[Ethnicity] [varchar](255) NULL,
	[Ell] [decimal](1, 0) NULL,
	[IEP] [decimal](1, 0) NULL,
	[Grade] [varchar](255) NULL,
	[Local_Student_ID__c] [varchar](100) NULL,
	[cy_student_id] [varchar](100) NULL,
	[Location] [varchar](1300) NULL
) ON [PRIMARY]

GO
