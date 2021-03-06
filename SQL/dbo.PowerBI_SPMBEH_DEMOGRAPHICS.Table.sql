USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_SPMBEH_DEMOGRAPHICS]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_SPMBEH_DEMOGRAPHICS](
	[Student] [varchar](255) NULL,
	[Student_IA_ATT] [decimal](1, 0) NULL,
	[Student_IA_BEH] [decimal](1, 0) NULL,
	[Student_IA_ELA] [decimal](1, 0) NULL,
	[Student_IA_MATH] [decimal](1, 0) NULL,
	[Total IA Assigned] [decimal](1, 0) NULL,
	[Gender] [varchar](255) NULL,
	[Ethnicity] [varchar](255) NULL,
	[ELL Flag] [decimal](1, 0) NULL,
	[Grade] [varchar](255) NULL,
	[Local_Student_ID__c] [varchar](255) NULL,
	[cy_student_id] [varchar](100) NULL,
	[School] [varchar](1300) NULL,
	[Location] [varchar](1300) NULL,
	[Student_SF_ID] [varchar](18) NOT NULL,
	[cysch_Accnt_SF_ID] [varchar](20) NULL,
	[cych_Accnt_SF_ID] [varchar](20) NULL,
	[Section_IA] [varchar](255) NULL,
	[Americorps Member] [varchar](255) NULL,
	[Section Primary Staff ID] [varchar](18) NULL,
	[IEP Flag] [decimal](1, 0) NULL,
	[DN Indicator] [varchar](20) NULL,
	[School Type] [varchar](255) NULL,
	[TeamName] [varchar](255) NULL,
	[TeamDescription] [varchar](1300) NULL,
	[Program] [varchar](80) NULL,
	[Afterschool Participant] [decimal](1, 0) NULL
) ON [Crystal_Reports_Student_Report]

GO
