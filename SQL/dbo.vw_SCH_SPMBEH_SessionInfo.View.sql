USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_SCH_SPMBEH_SessionInfo]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














CREATE VIEW [dbo].[vw_SCH_SPMBEH_SessionInfo] as

select b.*, e.AVGSessionDosage6wks, e.STUDENTSPERSESSION6wks,
case 
	when E.program_description = 'SEL CHECK IN CHECK OUT' THEN (TOTALSTUDENTS*12) 
	WHEN E.PROGRAM_DESCRIPTION LIKE '50 ACTS%' THEN (TOTALSECTIONS*6) END AS EXPECTED_SESSIONS 
from
	(SELECT 
		program_description,
		cych_accnt_sf_id,
		Section_Primary_Staff,
		Section_Primary_Staff_ID,
		business_unit,
		student_school_name,
		COUNT(DISTINCT STUDENT_SF_ID) AS TOTALSTUDENTS, 
		COUNT(DISTINCT(CASE WHEN SESSION_DATE >=(GETDATE()-42) THEN SESSION_ID END)) AS TOTALSESSIONS6WK, 
		COUNT(DISTINCT(CASE WHEN SESSION_DATE>=(GETDATE()-42) THEN STUDENT_SF_ID END)) AS TOTALSTUDENTS6WK,
		COUNT(DISTINCT SECTION_NAME) AS TOTALSECTIONS
	FROM
		(SELECT distinct 
			program_description,
			Section_Name,
			cych_accnt_sf_id,
			session_id, 
			SESSION_DATE,
			Student_SF_ID, 
			business_unit,
			student_school_name,
			 SDW_STAGE_PROD.DBO.vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff, 
                        SDW_STAGE_PROD.DBO. vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID
		FROM SDW_STAGE_PROD.DBO.vw_Intervention_final intfinal
		LEFT OUTER JOIN
                         SDW_STAGE_PROD.DBO.vw_Section_Staff_to_Int_Staff_IDs ON intfinal.Section_Primary_Staff_ID = SDW_STAGE_PROD.DBO.vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID
						 where intfinal.section_ia like 'beh%' and intfinal.student_ia_beh=1) a
		group by business_unit, student_school_name, section_primary_staff_id, program_description, cych_accnt_sf_id, section_primary_staff) b
		INNER JOIN
			(SELECT	
				PROGRAM_DESCRIPTION,
				cych_accnt_sf_id,
				Section_Primary_Staff,
				Section_Primary_Staff_ID,
				AVG(SESSION_DOSSAGE) AS AVGSessionDosage6wks,
				AVG(STUDENTSPERSESSION) AS STUDENTSPERSESSION6wks
				FROM
					(select
						PROGRAM_DESCRIPTION,
						cych_accnt_sf_id,
						session_id,
						COUNT(student_sf_id) AS STUDENTSPERSESSION,
						Section_Primary_Staff,
						Section_Primary_Staff_ID,
						MAX(session_dossage) AS SESSION_DOSSAGE
						FROM
							(SELECT * FROM SDW_STAGE_PROD.DBO.vw_ST_SPMBEH_IntSessions) C
							GROUP BY Section_Primary_Staff_ID, cych_accnt_sf_id, Section_Primary_Staff, SESSION_ID, PROGRAM_DESCRIPTION) D
							GROUP BY Section_Primary_Staff_ID, cych_accnt_sf_id, Section_Primary_Staff, PROGRAM_DESCRIPTION) E
			ON B.Section_Primary_Staff_ID = E.Section_Primary_Staff_ID and b.cych_accnt_sf_id=e.cych_accnt_sf_id
				and b.program_description=e.program_description
				














GO
