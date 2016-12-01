USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[SchoolswithouttermsBAK]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolswithouttermsBAK](
	[School Name] [varchar](50) NULL,
	[Term Start] [date] NULL,
	[Term End] [date] NULL,
	[School Year] [varchar](50) NULL,
	[Reporting Period] [varchar](50) NULL
) ON [PRIMARY]

GO
