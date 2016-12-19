USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Schoolswithoutterms]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schoolswithoutterms](
	[School Name] [varchar](50) NULL,
	[Term Start] [varchar](50) NULL,
	[Term End] [varchar](50) NULL,
	[School Year] [varchar](50) NULL,
	[Reporting Period] [varchar](50) NULL
) ON [PRIMARY]

GO
