USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_ST_SPMBEH_DESSAChart]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_ST_SPMBEH_DESSAChart](
	[student__c] [varchar](18) NULL,
	[Date_Administered__c] [datetime] NULL,
	[Assessment_Name] [varchar](1300) NULL,
	[Decision_Making_T_Score__c] [decimal](18, 0) NULL,
	[Goal_directed_Behavior_T_Score__c] [decimal](18, 0) NULL,
	[Optimistic_Thinking_T_Score__c] [decimal](18, 0) NULL,
	[Personal_Responsibility_T_Score__c] [decimal](18, 0) NULL,
	[Relationship_Skills_T_Score__c] [decimal](18, 0) NULL,
	[SEL_Composite_T_Score__c] [decimal](18, 0) NULL,
	[Self_Awareness_T_Score__c] [decimal](18, 0) NULL,
	[Self_Management_T_Score__c] [decimal](18, 0) NULL,
	[Social_Awareness_T_Score__c] [decimal](18, 0) NULL,
	[Month_Administered] [datetime] NULL,
	[Section_Primary_Staff_ID] [varchar](18) NULL,
	[Section_Primary_Staff] [varchar](80) NULL
) ON [Crystal_Reports_Student_Report]

GO
