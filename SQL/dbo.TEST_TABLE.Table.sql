USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[TEST_TABLE]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_TABLE](
	[cysch_Accnt_SF_ID] [varchar](250) NULL,
	[cych_Accnt_SF_ID] [varchar](250) NULL,
	[student_name] [varchar](250) NULL,
	[DMDiffGroup] [int] NULL,
	[GBDiffGroup] [int] NULL,
	[OTDiffGroup] [int] NULL,
	[PRDiffGroup] [int] NULL,
	[RSDiffGroup] [int] NULL,
	[SADiffGroup] [int] NULL,
	[SMDiffGroup] [int] NULL,
	[SODiffGroup] [int] NULL
) ON [PRIMARY]

GO
