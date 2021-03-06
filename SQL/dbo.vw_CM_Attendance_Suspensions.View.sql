USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_CM_Attendance_Suspensions]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













CREATE VIEW [dbo].[vw_CM_Attendance_Suspensions] as

SELECT 
      AVG(cast(NULLIF([Average_Daily_Attendance],'') as numeric(4,3))) AS AVG_AVERAGE_DAILY_ATTENDANCE,
	  (SUM(CASE WHEN SUSPENSION_IND=1 THEN 1 when suspension_ind=0 then 0 else null END)*1.0)/NULLIF(SUM(CASE WHEN Number_of_Suspensions IS NOT NULL THEN 1 END), 0) AS PERC_SUSPENSION,
	  (SUM(CASE WHEN DETENTION_IND=1 THEN 1 when detention_ind=0 then 0 else null END)*1.0)/NULLIF(SUM(CASE WHEN Number_of_Detentions IS NOT NULL THEN 1 END), 0) AS PERC_DETENTION,
	  (SUM(CASE WHEN OFFICEREFERRAL_IND=1 THEN 1 when officereferral_ind=0 then 0 else null END)*1.0)/NULLIF(SUM(CASE WHEN Number_of_Office_Referrals IS NOT NULL THEN 1 END), 0) AS PERC_OFFICEREFERRAL,
      [cych_accnt_sf_id],
	  Section_Primary_Staff,
	  Section_Primary_Staff_ID,
	  QUARTER
  FROM [SDW_Stage_Prod].[dbo].[ATTENDANCE_AND_SUSPENSIONS]
  GROUP BY Section_Primary_Staff, Section_Primary_Staff_ID, CYCH_ACCNT_SF_ID, QUARTER










GO
