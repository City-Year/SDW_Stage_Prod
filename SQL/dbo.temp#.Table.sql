USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[temp#]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp#](
	[student_sf_ID] [varchar](18) NOT NULL,
	[student_name] [varchar](80) NULL,
	[AfterSchoolPart] [int] NULL
) ON [PRIMARY]

GO
