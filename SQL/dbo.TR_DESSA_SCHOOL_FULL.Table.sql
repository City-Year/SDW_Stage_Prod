USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[TR_DESSA_SCHOOL_FULL]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TR_DESSA_SCHOOL_FULL](
	[cych_Accnt_SF_ID] [varchar](20) NULL,
	[STUDENT_SCHOOL_NAME] [varchar](1300) NULL,
	[Assessment_Administration_Number] [bigint] NULL,
	[ASSESSMENT_ADMINISTRATION_TEXT] [varchar](19) NULL,
	[COMP_N] [int] NULL,
	[COMP_T] [int] NULL,
	[COMP_S] [int] NULL,
	[DM_N] [int] NULL,
	[DM_T] [int] NULL,
	[DM_S] [int] NULL,
	[GDB_N] [int] NULL,
	[GDB_T] [int] NULL,
	[GDB_S] [int] NULL,
	[OT_N] [int] NULL,
	[OT_T] [int] NULL,
	[OT_S] [int] NULL,
	[PR_N] [int] NULL,
	[PR_T] [int] NULL,
	[PR_S] [int] NULL,
	[RS_N] [int] NULL,
	[RS_T] [int] NULL,
	[RS_S] [int] NULL,
	[SA_N] [int] NULL,
	[SA_T] [int] NULL,
	[SA_S] [int] NULL,
	[SM_N] [int] NULL,
	[SM_T] [int] NULL,
	[SM_S] [int] NULL,
	[SoA_N] [int] NULL,
	[SoA_T] [int] NULL,
	[SoA_S] [int] NULL
) ON [Crystal_Reports_Team_Report]

GO
