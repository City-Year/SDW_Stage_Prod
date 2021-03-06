USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Enrollment_Tracking__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment_Tracking__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[Active__c] [int] NOT NULL,
	[Current_Record__c] [int] NOT NULL,
	[End_Date__c] [datetime] NULL,
	[Exit_Comments__c] [varchar](1300) NULL,
	[Exit_Reason__c] [varchar](255) NULL,
	[Reference_Id__c] [varchar](255) NULL,
	[Start_Date__c] [datetime] NULL,
	[Student_Section__c] [varchar](18) NULL,
	[Student__c] [varchar](18) NULL
) ON [PRIMARY]

GO
