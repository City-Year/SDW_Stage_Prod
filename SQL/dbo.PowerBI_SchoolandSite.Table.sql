USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_SchoolandSite]    Script Date: 12/19/2016 4:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_SchoolandSite](
	[Section_Primary_Staff] [varchar](80) NULL,
	[Section_Primary_Staff_ID] [varchar](18) NULL,
	[Student_School_Name] [varchar](1300) NULL,
	[Business_Unit] [varchar](255) NULL
) ON [Crystal_Reports_Student_Report]

GO
