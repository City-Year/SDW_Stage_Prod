USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_Date]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_Date](
	[DateID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL
) ON [Crystal_Reports_Student_Report]

GO
