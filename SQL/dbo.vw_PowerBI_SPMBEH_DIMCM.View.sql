USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_PowerBI_SPMBEH_DIMCM]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [dbo].[vw_PowerBI_SPMBEH_DIMCM] as

SELECT distinct 
		  vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID
		, vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff
		, vw_Intervention_final.Student_School_Name
		, vw_Intervention_final.cysch_Accnt_SF_ID
		, vw_Intervention_final.Business_Unit
FROM            SDW_Stage_Prod.dbo.vw_Intervention_final 
LEFT OUTER JOIN SDW_Stage_Prod.dbo.vw_Section_Staff_to_Int_Staff_IDs ON vw_Intervention_final.Section_Primary_Staff_ID = vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID 
WHERE   (vw_Intervention_final.Section_IA LIKE 'beh%') AND (vw_Intervention_final.Student_IA_Beh = 1) AND vw_Intervention_final.business_unit is not null and vw_Intervention_final.section_ia like 'beh%' and vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID is not null






GO
