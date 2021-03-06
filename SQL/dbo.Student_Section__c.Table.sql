USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Student_Section__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Section__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Section__c] [varchar](18) NOT NULL,
	[Active__c] [int] NOT NULL,
	[Alternate_Lang_Comments__c] [varchar](255) NULL,
	[Archived__c] [int] NOT NULL,
	[Enrollment_End_Date__c] [datetime] NULL,
	[Enrollment_Start_Date__c] [datetime] NULL,
	[External_Id__c] [varchar](255) NULL,
	[Goal__c] [decimal](18, 0) NULL,
	[Holding_Source__c] [varchar](18) NULL,
	[Reference_ID__c] [varchar](255) NULL,
	[Section_Attendance_Flag__c] [varchar](1300) NULL,
	[Student__c] [varchar](18) NULL,
	[of_Late_Homework__c] [decimal](18, 0) NULL,
	[of_Missing_Homework__c] [decimal](18, 0) NULL,
	[Average_Section_Grade__c] [decimal](18, 0) NULL,
	[Count_Section_Grades__c] [decimal](18, 0) NULL,
	[Total_Grade_Value__c] [decimal](5, 2) NULL,
	[Failing__c] [varchar](1300) NULL,
	[Section_Period__c] [varchar](1300) NULL,
	[Intervention_Enrollment_Start_Date__c] [datetime] NULL,
	[School__c] [varchar](1300) NULL,
	[Student_Grade__c] [varchar](1300) NULL,
	[Student_Name__c] [varchar](1300) NULL,
	[Dosage_to_Date__c] [decimal](18, 0) NULL,
	[Section_Exit_Reason__c] [varchar](255) NULL,
	[Location__c] [varchar](1300) NULL,
	[Local_Student_ID__c] [varchar](1300) NULL,
	[Dosage_to_Date_hrs__c] [varchar](18) NULL
) ON [PRIMARY]

GO
