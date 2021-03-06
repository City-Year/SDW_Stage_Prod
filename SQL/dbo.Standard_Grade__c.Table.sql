USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Standard_Grade__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Standard_Grade__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Calculation_Type__c] [varchar](1300) NULL,
	[Count_of_Graded_1__c] [decimal](3, 0) NULL,
	[Count_of_Graded_2__c] [decimal](3, 0) NULL,
	[Count_of_Graded_3__c] [decimal](3, 0) NULL,
	[Count_of_Graded_4__c] [decimal](3, 0) NULL,
	[Current_Mode__c] [varchar](10) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Grade_Overridden__c] [int] NOT NULL,
	[Grade_Override__c] [decimal](4, 1) NULL,
	[Grade__c] [decimal](4, 2) NULL,
	[Highest_Grade__c] [decimal](6, 2) NULL,
	[Key__c] [varchar](60) NULL,
	[Law_of_Decaying_Average_Grade__c] [decimal](6, 2) NULL,
	[Mean_Grade__c] [decimal](6, 2) NULL,
	[Median_Grade__c] [decimal](6, 2) NULL,
	[Mode_Grade__c] [decimal](6, 2) NULL,
	[Most_Recent_Grade__c] [decimal](6, 2) NULL,
	[Power_Law_Grade__c] [decimal](6, 2) NULL,
	[Reporting_Period_Name__c] [varchar](1300) NULL,
	[Reporting_Period__c] [varchar](18) NULL,
	[Rolling_Highest_Grade__c] [decimal](6, 2) NULL,
	[Rolling_Law_of_Decaying_Average_Grade__c] [decimal](6, 2) NULL,
	[Rolling_Mean_Grade__c] [decimal](6, 2) NULL,
	[Rolling_Most_Recent_Grade__c] [decimal](6, 2) NULL,
	[Rolling_Power_Law_Grade__c] [decimal](6, 2) NULL,
	[Standard_Grade__c] [decimal](18, 2) NULL,
	[Standard_Rolling__c] [int] NOT NULL,
	[Standard__c] [varchar](18) NULL,
	[Student__c] [varchar](18) NULL,
	[Weighted_Average_Grade__c] [decimal](6, 2) NULL
) ON [PRIMARY]

GO
