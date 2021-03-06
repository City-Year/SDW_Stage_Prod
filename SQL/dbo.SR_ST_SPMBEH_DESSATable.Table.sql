USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[SR_ST_SPMBEH_DESSATable]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SR_ST_SPMBEH_DESSATable](
	[student__c] [varchar](18) NULL,
	[date_administered__c] [datetime] NULL,
	[ASSESSMENT_NAME] [varchar](1300) NULL,
	[student_name] [varchar](80) NULL,
	[social_awareness_Description__c] [varchar](255) NULL,
	[self_management_description__c] [varchar](255) NULL,
	[self_awareness_description__c] [varchar](255) NULL,
	[SEL_composite_description__c] [varchar](255) NULL,
	[relationship_skills_description__c] [varchar](255) NULL,
	[personal_responsibility_description__c] [varchar](255) NULL,
	[optimistic_thinking_description__c] [varchar](255) NULL,
	[goal_directed_behavior_description__c] [varchar](255) NULL,
	[decision_making_description__c] [varchar](255) NULL,
	[MOSTRECENT] [bigint] NULL
) ON [Crystal_Reports_Student_Report]

GO
