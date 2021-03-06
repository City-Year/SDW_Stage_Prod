USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Attendance__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Student__c] [varchar](18) NOT NULL,
	[Session__c] [varchar](18) NOT NULL,
	[Arrival_Time_Text__c] [varchar](200) NULL,
	[Arrival_Time__c] [datetime] NULL,
	[Attendance_Status_Read_Only__c] [varchar](255) NULL,
	[Comments__c] [varchar](255) NULL,
	[Daily__c] [int] NOT NULL,
	[Date_Time_of_Parental_Notification__c] [datetime] NULL,
	[Departure_Time_Text__c] [varchar](200) NULL,
	[Departure_Time__c] [datetime] NULL,
	[External_Id__c] [varchar](255) NULL,
	[Instructional_Time_Lost__c] [decimal](18, 0) NULL,
	[Internal_Code__c] [varchar](40) NULL,
	[NCES_Status__c] [varchar](255) NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Session_Date__c] [datetime] NULL,
	[Session_End_Time__c] [datetime] NULL,
	[Session_Start_Time__c] [datetime] NULL,
	[Status__c] [varchar](255) NULL,
	[Status_for_Rollup__c] [varchar](100) NULL,
	[Student_s_Grade__c] [varchar](255) NULL,
	[Submission_Time__c] [datetime] NULL,
	[Time_Lost_Rollup__c] [decimal](18, 0) NULL,
	[Locked__c] [int] NULL,
	[Status_Category__c] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
