USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Intervention_final_BK]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vw_Intervention_final_BK]
AS
SELECT Distinct        a.Amount_of_Time__c AS Session_Dossage
				, a.Intervention_Session_Date__c AS Session_Date
				, d.Id AS Session_ID
				, e.Student_Name
				, e.Student_First
				, e.Student_Last
				, e.Student_IA_Att
				, e.Student_IA_Beh
				, e.Student_IA_ELA
				, e.Student_IA_Math
				, e.Student_TTL_IAs_Assigned
				, c.Indicator_Area__c AS Section_IA
				, c.Auto_Name__c AS Section_Name
				, j.Name AS Program_Description
				, d.Skills_Covered_for_the_Session__c AS Session_Skills
				, e.Student_Gender
				, e.Student_Ethnicity
				, e.Student_ELL
				, e.Student_Grade
				, e.Student_DOB
				, e.Student_District_ID
				, e.Student_School_Year
				, e.CY_Student_ID
				, e.Student_School_Name
				, e.cysch_Accnt_SF_ID
				, e.cych_Accnt_SF_ID
				, ISNULL(i.IS_DIPLOMAS_NOW_SCHOOL, '0') AS DN_Indicator
                , i.CYCHANNEL_ACCOUNT_NUMBER AS CYCH_SchoolID
                , e.Student_SF_ID
                , f.Name AS Intervention_Corps_Member
                , g.StaffEmail
                , f.Id AS Intervention_Corps_Member_ID
                , f.Site__c AS Business_Unit
                , g.TeamName
                , g.TeamDescription
                , 'N/A' AS MarkingPeriod
                , CASE WHEN isnull(c.Auto_Name__c, '') LIKE '%ELA%' THEN 'ELA/Literacy' 
					   WHEN isnull(c.Auto_Name__c, '') LIKE '%ADA%' THEN 'Attendance'
					   WHEN isnull(c.Auto_Name__c, '') LIKE '%Math%' THEN 'Math' ELSE 'N/A' 
					   END AS Assignment_Subject
				,k.name as Section_Primary_Staff
				,k.ID as Section_Primary_Staff_ID
FROM            dbo.vw_Student_Information AS e LEFT OUTER JOIN
                         dbo.Student_Section__c AS b WITH (nolock) ON b.Student__c = e.Student_SF_ID LEFT OUTER JOIN
                         dbo.Intervention_Session_Result__c AS a WITH (nolock) ON b.Id = a.Student_Section__c LEFT OUTER JOIN
                         dbo.Section__c AS c WITH (nolock) ON b.Section__c = c.Id LEFT OUTER JOIN
                         dbo.Intervention_Session__c AS d WITH (nolock) ON a.Intervention_Session__c = d.Id LEFT OUTER JOIN
                         dbo.Staff__c AS f WITH (nolock) ON d.Session_Time_Completed_For__c = f.Id LEFT OUTER JOIN
                         dbo.vw_Staff_Team_Info AS g WITH (nolock) ON f.Id = g.Id LEFT OUTER JOIN
                         dbo.Account AS h WITH (nolock) ON e.Student_School_Name = h.Name LEFT OUTER JOIN
                         dbo.School_DN_Indicator AS i WITH (nolock) ON h.Legacy_ID__c = i.SFDC_ACCT_ID INNER JOIN
                         dbo.vw_Flat_Progs_from_Account_Prog AS j WITH (NOLOCK) ON c.Program__c = j.Program__c LEFT OUTER JOIN
						 dbo.Staff__c AS k ON c.[Intervention_Primary_Staff__c] = k.id
WHERE        (c.RecordTypeId = '0121a000000VC6RAAW')




GO
