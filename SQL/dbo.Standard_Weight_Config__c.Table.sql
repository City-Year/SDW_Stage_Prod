USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Standard_Weight_Config__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Standard_Weight_Config__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Default_Weighting__c] [decimal](2, 0) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Section__c] [varchar](18) NULL,
	[Standard_Name__c] [varchar](20) NULL,
	[Standard__c] [varchar](18) NULL
) ON [PRIMARY]

GO
