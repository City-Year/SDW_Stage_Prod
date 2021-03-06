USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_CM_SPMBEH_DESSATable]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE VIEW [dbo].[vw_CM_SPMBEH_DESSATable] as

select a.*, b.Section_Primary_Staff, b.Section_Primary_Staff_ID, b.cych_accnt_sf_id
from
(SELECT student__c, 
	STUDENT_IA_BEH,
	date_administered__c, 
	ASSESSMENT_NAME, 
	student_name, 
	Decision_Making_Description__c, 
	Goal_directed_Behavior_Description__c,
	Optimistic_Thinking_Description__c, 
	Personal_Responsibility_Description__c, 
	Relationship_Skills_Description__c, 
	SEL_Composite_Description__c, 
	Self_Awareness_Description__c, 
	Self_Management_Description__c, 
	Social_Awareness_Description__c,
	ROW_NUMBER() OVER (PARTITION BY student__c ORDER BY date_administered__c DESC, ASSESSMENT_NAME ASC) as MOSTRECENT
FROM SDW_STAGE_PROD.DBO.vw_Assessement_Student_final_WIP 
where student_ia_beh=1 and assessment_name = 'DESSA') A 
RIGHT JOIN
(SELECT DISTINCT 
			vw_Intervention_final.cych_Accnt_SF_ID, vw_Intervention_final.Student_SF_ID, vw_Intervention_final.Section_IA, 
			vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID, 
			vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff
FROM        vw_Section_Staff_to_Int_Staff_IDs RIGHT OUTER JOIN
            vw_Intervention_final ON vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID = vw_Intervention_final.Section_Primary_Staff_ID
WHERE        (vw_Intervention_final.Section_IA = 'BEHAVIOR') AND (vw_Intervention_final.Student_IA_Beh = 1) AND 
                         (vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID IS NOT NULL)) b
on a.student__c=b.student_sf_id 
where mostrecent=1 AND B.SECTION_IA LIKE 'BEH%' AND A.STUDENT_IA_BEH =1








GO
