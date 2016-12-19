USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_ST_SPMBEH_Body]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE  VIEW [dbo].[vw_ST_SPMBEH_Body] as

with AfterschoolParticipants(student_sf_ID,student_name,AfterSchoolPart)
AS
(select distinct 
student_sf_ID,
student_name,
case when program_description in ('Enrichment', 'Homework Assistance', 'Starfish Corps', 'Afterschool Heroes') then 1 else null end as AfterSchoolPart
FROM [SDW_Stage_Prod].[dbo].[vw_Intervention_final] where student_ia_beh=1 and program_description in ('Enrichment', 'Homework Assistance', 'Starfish Corps', 'Afterschool Heroes'))


select a.*, b.section_ia, b.Section_Primary_Staff_ID, b.Section_Primary_Staff, b.Student_IEP, b.DN_Indicator ,b.SchoolType
	  ,b.TeamName,b.TeamDescription, b.Program_Description, c.AfterSchoolPart
from
(Select 
[Student_Name]
      ,[Student_IA_Att]
      ,[Student_IA_Beh]
      ,[Student_IA_ELA]
      ,[Student_IA_Math]
      ,[Student_TTL_IAs_Assigned]
      ,[Student_Gender]
      ,[Student_Ethnicity]
      ,[Student_ELL]
      ,[Student_Grade]
      ,[Student_DOB]
      ,[Student_District_ID]
      ,[Student_School_Year]
      ,[CY_Student_ID]
      ,[Student_School_Name]
      ,[Business_Unit]
      ,[Student_SF_ID]
      ,[cysch_Accnt_SF_ID]
      ,[cych_Accnt_SF_ID]
      ,[legacy_key1__c]
 from sdw_stage_prod.dbo.vw_student_information where student_ia_beh=1) a
 left join (SELECT DISTINCT	
							vw_Intervention_final.Student_IEP, 
							vw_Intervention_final.DN_Indicator,
							vw_Intervention_final.SchoolType,
							vw_Intervention_final.TeamName,
							vw_Intervention_final.TeamDescription,
							vw_Intervention_final.Student_SF_ID,
							vw_Intervention_final.section_ia,
							vw_Intervention_final.Program_Description,
							vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID, 
							vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff
							FROM SDW_STAGE_PROD.DBO.vw_Section_Staff_to_Int_Staff_IDs 
									RIGHT OUTER JOIN SDW_STAGE_PROD.DBO.vw_Intervention_final ON vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID = vw_Intervention_final.Section_Primary_Staff_ID
							WHERE (vw_Intervention_final.Section_IA = 'BEHAVIOR') AND 
									(vw_Intervention_final.Student_IA_Beh = 1) AND 
									(vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID IS NOT NULL)) b
			ON a.student_SF_ID = b.Student_SF_ID
left join AfterschoolParticipants c on a.student_SF_ID = c.student_SF_ID









GO
