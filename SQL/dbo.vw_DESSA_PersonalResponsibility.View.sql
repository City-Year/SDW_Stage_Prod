USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_DESSA_PersonalResponsibility]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vw_DESSA_PersonalResponsibility] as
SELECT  A.*, 
		C.MAX_ASSESSMENT_ADMINISTRATION_NUMBER,
		CASE WHEN C.MAX_ASSESSMENT_ADMINISTRATION_NUMBER = ASSESSMENT_ADMINISTRATION_NUMBER THEN 1 ELSE NULL END AS MOST_RECENT_ADMIN
FROM
	(SELECT Student_Name, 
	Student_School_Name, 
	Date_Administered__c, 
	ROW_NUMBER() OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC)  AS Assessment_Administration_Number,
	Personal_Responsibility_Description__c, 
	Personal_Responsibility_T_Score__c,
	Assessment_name,
	LAG(Personal_Responsibility_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) AS Personal_Responsibility_T_Score__MostRecent,
	Personal_Responsibility_T_SCORE__C - LAG(Personal_Responsibility_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) AS Personal_Responsibility_T_Score_Diff, 
	CASE	
		WHEN Personal_Responsibility_T_SCORE__C - LAG(Personal_Responsibility_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) >=4 THEN 1
		WHEN Personal_Responsibility_T_SCORE__C - LAG(Personal_Responsibility_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) >=1
			AND Personal_Responsibility_T_SCORE__C - LAG(Personal_Responsibility_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) <=3 THEN 2
		WHEN Personal_Responsibility_T_SCORE__C - LAG(Personal_Responsibility_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) = 0 THEN 3
		WHEN Personal_Responsibility_T_SCORE__C - LAG(Personal_Responsibility_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) <=-1 
			AND Personal_Responsibility_T_SCORE__C - LAG(Personal_Responsibility_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) >=-3 THEN 4
		WHEN Personal_Responsibility_T_SCORE__C - LAG(Personal_Responsibility_T_SCORE__C, 1, NULL) OVER (PARTITION BY student_SF_ID ORDER BY date_administered__c ASC) <=-4 THEN 5 
		ELSE NULL END AS Score_Diff_Category,
	STUDENT_SF_ID, 
	cych_Accnt_SF_ID
FROM SDW_STAGE_PROD.DBO.VW_ASSESSEMENT_STUDENT_FINAL_WIP WHERE ASSESSMENT_NAME = 'DESSA' and student_ia_beh=1) A
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
