USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Student_Information]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vw_Student_Information]
AS

SELECT     a.Name AS Student_Name
, a.Student_First_Name__c AS Student_First
, a.Student_Last_Name__c AS Student_Last
, a.Attendance__c AS Student_IA_Att
, a.Behavior__c AS Student_IA_Beh
, a.ELA_Literacy__c AS Student_IA_ELA
, a.Math__c AS Student_IA_Math
, a.Number_of_Indicator_Areas__c AS Student_TTL_IAs_Assigned
, a.Gender__c AS Student_Gender
, a.Ethnicity__c AS Student_Ethnicity
, a.ELL__c AS Student_ELL
--sjg added IEP 9-19-16 for SPM Behavior reports--
, a.IEP__c as Student_IEP
, d.Subtype__c as SchoolType
					  --, ISNULL(i.IS_DIPLOMAS_NOW_SCHOOL, '0') AS DN_Indicator
,CASE
	When e.IS_DIPLOMAS_NOW_SCHOOL = 0 Then 'WSWC'
	Else 'DN'
 END AS DN_Indicator
, a.Grade__c AS Student_Grade
, a.Date_of_Birth__c AS Student_DOB
, a.Local_Student_ID__c AS Student_District_ID
, a.School_Year_Name__c AS Student_School_Year
, a.Student_Id__c AS CY_Student_ID 
, a.School_Name__c AS Student_School_Name
, b.Reference_Id__c AS Reference__Id
, c.Site__c AS Business_Unit
, a.Id AS Student_SF_ID
, b.Id AS cysch_Accnt_SF_ID
, b.Legacy_ID__c AS cych_Accnt_SF_ID
, c.legacy_key1__c
FROM      dbo.Student__c				AS a with (nolock) 
Inner Join dbo.Account					AS b				ON a.School__c = b.ID 
Inner Join dbo.vw_School_Account			AS c with(nolock)	ON b.ID = c.ID
Inner Join [ODW_Stage].[dbo].[Account]	AS d				ON b.Legacy_ID__c = d.Id
Inner Join dbo.School_DN_Indicator	AS e WITH (nolock)  ON b.Legacy_ID__c = e.SFDC_ACCT_ID 

--CREATE VIEW [dbo].[vw_Student_Information]
--AS
--SELECT Distinct     e.Name AS Student_Name
--, e.Student_First_Name__c AS Student_First
--, e.Student_Last_Name__c AS Student_Last
--, e.Attendance__c AS Student_IA_Att
--, e.Behavior__c AS Student_IA_Beh
--, e.ELA_Literacy__c AS Student_IA_ELA
--, e.Math__c AS Student_IA_Math
--, e.Number_of_Indicator_Areas__c AS Student_TTL_IAs_Assigned
--, e.Gender__c AS Student_Gender
--, e.Ethnicity__c AS Student_Ethnicity, e.ELL__c AS Student_ELL
--, e.Grade__c AS Student_Grade
--, e.Date_of_Birth__c AS Student_DOB
--, e.Local_Student_ID__c AS Student_District_ID
--, e.School_Year_Name__c AS Student_School_Year
--, e.Student_Id__c AS CY_Student_ID
--, e.School_Name__c AS Student_School_Name
--, B.Site__c AS Business_Unit
--, e.Id AS Student_SF_ID
--, f.Id AS cysch_Accnt_SF_ID
--, CASE WHEN f.Legacy_ID__c IS NULL THEN C.legacy_ID__C 
--	   ELSE f.Legacy_ID__c END AS cych_Accnt_SF_ID
--, B.legacy_key1__c
--FROM         dbo.Student__c AS e with(nolock) LEFT JOIN
--dbo.Account f ON
--	e.School_Name__c = f.Name LEFT JOIN
--dbo.vw_School_Account AS B with(nolock) ON 
--	e.School_Name__c = B.Name LEFT JOIN 
--dbo.vw_NON_Split_School_Accounts AS C with(nolock) ON
--	B.legacy_key1__c = C.legacy_key1__c






GO
