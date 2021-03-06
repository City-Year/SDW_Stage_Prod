USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Session__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Time__c] [varchar](18) NOT NULL,
	[Attendance_Submitted__c] [int] NOT NULL,
	[Daily_Attendance__c] [varchar](1300) NULL,
	[End_DateTime__c] [datetime] NULL,
	[External_Id__c] [varchar](255) NULL,
	[LastModified__c] [varchar](255) NULL,
	[Reason_for_No_Attendance__c] [varchar](255) NULL,
	[Record_Attendance__c] [int] NOT NULL,
	[Reference_Id__c] [varchar](200) NULL,
	[Section__c] [varchar](18) NULL,
	[Session_Date__c] [datetime] NULL,
	[Start_DateTime__c] [datetime] NULL
) ON [PRIMARY]

GO
