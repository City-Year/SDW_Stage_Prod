USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_ST_Attendance_Suspensions]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[vw_ST_Attendance_Suspensions] as

SELECT DISTINCT 
	   [student_sf_id]
      ,[cych_Accnt_SF_ID]
      ,[Assessment_Name_att]
	   ,[Assessment_Name_SUS]
      ,[Average_Daily_Attendance]
       ,[Number_of_Suspensions]
	   ,[Number_of_Detentions]
      ,[Number_of_Office_Referrals]
      ,[Quarter]
      ,[Date_Administered]
      ,[cysch_accnt_sf_id]
      ,[SUSPENSION_IND]
	  ,[DETENTION_IND]
      ,[OFFICEREFERRAL_IND]
  FROM [SDW_Stage_Prod].[dbo].[ATTENDANCE_AND_SUSPENSIONS]






GO
