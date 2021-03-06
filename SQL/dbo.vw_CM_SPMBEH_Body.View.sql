USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_CM_SPMBEH_Body]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_CM_SPMBEH_Body] as

SELECT DISTINCT 
                         vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff, 
                         vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID, vw_Intervention_final.Student_School_Name, 
                         vw_Intervention_final.cych_Accnt_SF_ID, vw_Intervention_final.Section_IA, vw_Intervention_final.Business_Unit
FROM            vw_Intervention_final LEFT OUTER JOIN
                         vw_Section_Staff_to_Int_Staff_IDs ON vw_Intervention_final.Section_Primary_Staff_ID = vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID
WHERE        (vw_Intervention_final.Section_IA LIKE 'BEH%') AND (vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID IS NOT NULL)




GO
