USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_ST_SPMBEH_IntSessions]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE VIEW [dbo].[vw_ST_SPMBEH_IntSessions] as

SELECT vw_Intervention_final.Session_Dossage, vw_Intervention_final.Session_Date, vw_Intervention_final.Session_ID, vw_Intervention_final.Student_Name, 
                         vw_Intervention_final.Student_IA_Beh, vw_Intervention_final.Section_IA, vw_Intervention_final.Program_Description, vw_Intervention_final.Session_Skills, 
                         vw_Intervention_final.CY_Student_ID, vw_Intervention_final.cych_Accnt_SF_ID, vw_Intervention_final.Student_School_Name, vw_Intervention_final.Student_SF_ID, 
                         vw_Intervention_final.Intervention_Corps_Member, vw_Intervention_final.Intervention_Corps_Member_ID, vw_Intervention_final.Business_Unit, 
                         vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff, 
                         vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID
FROM            vw_Intervention_final LEFT OUTER JOIN
                         vw_Section_Staff_to_Int_Staff_IDs ON vw_Intervention_final.Section_Primary_Staff_ID = vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID
WHERE        (vw_Intervention_final.Section_IA LIKE 'beh%') AND (vw_Intervention_final.Student_IA_Beh = 1) 
                         AND (vw_Intervention_final.Session_Date >= GETDATE() - 42)








GO
