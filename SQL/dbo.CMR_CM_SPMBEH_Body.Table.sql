USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[CMR_CM_SPMBEH_Body]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMR_CM_SPMBEH_Body](
	[Section_Primary_Staff] [varchar](80) NULL,
	[Section_Primary_Staff_ID] [varchar](18) NULL,
	[STUDENT_SCHOOL_NAME] [varchar](1300) NULL,
	[cych_Accnt_SF_ID] [varchar](20) NULL,
	[Section_IA] [varchar](255) NULL,
	[BUSINESS_UNIT] [varchar](1300) NULL,
	[TEAM_NAME] [varchar](255) NULL,
	[TEAM_ID] [varchar](255) NULL
) ON [Crystal_Reports_Corps_Member_Report]

GO
