USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_PowerBI_SPMBEH_DESSADOSAGE]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE VIEW [dbo].[vw_PowerBI_SPMBEH_DESSADOSAGE] as

SELECT A.Student_Name, 
			A.Student_School_Name, 
			convert(datetime,A.Date_Administered__c, 101) as Date_Administered,
			convert(datetime,dateadd(month, datediff(month, 0, A.date_administered__c),0),101) as Month_Administered,
			Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC)  AS Assessment_Administration_Number,
			CASE 
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 1 THEN '1st Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 2 THEN '2nd Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 3 THEN '3rd Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 4 THEN '4th Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 5 THEN '5th Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 6 THEN '6th Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 7 THEN '7th Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 8 THEN '8th Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 9 THEN '9th Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 10 THEN '10th Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 11 THEN '11th Administration'
				WHEN Dense_Rank() OVER (PARTITION BY A.student_SF_ID ORDER BY A.student_SF_ID,A.date_administered__c ASC) = 12 THEN '12th Administration'
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
			A.Student_District_ID,
			F.CY_Student_ID,
			A.cych_Accnt_SF_ID,
			A.cysch_Accnt_SF_ID,
			B.Subtype__c as SchoolType,
			CASE
				When D.Diplomas_Now_School_Partnership__c = 0 Then 'WSWC'
				Else 'DN'
			END AS DNType,
			F.Intervention_Corps_Member,
			F.Intervention_Corps_Member_ID 
			,A.student_ia_att
			,A.Student_IA_Beh
			,A.Student_IA_ELA
			,A.Student_IA_Math
			,A.student_gender
			,A.student_ethnicity
			,A.student_ell
			,F.student_iep
			,A.student_grade
			,case  when F.afterschoolpart = '1' then '1' else '0' end as AfterschoolParticipant
			,F.Session_Dossage 
			,convert(datetime,F.Session_Date,101) as Session_Date
			,F.Session_ID
			,F.Session_Result_ID
			,F.Section_IA
			,F.Running_Monthly_Dosage
			,convert(datetime,dateadd(month, datediff(month, 0, F.Session_Date),0),101) as Session_Date_Month
			,F.Program_Description
			,F.Session_Skills
            ,F.Business_Unit 
            ,substring(F.SESSION_SKILLS, 1, case when CHARINDEX(',', F.session_SKILLS)> 0 then charindex(',', F.session_skills)-1 else len(F.session_skills) end) AS PRIMARYSKILL 
			,substring(F.SESSION_SKILLS, 1, CASE WHEN CHARINDEX(':', F.SESSION_SKILLS)>0 THEN CHARINDEX(':', F.SESSION_SKILLS)-1 ELSE LEN(F.SESSION_sKILLS) END) AS ABBREV_SESSIONSKILL
			,SUBSTRING(substring(F.SESSION_SKILLS, 1, case when CHARINDEX(',', F.session_SKILLS)> 0 then charindex(',', F.session_skills)-1 else len(F.session_skills) END), CHARINDEX(':', F.SESSION_SKILLS)+2, LEN(F.SESSION_SKILLS)) AS APPEND 

		FROM SDW_STAGE_PROD.DBO.VW_ASSESSEMENT_STUDENT_FINAL_WIP A
		inner join [ODW_Stage].[dbo].[Account] B on a.cych_Accnt_SF_ID = B.Id
		--left join (SELECT DISTINCT	
		--							vw_Intervention_final.Student_SF_ID,
		--							vw_Intervention_final.Student_District_ID,
		--							vw_Intervention_final.CY_Student_ID,
		--							vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID, 
		--							vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member
		--							FROM SDW_STAGE_PROD.DBO.vw_Section_Staff_to_Int_Staff_IDs 
		--								 RIGHT OUTER JOIN SDW_STAGE_PROD.DBO.vw_Intervention_final ON vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID = vw_Intervention_final.Section_Primary_Staff_ID
		--							WHERE (vw_Intervention_final.Section_IA = 'BEHAVIOR') AND 
		--								  (vw_Intervention_final.Student_IA_Beh = 1) AND 
		--								  (vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID IS NOT NULL)) C
		--			ON A.student_SF_ID = C.Student_SF_ID
		inner join [ODW_Stage].[dbo].[Opportunity_Full] D on A.cych_Accnt_SF_ID = D.AccountId
		--inner join vw_ST_SPMBEH_Demographics E on A.student_SF_ID = E.Student_SF_ID
		--inner join vw_Intervention_final F on A.student_SF_ID = F.Student_SF_ID
		inner join [SDW_Stage_Prod].[dbo].[vw_PowerBI_SPMBEH_DOSAGE] F on A.student_SF_ID = F.Student_SF_ID
		WHERE A.ASSESSMENT_NAME = 'DESSA' and A.student_ia_beh=1 and D.RecordTypeId ='012U00000000vWcIAI' and D.Partnership_Year__c = '2015-2016' AND
		 (F.Section_IA LIKE 'beh%') AND (F.Student_IA_Beh = 1) AND F.business_unit is not null and SESSION_SKILLS NOT IN ('Other', 'Homework Assistance', 'Enrichment Activity', 'Other Attendance skill not listed')













GO
