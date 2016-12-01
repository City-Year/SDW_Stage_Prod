USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[SR_ST_Attendance_Suspensions]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SR_ST_Attendance_Suspensions](
	[student_sf_id] [varchar](18) NOT NULL,
	[cych_Accnt_SF_ID] [varchar](20) NULL,
	[Assessment_Name_ATT] [varchar](1300) NULL,
	[Average_Daily_Attendance__c] [decimal](18, 3) NULL,
	[Assessment_Name_SUS] [varchar](1300) NULL,
	[Number_of_Suspensions__c] [decimal](18, 1) NULL,
	[Number_of_Detentions__c] [decimal](18, 1) NULL,
	[Number_of_Office_Referrals__c] [decimal](18, 1) NULL,
	[Quarter] [varchar](250) NULL,
	[Date_Administered__c] [datetime] NULL,
	[cysch_accnt_sf_id] [varchar](18) NULL,
	[SUSPENSION_IND] [int] NULL,
	[DETENTION_IND] [int] NULL,
	[OFFICEREFERRAL_IND] [int] NULL
) ON [Crystal_Reports_Student_Report]

GO
