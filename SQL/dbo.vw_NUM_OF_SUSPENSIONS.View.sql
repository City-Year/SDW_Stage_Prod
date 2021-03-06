USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_NUM_OF_SUSPENSIONS]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vw_NUM_OF_SUSPENSIONS]
AS
SELECT DISTINCT student_sf_id,
				cych_Accnt_SF_ID,
				Student__c ,
				d.Intervention_Corps_Member AS Section_Primary_Staff,
				d.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID,
				Assessment_Name__c,
				Number_of_Suspensions__c,
				Number_of_Detentions__c,
				Number_of_Office_Referrals__c,
				c.Quarter,
				Date_Administered__c,
				cysch_accnt_sf_id--,
				--[Section_Primary_Staff],
				--[Section_Primary_Staff_ID]
				
FROM  [SDW_Stage_Prod].[dbo].[vw_Intervention_final] a  inner JOIN [SDW_Stage_Prod].[dbo].[Assesment__c] b
														ON a.student_sf_id = b.student__c
														INNER JOIN [SDW_Prod].[dbo].[DimSchoolSetup] c
														ON  a.cysch_accnt_sf_id = c.CYSch_SF_ID
														INNER JOIN [SDW_Stage_Prod].[dbo].vw_Section_Staff_to_Int_Staff_IDs d
														ON a.Section_Primary_Staff_ID = d.Section_Primary_Staff_ID
															
WHERE a.section_ia like 'beh%' 
AND	a.student_ia_Beh = '1' 
AND Number_of_Suspensions__c is not null 
AND Assessment_Name__c = 'Reporting Period Time Based Behavior Tracker - BEHAVIOR'
AND b.Date_Administered__c between c.Start_Date and c.End_Date




GO
