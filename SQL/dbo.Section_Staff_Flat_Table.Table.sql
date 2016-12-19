USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Section_Staff_Flat_Table]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section_Staff_Flat_Table](
	[SectionID] [nvarchar](250) NULL,
	[SectionName] [nvarchar](250) NULL,
	[StaffID1] [nvarchar](250) NULL,
	[StaffName1] [nvarchar](250) NULL,
	[StaffID2] [nvarchar](250) NULL,
	[StaffName2] [nvarchar](250) NULL,
	[StaffID3] [nvarchar](250) NULL,
	[StaffName3] [nvarchar](250) NULL,
	[StaffID4] [nvarchar](250) NULL,
	[StaffName4] [nvarchar](250) NULL,
	[StaffID5] [nvarchar](250) NULL,
	[StaffName5] [nvarchar](250) NULL
) ON [PRIMARY]

GO
