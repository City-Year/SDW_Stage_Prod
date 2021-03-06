USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Picklist_Value__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picklist_Value__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[RecordTypeId] [varchar](18) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Behavior_Category__c] [varchar](255) NULL,
	[Behavior_Incident_Level__c] [varchar](255) NULL,
	[Category__c] [varchar](255) NULL,
	[Consequence_Weight__c] [decimal](4, 1) NULL,
	[Corresponding_Value__c] [decimal](3, 0) NULL,
	[Default_Points__c] [decimal](3, 0) NULL,
	[Display_Code__c] [varchar](10) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Fieldset__c] [varchar](255) NULL,
	[Grade__c] [varchar](255) NULL,
	[Incident_Involves_Weapon__c] [int] NOT NULL,
	[Internal_Code__c] [varchar](255) NULL,
	[Is_Early_Departure__c] [int] NOT NULL,
	[Is_Suspension__c] [int] NOT NULL,
	[Is_Tardy__c] [int] NOT NULL,
	[Is_Unexcused__c] [int] NOT NULL,
	[Level__c] [varchar](255) NULL,
	[Long_Description__c] [varchar](255) NULL,
	[Notify_Admin__c] [int] NOT NULL,
	[Number__c] [varchar](255) NULL,
	[Order__c] [decimal](3, 0) NULL,
	[Set_as_Default__c] [int] NOT NULL,
	[Setup__c] [varchar](18) NULL,
	[Short_Description__c] [varchar](40) NULL,
	[Show_On_Report_Card__c] [int] NOT NULL,
	[Show_On_Transcript__c] [int] NOT NULL,
	[Standard_Scale__c] [int] NOT NULL,
	[Type__c] [varchar](255) NULL,
	[Year_over_year__c] [int] NOT NULL
) ON [PRIMARY]

GO
