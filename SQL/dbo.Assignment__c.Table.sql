USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Assignment__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Section__c] [varchar](18) NOT NULL,
	[Assessment_Type__c] [varchar](18) NULL,
	[Assignment_Description__c] [varchar](1300) NULL,
	[Assignment_Library__c] [varchar](18) NULL,
	[Color__c] [varchar](255) NULL,
	[Curriculum__c] [varchar](255) NULL,
	[Description__c] [varchar](255) NULL,
	[Display_Code__c] [varchar](1300) NULL,
	[Due_Date__c] [datetime] NULL,
	[Due_Date_for_Gradebook__c] [varchar](1300) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Include_in_Final_Grade__c] [int] NOT NULL,
	[Instructional_Approach__c] [varchar](255) NULL,
	[Media_Name__c] [varchar](200) NULL,
	[Media_Source__c] [varchar](255) NULL,
	[Name_in_Gradebook__c] [varchar](5) NULL,
	[Objective_Skill__c] [varchar](40) NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Possible_Points__c] [decimal](3, 0) NULL,
	[Related_Outside_Source__c] [varchar](255) NULL,
	[Show_in_portal__c] [int] NOT NULL,
	[Standard_Scale__c] [varchar](18) NULL,
	[Time__c] [varchar](18) NULL,
	[Weighting_Value__c] [decimal](2, 0) NULL,
	[Local_Assignment_Type__c] [varchar](255) NULL
) ON [PRIMARY]

GO
