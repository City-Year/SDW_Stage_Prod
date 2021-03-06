USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Consequence__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consequence__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Behavior_Incident_ID_Formula__c] [varchar](1300) NULL,
	[Behavior_Type_Formula__c] [varchar](1300) NULL,
	[Consequence_Category__c] [varchar](1300) NULL,
	[Consequence_Read_Only__c] [varchar](1300) NULL,
	[Consequence_Weighting__c] [decimal](18, 0) NULL,
	[Consequence__c] [varchar](255) NULL,
	[Date_of_Re_entry__c] [datetime] NULL,
	[Days_Suspended__c] [decimal](3, 0) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Final_Consequence__c] [int] NOT NULL,
	[Incident_Date_Formula__c] [datetime] NULL,
	[Is_Suspended__c] [varchar](1300) NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Re_entry_Mtg_Date__c] [datetime] NULL,
	[Re_entry_Mtg_Time__c] [varchar](255) NULL,
	[Re_entry_Notes__c] [varchar](255) NULL,
	[Show_Suspension_In_Attendance__c] [int] NOT NULL,
	[Student_Consequence__c] [varchar](18) NULL,
	[Student_Name_Formula__c] [varchar](1300) NULL,
	[Student__c] [varchar](18) NULL,
	[Student_s_Grade__c] [varchar](1300) NULL,
	[Suspension_End_Date__c] [datetime] NULL,
	[Suspension_Start_Date__c] [datetime] NULL,
	[Time_Lost__c] [decimal](5, 0) NULL
) ON [PRIMARY]

GO
