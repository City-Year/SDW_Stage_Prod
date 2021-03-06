USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_ST_SPMBEH_DESSAChart]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vw_ST_SPMBEH_DESSAChart] as
SELECT B.*, C.SECTION_IA FROM
(SELECT 
	a.student__c, 
	A.STUDENT_IA_BEH,
	a.Date_Administered__c, 
	a.Assessment_Name, 
	a.Decision_Making_T_Score__c, 
	a.Goal_directed_Behavior_T_Score__c, 
	a.Optimistic_Thinking_T_Score__c, 
	a.Personal_Responsibility_T_Score__c, 
	a.Relationship_Skills_T_Score__c,
	a.SEL_Composite_T_Score__c, 
	a.Self_Awareness_T_Score__c, 
	a.Self_Management_T_Score__c, 
	a.Social_Awareness_T_Score__c, 
	dateadd(month, datediff(month, 0, date_administered__c),0) as Month_Administered 
FROM SDW_STAGE_PROD.DBO.vw_assessement_student_final_wip A 
where a.Assessment_Name = 'DESSA' and student_ia_beh=1) B
LEFT JOIN
 (select distinct student_sf_id, section_ia 
 from [SDW_Stage_Prod].[dbo].[vw_Intervention_final]
 where section_ia like 'b%') C
 on B.student__C = C.student_sf_id
 where C.section_ia like 'b%' and B.student_ia_beh=1 ;




GO
