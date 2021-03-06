USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_ATTENDANCE_AND_SUSPENSIONS_BAK]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  VIEW [dbo].[vw_ATTENDANCE_AND_SUSPENSIONS_BAK]
AS
SELECT 
a.student_sf_id,
a.cych_Accnt_SF_ID,
a.Student__c ,
a.Intervention_Corps_Member,
a.Intervention_Corps_Member_ID,
a.Assessment_Name__c AS Assessment_Name_ATT,
a.Average_Daily_Attendance__c,
b.Assessment_Name__c AS Assessment_Name_SUS,
b.Number_of_Suspensions__c,
b.Number_of_Detentions__c,
b.Number_of_Office_Referrals__c,
a.Quarter,
a.Date_Administered__c,
a.cysch_accnt_sf_id,
case when b.Number_of_Suspensions__c	  IS NOT NULL and b.Number_of_Suspensions__c	  <> '0.0' THEN 1 else 0 END as SUSPENSION_IND,
case when b.Number_of_Detentions__c		  IS NOT NULL and b.Number_of_Detentions__c		  <> '0.0' THEN 1 else 0 END as DETENTION_IND,
case when b.Number_of_Office_Referrals__c IS NOT NULL and b.Number_of_Office_Referrals__c <> '0.0' THEN 1 else 0 END as OFFICEREFERRAL_IND
FROM 

vw_AVG_DAILY_ATT a left outer join vw_NUM_OF_SUSPENSIONS b on a.student_sf_id = b.student_sf_id
AND a.cych_accnt_sf_id = b.cych_accnt_sf_id 
AND a.Quarter = b.Quarter


GO
