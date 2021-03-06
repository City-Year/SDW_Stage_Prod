USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_PowerBI_SPMBEH_DOSAGE]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE VIEW [dbo].[vw_PowerBI_SPMBEH_DOSAGE] as

with AfterschoolParticipants(student_sf_ID,student_name,AfterSchoolPart)
AS
(select distinct 
student_sf_ID,
student_name,
case when program_description in ('Enrichment', 'Homework Assistance', 'Starfish Corps', 'Afterschool Heroes') then 1 else null end as AfterSchoolPart
FROM [SDW_Stage_Prod].[dbo].[vw_Intervention_final] where student_ia_beh=1 and program_description in ('Enrichment', 'Homework Assistance', 'Starfish Corps', 'Afterschool Heroes')),

TotalbyMonth(student_sf_id, Session_Date_Month, Total_Dosage_by_Month)
AS 
(select student_sf_id, DATEADD(MONTH, DATEDIFF(MONTH, 0, session_date), 0) as Session_Date_Month
	   ,sum(session_dossage) as Total_Dosage_by_Month
FROM [SDW_Stage_Prod].[dbo].vw_Intervention_final 
where (vw_Intervention_final.Section_IA LIKE 'beh%') AND (vw_Intervention_final.Student_IA_Beh = 1) AND business_unit is not null and section_ia like 'beh%' AND STUDENT_IA_BEH=1 
group by DATEADD(MONTH, DATEDIFF(MONTH, 0, session_date), 0), student_sf_id),

RunningTotalbyMonth (student_sf_id, Session_Date_Month, Total_Dosage_by_Month, Running_Monthly_Dosage)
AS
(Select	[student_sf_id]
		,Session_Date_Month
		,Total_Dosage_by_Month
		,SUM(Total_Dosage_by_Month) OVER (partition BY student_sf_id ORDER BY student_sf_id, Session_Date_Month ASC) Running_Monthly_Dosage
FROM TotalbyMonth) 

SELECT vw_Intervention_final.Session_Dossage
		, vw_Intervention_final.Session_Date
		, vw_Intervention_final.Session_ID
		, vw_Intervention_final.Session_Result_ID
		, vw_Intervention_final.Student_Name
		, vw_Intervention_final.Student_IA_Beh
		, vw_Intervention_final.Section_IA
		, vw_Intervention_final.Program_Description
		, vw_Intervention_final.Session_Skills
		, vw_Intervention_final.CY_Student_ID
		, vw_Intervention_final.cych_Accnt_SF_ID
		, vw_Intervention_final.cysch_Accnt_SF_ID
		, vw_Intervention_final.Student_School_Name
		, vw_Intervention_final.Student_SF_ID
		, vw_Intervention_final.Intervention_Corps_Member
		, vw_Intervention_final.Intervention_Corps_Member_ID
		, vw_Intervention_final.Business_Unit
		, vw_Intervention_final.Student_Gender
		, vw_Intervention_final.Student_Ethnicity
		, vw_Intervention_final.Student_ELL
		, vw_Intervention_final.Student_IEP
		, vw_Intervention_final.Student_Grade
		, vw_Intervention_final.SchoolType
		, vw_Intervention_final.DN_Indicator
		, vw_Intervention_final.StaffEmail
		, vw_Intervention_final.TeamName
		, vw_Intervention_final.TeamDescription
		, vw_Intervention_final.Student_IA_Att
		, vw_Intervention_final.Student_IA_ELA
		, vw_Intervention_final.Student_IA_Math
		, vw_Intervention_final.Student_TTL_IAs_Assigned
		, b.afterschoolpart
		, vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff
        , vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID
		, substring(SESSION_SKILLS, 1, case when CHARINDEX(',', session_SKILLS)> 0 then charindex(',', session_skills)-1 else len(session_skills) end) AS PRIMARYSKILL 
		, substring((substring(SESSION_SKILLS, 1, case when CHARINDEX(',', session_SKILLS)> 0 then charindex(',', session_skills)-1 else len(session_skills) end)), 1, CASE WHEN CHARINDEX(':', (substring(SESSION_SKILLS, 1, case when CHARINDEX(',', session_SKILLS)> 0 then charindex(',', session_skills)-1 else len(session_skills) end)))>0 THEN CHARINDEX(':', (substring(SESSION_SKILLS, 1, case when CHARINDEX(',', session_SKILLS)> 0 then charindex(',', session_skills)-1 else len(session_skills) end)))-1 ELSE LEN(substring(SESSION_SKILLS, 1, case when CHARINDEX(',', session_SKILLS)> 0 then charindex(',', session_skills)-1 else len(session_skills) end)) END) AS ABBREV_SESSIONSKILL
		, SUBSTRING(substring(SESSION_SKILLS, 1, case when CHARINDEX(',', session_SKILLS)> 0 then charindex(',', session_skills)-1 else len(session_skills) END), CHARINDEX(':', SESSION_SKILLS)+2, LEN(SESSION_SKILLS)) AS APPEND 
		, a.Running_Monthly_Dosage
		, dateadd(month, datediff(month, 0, vw_Intervention_final.Session_Date),0) as Session_Date_Month
FROM            SDW_Stage_Prod.dbo.vw_Intervention_final 
LEFT OUTER JOIN SDW_Stage_Prod.dbo.vw_Section_Staff_to_Int_Staff_IDs ON vw_Intervention_final.Section_Primary_Staff_ID = vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID 
LEFT OUTER JOIN AfterschoolParticipants b on vw_Intervention_final.student_SF_ID = b.student_SF_ID
LEFT OUTER JOIN RunningTotalbyMonth a ON vw_Intervention_final.Student_SF_ID = a.Student_SF_ID and dateadd(month, datediff(month, 0, vw_Intervention_final.Session_Date),0) = a.Session_Date_Month
WHERE   (vw_Intervention_final.Section_IA LIKE 'beh%') AND (vw_Intervention_final.Student_IA_Beh = 1) AND vw_Intervention_final.business_unit is not null and vw_Intervention_final.section_ia like 'beh%' 
--AND vw_Intervention_final.STUDENT_IA_BEH=1 and SESSION_SKILLS NOT IN ('Other', 'Homework Assistance', 'Enrichment Activity', 'Other Attendance skill not listed')  




GO
