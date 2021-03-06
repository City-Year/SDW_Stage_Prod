USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_CMSCH_SPMBEH_Demographics]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [dbo].[vw_CMSCH_SPMBEH_Demographics] as

select B.*, c.Section_Primary_Staff, c.section_primary_staff_id
from
(select 
	[Student_Name], 
	student_school_name, 
	cych_Accnt_SF_ID, 
	Student_SF_ID, 
	max(student_ia_att) as student_ia_att, 
	max(Student_IA_Beh) as Student_IA_Beh, 
	max(Student_IA_ELA) as Student_IA_ELA, 
	max(Student_IA_Math) as Student_IA_Math,  
	student_gender, 
	student_ethnicity, 
	student_ell, 
	student_grade, 
	cy_student_id, max(afterschoolpart) as afterschoolpart,
	MAX(ENROLLED_BEHAVIOR) AS ENROLLED_BEHAVIOR
from
(select *,
	case when program_description in ('Enrichment', 'Homework Assistance', 'Starfish Corps', 'Afterschool Heroes') then 1 else null end as AfterSchoolPart,
	CASE WHEN SECTION_IA LIKE 'BEH%' THEN 1 ELSE NULL END AS ENROLLED_BEHAVIOR
FROM [SDW_Stage_Prod].[dbo].[vw_Intervention_final] WHERE STUDENT_IA_BEH=1) a
group by student_name, student_gender, student_ethnicity, student_ell, student_grade, cy_student_id, student_school_name, cych_Accnt_SF_ID, Student_SF_ID) b
LEFT JOIN 
(SELECT DISTINCT 
			vw_Intervention_final.cych_Accnt_SF_ID, vw_Intervention_final.Student_SF_ID, vw_Intervention_final.Section_IA, 
			vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID, 
			vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff
FROM        vw_Section_Staff_to_Int_Staff_IDs RIGHT OUTER JOIN
            vw_Intervention_final ON vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID = vw_Intervention_final.Section_Primary_Staff_ID
WHERE        (vw_Intervention_final.Section_IA = 'BEHAVIOR') AND (vw_Intervention_final.Student_IA_Beh = 1) AND 
                         (vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID IS NOT NULL)) C
ON C.STUDENT_SF_ID=B.STUDENT_SF_ID
WHERE B.ENROLLED_BEHAVIOR=1 AND B.STUDENT_IA_BEH=1








GO
