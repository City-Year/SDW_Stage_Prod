USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_SPMBEH_City to Site Translation]    Script Date: 12/19/2016 4:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_SPMBEH_City to Site Translation](
	[MailingCity] [varchar](max) NULL,
	[MailingState] [varchar](max) NULL,
	[Location] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
