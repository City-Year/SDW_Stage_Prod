USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_DESSA_SCHOOL_COMP_MOSTRECENT]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[vw_DESSA_SCHOOL_COMP_MOSTRECENT]
AS
SELECT
	MOST_RECENT_ADMIN,
	cych_Accnt_SF_ID,
	STUDENT_SCHOOL_NAME,
	COUNT(CASE WHEN Score_Diff_Category = 1 THEN 1 END) AS COMP_PLUS4,
	COUNT(CASE WHEN Score_Diff_Category = 2 THEN 1 END) AS COMP_PLUS1TO3,
	COUNT(CASE WHEN Score_Diff_Category = 3 THEN 1 END) AS COMP_NOCHANGE,
	COUNT(CASE WHEN Score_Diff_Category = 4 THEN 1 END) AS COMP_MINUS1TO3,
	COUNT(CASE WHEN Score_Diff_Category = 5 THEN 1 END) AS COMP_MINUS4
FROM SDW_STAGE_PROD.DBO.vw_DESSA_Composite WHERE MOST_RECENT_ADMIN=1 AND ASSESSMENT_ADMINISTRATION_NUMBER>1
GROUP BY MOST_RECENT_ADMIN, cych_Accnt_SF_ID, STUDENT_SCHOOL_NAME






GO
