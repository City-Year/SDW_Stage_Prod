USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Attendance_Tracking__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance_Tracking__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Admin_Notifications_cons__c] [varchar](255) NULL,
	[Admin_Notifications_cuml__c] [varchar](255) NULL,
	[Consecutive__c] [decimal](3, 0) NULL,
	[Cumulative__c] [decimal](3, 0) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Key__c] [varchar](40) NULL,
	[Minutes_Lost__c] [decimal](5, 0) NULL,
	[Notification__c] [varchar](18) NULL,
	[Old_Consecutive_Value__c] [decimal](18, 0) NULL,
	[Parental_Notification_Required__c] [varchar](255) NULL,
	[Picklist_Value__c] [varchar](18) NULL,
	[Requires_Processing__c] [varchar](255) NULL,
	[School_Name__c] [varchar](255) NULL,
	[Status__c] [varchar](40) NULL,
	[Student__c] [varchar](18) NULL
) ON [PRIMARY]

GO
