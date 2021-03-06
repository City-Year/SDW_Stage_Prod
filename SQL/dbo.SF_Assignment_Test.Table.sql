USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[SF_Assignment_Test]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SF_Assignment_Test](
	[Name] [varchar](85) NULL,
	[Assignment_Library__c] [varchar](18) NULL,
	[Due_Date__c] [datetime] NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Include_in_Final_Grade__c] [int] NOT NULL,
	[Name_in_Gradebook__c] [varchar](5) NULL,
	[Possible_Points__c] [decimal](3, 0) NULL,
	[Time__c] [varchar](18) NULL,
	[Section__c] [varchar](18) NOT NULL,
	[Weighting_Value__c] [decimal](2, 0) NULL,
	[External_Id__c] [varchar](6) NOT NULL,
	[Local_Assignment_Type__c] [varchar](255) NULL
) ON [PRIMARY]

GO
