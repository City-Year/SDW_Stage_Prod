USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Record_Audit]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record_Audit](
	[ObjectName] [varchar](250) NULL,
	[Count] [int] NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]

GO
