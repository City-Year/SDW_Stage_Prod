USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_SPM_Behavior2]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_SPM_Behavior2](
	[Student_Name] [varchar](255) NULL,
	[student_school_name] [varchar](1300) NULL,
	[Date_Administered__c] [datetime] NULL,
	[Assessment_Administration_Number] [bigint] NULL,
	[ASSESSMENT_ADMINISTRATION_TEXT] [varchar](255) NULL,
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
	[Local_Student_ID__c] [varchar](100) NULL,
	[cy_student_id] [varchar](100) NULL,
	[cych_Accnt_SF_ID] [varchar](20) NULL,
	[SchoolType] [varchar](255) NULL,
	[DN] [varchar](20) NULL,
	[Section_Primary_Staff] [varchar](255) NULL,
	[Section_Primary_Staff_ID] [varchar](18) NULL,
	[TEAM_NAME] [varchar](255) NULL,
	[TEAM_ID] [varchar](255) NULL,
	[student_ia_att] [decimal](1, 0) NULL,
	[Student_IA_Beh] [decimal](1, 0) NULL,
	[Student_IA_ELA] [decimal](1, 0) NULL,
	[Student_IA_Math] [decimal](1, 0) NULL,
	[student_gender] [varchar](255) NULL,
	[student_ethnicity] [varchar](255) NULL,
	[student_ell] [int] NULL,
	[student_grade] [varchar](255) NULL,
	[afterschoolpart] [int] NULL
) ON [Crystal_Reports_Student_Report]

GO
