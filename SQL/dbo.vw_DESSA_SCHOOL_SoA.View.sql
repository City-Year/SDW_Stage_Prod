USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_DESSA_SCHOOL_SoA]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[vw_DESSA_SCHOOL_SoA]
AS
SELECT 
	STUDENT_SCHOOL_NAME, 
	cych_Accnt_SF_ID, 
	Assessment_Administration_Number, 
	COUNT(CASE WHEN Social_Awareness_Description__c = 'N' THEN 1 END) AS SoA_N,
	COUNT(CASE WHEN Social_Awareness_Description__c = 'T' THEN 1 END) AS SoA_T,
	COUNT(CASE WHEN Social_Awareness_Description__c = 'S' THEN 1 END) AS SoA_S
FROM SDW_STAGE_PROD.DBO.vw_DESSA_SocialAwareness
GROUP BY CYCH_ACCNT_SF_ID, Assessment_Administration_Number, STUDENT_SCHOOL_NAME







GO
