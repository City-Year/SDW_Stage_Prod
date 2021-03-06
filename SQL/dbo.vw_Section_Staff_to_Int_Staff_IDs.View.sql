USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Section_Staff_to_Int_Staff_IDs]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE VIEW [dbo].[vw_Section_Staff_to_Int_Staff_IDs] AS

SELECT DISTINCT 
                         vw_Intervention_final.Section_Primary_Staff_ID, vw_Intervention_final.Section_Primary_Staff, Staff__c.Individual__c, 
                         vw_Staff_Team_Info.Id AS Intervention_Corps_Member_ID, vw_Staff_Team_Info.Staff_Name AS Intervention_Corps_Member, Staff__c_1.Reference_Id__c, 
                         Staff__c_1.Active__c
FROM            Staff__c AS Staff__c_1 LEFT OUTER JOIN
                         vw_Staff_Team_Info ON Staff__c_1.Id = vw_Staff_Team_Info.Id RIGHT OUTER JOIN
                         Staff__c ON Staff__c_1.Individual__c = Staff__c.Individual__c RIGHT OUTER JOIN
                         vw_Intervention_final ON Staff__c.Id = vw_Intervention_final.Section_Primary_Staff_ID
WHERE        (vw_Staff_Team_Info.TeamName IS NOT NULL) AND (Staff__c.Active__c = 1) AND 
                         (Staff__c_1.Active__c = 1)











GO
