USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_ST_SPMBEH_Demographics]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [dbo].[vw_ST_SPMBEH_Demographics] as

select * from
(select 
	[Student_Name], 
	student_school_name, 
	cych_Accnt_SF_ID, 
	Student_SF_ID, 
	max(student_ia_att) as student_ia_att, 
	max(Student_IA_Beh) as Student_IA_Beh, 
	max(Student_IA_ELA) as Student_IA_ELA, 
	max(Student_IA_Math) as Student_IA_Math,  
	max(Student_TTL_IAs_Assigned) as Student_TTL_IA_Assigned, 
	Section_IA,
	Program_Description,
	student_gender, 
	student_ethnicity, 
	student_ell, 
	Student_IEP,
	student_grade, 
	cy_student_id,
	Student_District_ID, 
	DN_Indicator,
	SchoolType,
	CYCH_SchoolID,
	Intervention_Corps_Member,
	Intervention_Corps_Member_ID,
	Business_Unit,
	TeamName,
	TeamDescription,
	Section_Primary_Staff,
	Section_Primary_Staff_ID,
	max(afterschoolpart) as afterschoolpart,
	MAX(ENROLLED_BEHAVIOR) AS ENROLLED_BEHAVIOR
from
(select *,
	case when program_description in ('Enrichment', 'Homework Assistance', 'Starfish Corps', 'Afterschool Heroes') then 1 else null end as AfterSchoolPart,
	case when section_ia = 'Behavior' then 1 else null end as ENROLLED_BEHAVIOR

FROM [SDW_Stage_Prod].[dbo].[vw_Intervention_final] where student_ia_beh=1) a 
group by student_name, student_gender, student_ethnicity, student_ell, student_grade, cy_student_id, student_school_name, cych_Accnt_SF_ID, Student_SF_ID,Section_IA,Program_Description,
	student_gender, 
	student_ethnicity, 
	student_ell, 
	Student_IEP,
	student_grade, 
	cy_student_id,
	Student_District_ID, 
	DN_Indicator,
	SchoolType,
	CYCH_SchoolID,
	Intervention_Corps_Member,
	Intervention_Corps_Member_ID,
	Business_Unit,
	TeamName,
	TeamDescription,
	Section_Primary_Staff,
	Section_Primary_Staff_ID) B
WHERE ENROLLED_BEHAVIOR = 1





GO
