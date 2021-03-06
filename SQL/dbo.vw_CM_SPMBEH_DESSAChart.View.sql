USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_CM_SPMBEH_DESSAChart]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[vw_CM_SPMBEH_DESSAChart] as

SELECT        A.Student__c, A.Student_Name, A.Assessment_Name, A.Date_Administered__c, A.SEL_Composite_T_Score__c, 
                         vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff, 
                         vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID, B.cych_Accnt_SF_ID, DATEADD(month, DATEDIFF(month, 0, 
                         A.Date_Administered__c), 0) AS Month_Administered
FROM            vw_Section_Staff_to_Int_Staff_IDs RIGHT OUTER JOIN
                             (SELECT DISTINCT Section_Primary_Staff, Section_Primary_Staff_ID, cych_Accnt_SF_ID, Student_SF_ID
                               FROM            vw_Intervention_final
                               WHERE        (Section_Primary_Staff_ID IS NOT NULL) AND (Section_IA LIKE 'BEH%')) AS B ON 
                         vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID = B.Section_Primary_Staff_ID LEFT OUTER JOIN
                         vw_Assessement_Student_final_WIP AS A ON B.Student_SF_ID = A.Student__c
WHERE        (A.Assessment_Name = 'DESSA') AND (A.Student_IA_Beh = 1) and vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID IS NOT NULL





GO
