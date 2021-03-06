USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[SS_Load_Terms]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SS_Load_Terms](
	[SchoolID] [varchar](18) NOT NULL,
	[date_start_date__c] [datetime] NULL,
	[end_date__c] [datetime] NULL,
	[Days_of_Week__c] [varchar](5) NOT NULL,
	[Name] [varchar](50) NULL,
	[Parent_Time_Element__c] [varchar](18) NOT NULL,
	[Reporting_Period_Value__c] [varchar](18) NOT NULL,
	[External_ID] [varchar](37) NOT NULL,
	[Picklist_Value__c] [varchar](18) NOT NULL
) ON [PRIMARY]

GO
