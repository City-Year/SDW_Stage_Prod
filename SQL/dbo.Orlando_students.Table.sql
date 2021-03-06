USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Orlando_students]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orlando_students](
	[STUDENT_ID] [varchar](250) NULL,
	[SCHOOL_ID] [varchar](250) NULL,
	[SCHOOL_NAME] [varchar](250) NULL,
	[SCHOOL_YEAR] [varchar](250) NULL,
	[FIRST_NAME] [varchar](250) NULL,
	[LAST_NAME] [varchar](250) NULL,
	[GRADE] [varchar](250) NULL,
	[DATE_OF_BIRTH] [varchar](250) NULL,
	[SEX] [varchar](250) NULL,
	[ETHNICITY] [varchar](250) NULL,
	[RACE] [varchar](250) NULL,
	[DISABILITY] [varchar](250) NULL,
	[ELL_FLAG] [varchar](250) NULL,
	[HOME_LANGUAGE] [varchar](250) NULL,
	[ADDRESS_LINE_1] [varchar](250) NULL,
	[ADDRESS_LINE_2] [varchar](250) NULL,
	[CITY] [varchar](250) NULL,
	[STATE] [varchar](250) NULL,
	[ZIP] [varchar](250) NULL,
	[HOME_PHONE] [varchar](250) NULL
) ON [PRIMARY]

GO
