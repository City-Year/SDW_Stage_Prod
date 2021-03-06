USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_EROLLED_STUDENT_FL_FLTR_WIP]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_EROLLED_STUDENT_FL_FLTR_WIP]
AS

SELECT s.[Student_First_Name__c] AS OCPS_STU_FNAME
      ,s.[Student_Last_Name__c] AS OCPS_STU_LNAME
      ,Left(Replace(s.External_Id__c,'OCPS_',''),CharIndex('_',Replace(s.External_Id__c,'OCPS_',''),1)-1)AS OCPS_STU_SCHOOL_ID
      ,Right(Replace(s.External_Id__c,'OCPS_',''),LEN(Replace(s.External_Id__c,'OCPS_',''))-CharIndex('_',Replace(s.External_Id__c,'OCPS_',''),1)) AS OCPS_STU_STUDENT_ID
      --,External_Id__c 
 FROM [SDW_Stage_Prod].[dbo].[Student__c] s LEFT JOIN
 vw_StudentSection_Active_EnrollmentTracking_Start_and_End e WITH(nolock) ON
 s.ID = e.Student__c 
 WHERE Location__c = 'orlando' AND s.External_Id__c IS NOT NULL --AND e.StuSec_End ='1900-01-01 00:00:00.000'
 

GO
