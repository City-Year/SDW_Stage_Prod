USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[temp2#]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp2#](
	[Student_Name] [varchar](80) NULL,
	[Student_IA_Att] [decimal](1, 0) NULL,
	[Student_IA_Beh] [decimal](1, 0) NULL,
	[Student_IA_ELA] [decimal](1, 0) NULL,
	[Student_IA_Math] [decimal](1, 0) NULL,
	[Student_TTL_IAs_Assigned] [decimal](18, 0) NULL,
	[Student_Gender] [varchar](255) NULL,
	[Student_Ethnicity] [varchar](255) NULL,
	[Student_ELL] [int] NOT NULL,
	[Student_Grade] [varchar](255) NULL,
	[Student_District_ID] [varchar](100) NULL,
	[CY_Student_ID] [varchar](100) NULL,
	[Student_School_Name] [varchar](1300) NULL,
	[Business_Unit] [varchar](255) NULL,
	[Student_SF_ID] [varchar](18) NOT NULL,
	[cysch_Accnt_SF_ID] [varchar](18) NOT NULL,
	[cych_Accnt_SF_ID] [varchar](20) NULL
) ON [PRIMARY]

GO
