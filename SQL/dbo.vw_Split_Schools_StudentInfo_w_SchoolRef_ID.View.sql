USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Split_Schools_StudentInfo_w_SchoolRef_ID]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Split_Schools_StudentInfo_w_SchoolRef_ID]

AS
SELECT     e.Name AS Student_Name
, e.Student_First_Name__c AS Student_First
, e.Student_Last_Name__c AS Student_Last
, e.Attendance__c AS Student_IA_Att
, e.Behavior__c AS Student_IA_Beh
, e.ELA_Literacy__c AS Student_IA_ELA
, e.Math__c AS Student_IA_Math
, e.Number_of_Indicator_Areas__c AS Student_TTL_IAs_Assigned
, e.Gender__c AS Student_Gender
, e.Ethnicity__c AS Student_Ethnicity, e.ELL__c AS Student_ELL
, e.Grade__c AS Student_Grade
, e.Date_of_Birth__c AS Student_DOB
, e.Local_Student_ID__c AS Student_District_ID
, e.School_Year_Name__c AS Student_School_Year
, e.Student_Id__c AS CY_Student_ID 
, e.School_Name__c AS Student_School_Name
, f.Reference_Id__c AS Reference__Id
, B.Site__c AS Business_Unit
, e.Id AS Student_SF_ID
, f.Id AS cysch_Accnt_SF_ID
, f.Legacy_ID__c AS cych_Accnt_SF_ID
, b.legacy_key1__c
FROM         dbo.Student__c AS e with(nolock) LEFT JOIN
dbo.Account f ON
	e.School__c = f.ID LEFT JOIN
dbo.vw_School_Account AS B with(nolock) ON 
	f.ID = B.ID
Where

f.Id in (SELECT  a.[Id] FROM Account a

WHERE a.Name in (
'Aptitude Community at Goss ES'
,'Rosa Parks K-8 School'
,'Father Keith B. Kenny'
,'Curley K-8'
,'Sarah Greenwood K-8'
,'Mildred Ave K-8 School'
,'Higginson Lewis K-8 School'
,'Orchard Gardens'
,'McKay K-8 School'
,'Hennigan Elementary School'
,'Trotter Elementary School'
,'Condon Elementary School'
,'PS 96M'
,'PS- MS 57M'))


GO
