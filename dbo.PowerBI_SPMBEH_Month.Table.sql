USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_SPMBEH_Month]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_SPMBEH_Month](
	[DateID] [varchar](50) NULL,
	[Month] [date] NULL,
	[MonthNumber] [varchar](max) NULL,
	[Day] [varchar](max) NULL,
	[Year] [varchar](max) NULL,
	[MonthName] [varchar](max) NULL,
	[MonthYear] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
