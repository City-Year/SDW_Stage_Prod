USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Orlando_Grades]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orlando_Grades](
	[Student_ID] [varchar](250) NULL,
	[Marking_Period] [varchar](250) NULL,
	[Class_Scetion_ID] [varchar](250) NULL,
	[Grad_Value] [varchar](250) NULL,
	[Weighted_Value] [varchar](250) NULL,
	[GPA_Value] [varchar](250) NULL
) ON [PRIMARY]

GO
