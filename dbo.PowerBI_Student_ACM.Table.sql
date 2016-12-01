USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_Student_ACM]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_Student_ACM](
	[Student_Name] [varchar](80) NULL,
	[Student_SF_ID] [varchar](18) NOT NULL,
	[Section_Primary_Staff] [varchar](80) NULL,
	[Section_Primary_Staff_ID] [varchar](18) NULL
) ON [Crystal_Reports_Student_Report]

GO
