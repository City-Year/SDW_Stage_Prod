USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_Student]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_Student](
	[Student_Name] [varchar](80) NULL,
	[Student_SF_ID] [varchar](18) NOT NULL
) ON [Crystal_Reports_Student_Report]

GO
