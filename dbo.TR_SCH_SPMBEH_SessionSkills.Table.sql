USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[TR_SCH_SPMBEH_SessionSkills]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TR_SCH_SPMBEH_SessionSkills](
	[SESSION_ID] [varchar](18) NULL,
	[STUDENT_IA_BEH] [decimal](1, 0) NULL,
	[SECTION_IA] [varchar](255) NULL,
	[PROGRAM_DESCRIPTION] [varchar](80) NULL,
	[SESSION_SKILLS] [varchar](1300) NULL,
	[CY_STUDENT_ID] [varchar](100) NULL,
	[STUDENT_SCHOOL_NAME] [varchar](1300) NULL,
	[CYCH_ACCNT_SF_iD] [varchar](20) NULL,
	[STUDENT_SF_ID] [varchar](18) NOT NULL,
	[Section_Primary_Staff] [varchar](80) NULL,
	[Section_Primary_Staff_ID] [varchar](18) NULL,
	[BUSINESS_UNIT] [varchar](1300) NULL,
	[PRIMARYSKILL] [varchar](1300) NULL,
	[ABBREV_SESSIONSKILL] [varchar](1300) NULL,
	[APPEND] [varchar](1300) NULL,
	[ABREV] [varchar](2) NULL,
	[SESSION_SKILL_FORUSE] [varchar](1304) NOT NULL
) ON [Crystal_Reports_Team_Report]

GO
