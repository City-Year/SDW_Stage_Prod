USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_TBL_3_Enrollments]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[vw_TBL_3_Enrollments]
AS
SELECT  [STUDENT_ID]
      ,[PROG_DESC]
      ,[INDICATOR_AREA_DESC]
      ,Max([ENROLLED_DAYS]) AS ENROLLED_DAYS
      ,MIN([FIRST_INTERVENTION]) AS FIRST_INTERVENTION
      ,MAX([LAST_INTERVENTION]) AS LAST_INTERVENTION
      ,[CURRENTLY_ENROLLED]
      ,[INVALID_ENROLLMENT]
      ,[FISCAL_YEAR]
      ,[SITE_NAME]
      ,[SCHOOL_NAME]
      ,[SCHOOL_ID]
      ,[CYSCHOOLHOUSE_STUDENT_ID]
      ,[DIPLOMAS_NOW]
      ,[StudentName]
FROM
(SELECT d.StudentID as STUDENT_ID
	  , c.Name as StudentName
	  , c.ID
	  , LEFT(b.Name,CharIndex('-',b.Name,1)-1) AS PROG_DESC
	  , a.Section_IA AS INDICATOR_AREA_DESC
      , CASE WHEN  StuSec_End = '1900-01-01' THEN  DATEDIFF(dd,a.StuSect_Start,getdate()) 
			WHEN DATEDIFF(dd,a.StuSect_Start, ISNULL(a.StuSec_End, GETDATE())) < 0 THEN NULL 
			ELSE DATEDIFF(dd, StuSect_Start, ISNULL(a.StuSec_End, GETDATE())) 
	    END AS ENROLLED_DAYS
	  , a.StuSect_Start AS FIRST_INTERVENTION
      , a.StuSec_End AS LAST_INTERVENTION
      , CASE WHEN MAX(ISNULL(a.StuSec_End, GETDATE())) = Convert(Date,getdate(),21) THEN 'YES' 
			 WHEN MAX(ISNULL(a.StuSec_End, GETDATE())) = '1900-01-01' THEN 'YES' 
			 ELSE 'NO' 
		 END AS CURRENTLY_ENROLLED
	  , CASE WHEN a.StuSec_End = '1900-01-01' THEN 'NO'  
			 WHEN DATEDIFF(dd, a.StuSect_Start,ISNULL(a.StuSec_End, GETDATE())) < 0 THEN 'YES' 
			 WHEN DATEDIFF(dd, a.StuSect_Start, ISNULL(a.StuSec_End, GETDATE())) = 0 THEN 'Begin and Exit dates are Same' 
			 ELSE 'NO' 
	    END AS INVALID_ENROLLMENT
      , c.School_Year_Name__c FISCAL_YEAR
      , c.Location__c SITE_NAME
      , c.School_Name__c SCHOOL_NAME
      , e.SchoolID AS SCHOOL_ID
      , c.Student_Id__c [CYSCHOOLHOUSE_STUDENT_ID]
      , e.DIPLOMAS_NOW
      --, c.Name as StudentName
  FROM [SDW_Stage_Prod].[dbo].[vw_StudentSection_Active_EnrollmentTracking_Start_and_End] AS a INNER JOIN
  Section__c  AS b WITH(nolock) ON 
	a.Section__c = b.Id INNER JOIN
  Student__c AS c WITH(nolock) ON 
	a.student__c = c.Id LEFT JOIN 
  SDW_Prod.dbo.DimStudent AS d WITH(nolock) ON
	a.Student__c = d.StudentSF_ID LEFT JOIN
  SDW_Prod.dbo.DimSchool AS e WITH(nolock) ON
  	c.School__c = e.CYSch_SF_ID
  
  GROUP BY d.StudentID
	, b.Name,[Section_IA]
	, a.StuSec_End
	, a.StuSect_Start
	, c.School_Year_Name__c
	, c.Location__c
	, c.School_Name__c
	, e.SchoolID
	, e.Diplomas_Now
	, c.Student_Id__c
	, c.Name
	, c.ID)T2
	Group by T2.[STUDENT_ID]
      ,T2.[StudentName]
      ,T2.[ID]
      ,T2.[PROG_DESC]
      ,T2.[INDICATOR_AREA_DESC]
      ,T2.[CURRENTLY_ENROLLED]
      ,T2.[INVALID_ENROLLMENT]
      ,T2.[FISCAL_YEAR]
      ,T2.[SITE_NAME]
      ,T2.[SCHOOL_NAME]
      ,T2.[SCHOOL_ID]
      ,T2.[CYSCHOOLHOUSE_STUDENT_ID]
      ,T2.[DIPLOMAS_NOW]


GO
