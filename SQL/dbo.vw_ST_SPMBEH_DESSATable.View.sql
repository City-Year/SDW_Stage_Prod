USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_ST_SPMBEH_DESSATable]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE VIEW [dbo].[vw_ST_SPMBEH_DESSATable] as
SELECT B.*, C.SECTION_IA
FROM
(SELECT a.* from
(Select 
	student__c, 
	STUDENT_IA_BEH,
	date_administered__c, 
	ASSESSMENT_NAME, 
	student_name,  
	social_awareness_Description__c, 
	self_management_description__c, 
	self_awareness_description__c, 
	SEL_composite_description__c, 
	relationship_skills_description__c, 
	personal_responsibility_description__c, 
	optimistic_thinking_description__c, 
	goal_directed_behavior_description__c, 
	decision_making_description__c,  
	ROW_NUMBER() OVER (PARTITION BY student__c ORDER BY date_administered__c DESC, ASSESSMENT_NAME ASC) as MOSTRECENT
FROM SDW_STAGE_PROD.DBO.vw_assessement_student_final_WIP
where Assessment_Name = 'DESSA' AND STUDENT_IA_BEH=1) a
where a.mostrecent=1) B
LEFT JOIN
 (select distinct student_sf_id, section_ia 
 from [SDW_Stage_Prod].[dbo].[vw_Intervention_final]
 where section_ia like 'b%') C
 on B.student__C = C.student_sf_id
 where C.section_ia like 'b%' and B.student_ia_beh=1 ;





GO
