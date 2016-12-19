USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Grades_final_BAK]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_Grades_final_BAK]
AS
SELECT DISTINCT b.Student_Name
	, b.Student_First
	, b.Student_Last
	, b.Student_IA_Att
	, b.Student_IA_Beh
	, b.Student_IA_ELA
	, b.Student_IA_Math
	, b.Student_TTL_IAs_Assigned
	, b.Student_Gender
	, b.Student_Ethnicity
	, b.Student_ELL
	, b.Student_Grade
	, b.Student_DOB
	, b.Student_District_ID
	, b.Student_School_Year
	, b.CY_Student_ID
	, b.Student_School_Name
	, b.Student_SF_ID
	, a.Section_Name
	, a.Core_Class__c
	, a.Assignment_Due_Date
	, a.Assignment_Marking_Period
	, a.Type__c AS Assignment_Type
	, a.Assignment_Name

--[Comment] Update case statement CSD 06/07/16 rationalizing Assignment_Subject value translation based on all a.section_names found in section__c table --
	,CASE WHEN ISNULL(a.Section_Name, '') LIKE '%- ELA%' OR ISNULL(a.Section_Name, '') LIKE '%-ELA%' OR ISNULL(a.Section_Name, '') LIKE '% LITERACY%' THEN 'ELA/Literacy'
		  WHEN ISNULL(a.Section_Name, '') LIKE '%ATTENDANCE%' THEN 'Attendance'
		  WHEN ISNULL(a.Section_Name, '') LIKE '% MATH %' OR ISNULL(a.Section_Name, '') LIKE '%- MATH%'OR ISNULL(a.Section_Name, '') LIKE '%-MATH%' THEN 'Math'
		  ELSE 'N/A' 
		  END AS Assignment_Subject	

/* [dropped 06/07/16 CSD] replaced with code above --------
	, CASE WHEN isnull(a.Section_Name, '') LIKE '%ELA%' THEN 'ELA/Literacy' 
		   WHEN isnull(a.Section_Name, '') LIKE '%- ADA' THEN 'Attendance' 
		   WHEN isnull(a.Section_Name, '') LIKE '% Math %' THEN 'Math' 
		   ELSE 'N/A' 
		   END AS Assignment_Subject*/
	
	, a.Create_by
	, a.Entry_date 
	, a.Grade_Name
	, a.Assignment_Entered_Grade
	, a.Assignment_Grade_Number
	, a.Assignment_Weighted_Grade_Vale
	, b.Business_Unit
	, c.Staff_Name AS CorpsName1
	, c.StaffEmail AS CorpsEmail1
	, c.TeamName
	, c.TeamDescription
	, b.cysch_Accnt_SF_ID
	, b.cych_Accnt_SF_ID
	, a.Standard_Name
	, a.Grade_For_Standard
	, a.Identifier__c
	, a.Long_Text__c
--[Comment] Update case statement CSD 06/07/16 rationalizing Grades_IA value translation based on all a.section_names found in section__c table --
			
			, CASE WHEN section_name LIKE '%- ELA%' OR section_name LIKE '%-ELA%' OR section_name LIKE '% LITERACY%' THEN 'ELA' 
				   WHEN section_name LIKE '%Homeroom%' THEN 'Homeroom' 
				   WHEN section_name LIKE '% Math %' OR section_name LIKE '%- MATH%' OR section_name LIKE '%-MATH%' THEN 'Math' 
				   ELSE 'Other' 
				   END AS Grades_IA			

/* [dropped 06/07/16 CSD] replaced with code above --------			
			, CASE WHEN section_name LIKE '%ELA%' THEN 'ELA'
				WHEN section_name LIKE '%Homeroom%' THEN 'Homeroom'
				WHEN section_name LIKE '%Math%' THEN 'Math'
				ELSE 'Other'
			  END AS Grades_IA*/
	, 'N/A' AS Session_Skills
	, 'N/A' AS Program_Description
FROM         dbo.vw_Student_Information AS b LEFT OUTER JOIN
                      dbo.vw_Gradebook AS a WITH (nolock) ON a.Student_SalesForce_ID = b.Student_SF_ID LEFT OUTER JOIN
                      dbo.vw_Staff_Team_Info AS c WITH (nolock) ON a.StaffID1 = c.Id








GO
