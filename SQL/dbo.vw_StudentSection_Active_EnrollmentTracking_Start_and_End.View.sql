USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_StudentSection_Active_EnrollmentTracking_Start_and_End]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




/*
To derive the student section enrollement tracking start and end dates
we evaluate 'active' enrollment tracking records per student/section
the earliest Start Date is alway the StuSect_Start
IF the latest Start Date is greater than or equal to the latest End Date
OR the latest End Date is NULL
THEN the StuSec_End is set to 01/01/1900 to represent an active enrollment
ELSE the latest End Date is the StuSec_End
*/
  
CREATE VIEW [dbo].[vw_StudentSection_Active_EnrollmentTracking_Start_and_End]
AS
SELECT   MIN([ET].[Start_Date__c]) AS StuSect_Start
      	,StuSec_End = 
      		CASE -- WHEN MAX(ET.Start_Date__c) >= MAX(ET.End_Date__c) THEN '01/01/1900'
      			WHEN MAX(ET.End_Date__c) IS NULL THEN '01/01/1900'
      			ELSE MAX(ET.End_Date__c)
      		END      
      	,SS.Student__c
      	,SS.Section__c
      	,SEC.Indicator_Area__c AS Section_IA

FROM dbo.Enrollment_Tracking__c AS ET INNER JOIN 
	dbo.Student_Section__c AS SS WITH (nolock) ON
		ET.Student_Section__c = SS.Id INNER JOIN
	dbo.Student__c St WITH (nolock) ON
 		SS.Student__c = St.ID INNER JOIN
	dbo.Section__c AS Sec ON
		SS.Section__c = Sec.Id
WHERE SEC.RecordTypeId = '0121a000000VC6RAAW'
GROUP BY
	ET.Student_Section__c,SS.Student__c
	,SS.Section__c
	,ET.Active__c
	,SEC.Indicator_Area__c
HAVING
	ET.Active__c = 1




GO
