USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_SPMBEH_DIMCM]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_SPMBEH_DIMCM](
	[Section Primary Staff ID] [varchar](max) NULL,
	[Americorps Member] [varchar](max) NULL,
	[First_Name_Staff__c] [varchar](max) NULL,
	[Staff_Last_Name__c] [varchar](max) NULL,
	[School] [varchar](max) NULL,
	[Organization__c] [varchar](max) NULL,
	[Location] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
