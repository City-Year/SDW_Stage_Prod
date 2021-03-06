USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_SPM_BEH_Req2]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













CREATE VIEW [dbo].[vw_SPM_BEH_Req2] as

SELECT A.Student_Name, 
			A.Student_School_Name, 
			A.Date_Administered__c, 
			ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC)  AS Assessment_Administration_Number,
			CASE 
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 1 THEN '1st Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 2 THEN '2nd Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 3 THEN '3rd Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 4 THEN '4th Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 5 THEN '5th Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 6 THEN '6th Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 7 THEN '7th Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 8 THEN '8th Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 9 THEN '9th Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 10 THEN '10th Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 11 THEN '11th Administration'
				WHEN ROW_NUMBER() OVER (PARTITION BY A.student_SF_ID ORDER BY A.date_administered__c ASC) = 12 THEN '12th Administration'
			END AS ASSESSMENT_ADMINISTRATION_TEXT,
			A.SEL_Composite_Description__c, 
			A.SEL_Composite_T_Score__c,
			A.Decision_Making_Description__c,
			A.Decision_Making_T_Score__c,
			A.Goal_directed_Behavior_Description__c,
			A.Goal_directed_Behavior_T_Score__c,
			A.Optimistic_Thinking_Description__c,
			A.Optimistic_Thinking_T_Score__c,
			A.Personal_Responsibility_Description__c,
			A.Personal_Responsibility_T_Score__c,
			A.Relationship_Skills_Description__c,
			A.Relationship_Skills_T_Score__c,
			A.Self_Awareness_Description__c,
			A.Self_Awareness_T_Score__c,
			A.Self_Management_Description__c,
			A.Self_Management_T_Score__c,
			A.Social_Awareness_Description__c,
			A.Social_Awareness_T_Score__c,
			A.Assessment_name,
			A.student_SF_ID,
			A.cych_Accnt_SF_ID,
			B.Subtype__c as SchoolType,
			CASE
				When D.Diplomas_Now_School_Partnership__c = 0 Then 'WSWC'
				Else 'DN'
			END AS DNType,
			C.Section_Primary_Staff,
			C.Section_Primary_Staff_ID,
			C.Intervention_Corps_Member,
			C.Intervention_Corps_Member_ID, 
			C.Program_Description,
			--E.afterschoolpart,
			A.Student_IA_Att,
			A.Student_IA_Beh,
			A.Student_IA_ELA,
			A.Student_IA_Math,
			A.Student_TTL_IAs_Assigned,
			A.Student_Gender,
			A.Student_Ethnicity,
			A.Student_ELL,
			C.Student_IEP,
			A.Student_Grade,
			A.Student_District_ID,
			A.CY_Student_ID
			
		FROM SDW_STAGE_PROD.DBO.VW_ASSESSEMENT_STUDENT_FINAL_WIP A
		inner join [ODW_Stage].[dbo].[Account] B on cych_Accnt_SF_ID = B.Id
		left join (SELECT DISTINCT	
									vw_Intervention_final.Program_Description,
									vw_Intervention_final.Student_SF_ID,
									vw_Intervention_final.Student_District_ID,
									vw_Intervention_final.CY_Student_ID,
									vw_Intervention_final.Student_IEP,
									vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff, 
									vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID,
									vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member,
									vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID
									FROM SDW_STAGE_PROD.DBO.vw_Section_Staff_to_Int_Staff_IDs 
										 RIGHT OUTER JOIN SDW_STAGE_PROD.DBO.vw_Intervention_final ON vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID = vw_Intervention_final.Section_Primary_Staff_ID
									WHERE (vw_Intervention_final.Section_IA = 'BEHAVIOR') AND 
										  (vw_Intervention_final.Student_IA_Beh = 1) AND 
										  (vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID IS NOT NULL)) C
					ON A.student_SF_ID = C.Student_SF_ID
		inner join [ODW_Stage].[dbo].[Opportunity_Full] D on A.cych_Accnt_SF_ID = D.AccountId
		--inner join [SDW_Stage_Prod].[dbo].[SR_ST_SPMBEH_Demographics] E on A.student_SF_ID = E.Student_SF_ID
		WHERE A.ASSESSMENT_NAME = 'DESSA' and A.student_ia_beh=1 and D.RecordTypeId ='012U00000000vWcIAI' and D.Partnership_Year__c = '2015-2016'
		
















GO
