USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Intervention_finalBAK]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Intervention_finalBAK]
AS
SELECT a.Amount_of_Time__c AS Session_Dossage
		,a.Intervention_Session_Date__c AS Session_Date
		,d.Id AS Session_ID
		,e.Name AS Student_Name
		,e.Student_First_Name__c AS Student_First
		,e.Student_Last_Name__c AS Student_Last
		,e.Attendance__c AS Student_IA_Att
		,e.Behavior__c AS Student_IA_Beh
		,e.ELA_Literacy__c AS Student_IA_ELA
		,e.Math__c AS Student_IA_Math
		,e.Number_of_Indicator_Areas__c AS Student_TTL_IAs_Assigned
		,c.Indicator_Area__c AS Section_IA
		,c.Auto_Name__c AS Section_Name
		,j.Name AS Program_Description
		,d.Skills_Covered_for_the_Session__c AS Session_Skills
		,b.Dosage_to_Date__c AS Student_Section_DTD
		,e.Gender__c AS Student_Gender
		,e.Ethnicity__c AS Student_Ethnicity
		,e.ELL__c AS Student_ELL
		,e.Grade__c AS Student_Grade
		,e.Date_of_Birth__c AS Student_DOB
		,e.Local_Student_ID__c AS Student_District_ID
		,e.School_Year_Name__c AS Student_School_Year
		,e.Student_Id__c AS CY_Student_ID
		,e.School_Name__c AS Student_School_Name
		,h.Id as cysch_Accnt_SF_ID 
		,h.Legacy_ID__c as cych_Accnt_SF_ID
		,i.IS_DIPLOMAS_NOW_SCHOOL as DN_Indicator
		,CYCHANNEL_ACCOUNT_NUMBER AS CYCH_SchoolID
		,e.Id AS Student_SF_ID
		,f.Name AS Intervention_Corps_Member
		,g.StaffEmail 
		,f.Id AS Intervention_Corps_Member_ID
		,f.Site__c AS Business_Unit
		,g.TeamName
		,g.TeamDescription
		,'N/A' AS MarkingPeriod
		
FROM         dbo.Intervention_Session_Result__c AS a INNER JOIN
                      dbo.Student_Section__c AS b 
						ON a.Student_Section__c = b.Id INNER JOIN
                      dbo.Section__c AS c
                        ON b.Section__c = c.Id INNER JOIN
                      dbo.Intervention_Session__c AS d
                        ON a.Intervention_Session__c = d.Id INNER JOIN
                      dbo.Student__c AS e
                        ON b.Student__c = e.Id INNER JOIN
                      dbo.Staff__c AS f
                        ON d.Session_Time_Completed_For__c = f.Id INNER JOIN
                      dbo.vw_Staff_Team_Info AS g
                        ON f.Id = g.Id left join 
                      dbo.Account h
                        ON e.School_Name__c = h.Name LEFT JOIN
                      dbo.School_DN_Indicator AS i
						ON h.Id = I.SF_SCHOOL_ID INNER JOIN
					dbo.vw_Flat_Progs_from_Account_Prog  j WITH (NOLOCK)
						ON c.Program__c = j.Program__c 
WHERE c.RecordTypeId = '0121a000000VC6RAAW'
GO
