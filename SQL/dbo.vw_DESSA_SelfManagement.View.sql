USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_DESSA_SelfManagement]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[vw_DESSA_SelfManagement] as
SELECT  A.*, 
		C.MAX_ASSESSMENT_ADMINISTRATION_NUMBER,
		CASE WHEN C.MAX_ASSESSMENT_ADMINISTRATION_NUMBER = ASSESSMENT_ADMINISTRATION_NUMBER THEN 1 ELSE NULL END AS MOST_RECENT_ADMIN
FROM
	(SELECT Student_Name, 
	Student_School_Name, 
	Date_Administered__c, 
	ROW_NUMBER() OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC)  AS Assessment_Administration_Number,
	Self_Management_Description__c, 
	Self_Management_T_Score__c,
	Assessment_name,
	LAG(Self_Management_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) AS Self_Management_T_Score__MostRecent,
	Self_Management_T_SCORE__C - LAG(Self_Management_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) AS Self_Management_T_Score_Diff, 
	CASE	
		WHEN Self_Management_T_SCORE__C - LAG(Self_Management_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) >=4 THEN 1
		WHEN Self_Management_T_SCORE__C - LAG(Self_Management_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) >=1
			AND Self_Management_T_SCORE__C - LAG(Self_Management_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) <=3 THEN 2
		WHEN Self_Management_T_SCORE__C - LAG(Self_Management_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) = 0 THEN 3
		WHEN Self_Management_T_SCORE__C - LAG(Self_Management_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) <=-1 
			AND Self_Management_T_SCORE__C - LAG(Self_Management_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) >=-3 THEN 4
		WHEN Self_Management_T_SCORE__C - LAG(Self_Management_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) <=-4 THEN 5 
		ELSE NULL END AS Score_Diff_Category,
	STUDENT_SF_ID, 
	cych_Accnt_SF_ID
FROM SDW_STAGE_PROD.DBO.VW_ASSESSEMENT_STUDENT_FINAL_WIP WHERE ASSESSMENT_NAME = 'DESSA' and student_ia_beh=1 ) A
JOIN
(SELECT MAX(Assessment_Administration_Number) AS MAX_ASSESSMENT_ADMINISTRATION_NUMBER, STUDENT_SF_ID
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC)  AS Assessment_Administration_Number FROM SDW_STAGE_PROD.DBO.VW_ASSESSEMENT_STUDENT_FINAL_WIP
WHERE ASSESSMENT_NAME = 'DESSA' and student_ia_beh=1) B
GROUP BY STUDENT_SF_ID) C
ON A.STUDENT_SF_ID = C.STUDENT_SF_ID 
inner join
[SDW_Stage_Prod].[dbo].[vw_ST_SPMBEH_Body] D
ON D.STUDENT_SF_ID=C.STUDENT_SF_ID
where d.section_ia = 'behavior'










GO
