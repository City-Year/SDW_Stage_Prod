USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_SPMBEH_DOSAGE]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_SPMBEH_DOSAGE](
	[Session Minutes to Date] [decimal](18, 0) NULL,
	[Session Date] [date] NULL,
	[Session ID] [varchar](18) NULL,
	[Session Result ID] [varchar](18) NULL,
	[Student] [varchar](255) NULL,
	[Student_IA_BEH] [decimal](1, 0) NULL,
	[Section IA] [varchar](255) NULL,
	[Program] [varchar](80) NULL,
	[Session Skills] [varchar](1300) NULL,
	[cy_student_id] [varchar](100) NULL,
	[cych_accnt_sf_id] [varchar](20) NULL,
	[cysch_Accnt_SF_ID] [varchar](20) NULL,
	[School] [varchar](1300) NULL,
	[student_sf_id] [varchar](18) NOT NULL,
	[intervention_corps_member] [varchar](80) NULL,
	[intervention_corps_member_id] [varchar](18) NULL,
	[Location] [varchar](1300) NULL,
	[Gender] [varchar](255) NULL,
	[Ethnicity] [varchar](255) NULL,
	[Ell Flag] [decimal](1, 0) NULL,
	[IEP Flag] [decimal](1, 0) NULL,
	[Grade] [varchar](255) NULL,
	[School Type] [varchar](255) NULL,
	[DN Indicator] [varchar](20) NULL,
	[Staff Email] [varchar](255) NULL,
	[TeamName] [varchar](255) NULL,
	[TeamDescription] [varchar](1300) NULL,
	[Student_IA_ATT] [decimal](1, 0) NULL,
	[Student_IA_ELA] [decimal](1, 0) NULL,
	[Student_IA_MATH] [decimal](1, 0) NULL,
	[Total IA Assigned] [decimal](1, 0) NULL,
	[Afterschool Participant] [decimal](1, 0) NULL,
	[Americorps Member] [varchar](255) NULL,
	[Section Primary Staff ID] [varchar](80) NULL,
	[PRIMARYSKILL] [varchar](1300) NULL,
	[ABBREV_SESSIONSKILL] [varchar](1300) NULL,
	[APPEND] [varchar](1300) NULL,
	[Running Monthly Dosage] [decimal](38, 0) NULL,
	[Session Date Month] [date] NULL
) ON [PRIMARY]

GO
