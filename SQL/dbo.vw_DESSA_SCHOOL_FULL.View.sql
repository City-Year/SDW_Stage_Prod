USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_DESSA_SCHOOL_FULL]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE VIEW [dbo].[vw_DESSA_SCHOOL_FULL]
AS
SELECT
	dbo.vw_DESSA_SCHOOL_COMP.cych_Accnt_SF_ID, 
	dbo.vw_DESSA_SCHOOL_COMP.STUDENT_SCHOOL_NAME, 
    dbo.vw_DESSA_SCHOOL_COMP.Assessment_Administration_Number,
	CASE 
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 1 THEN '1st Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 2 THEN '2nd Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 3 THEN '3rd Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 4 THEN '4th Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 5 THEN '5th Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 6 THEN '6th Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 7 THEN '7th Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 8 THEN '8th Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 9 THEN '9th Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 10 THEN '10th Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 11 THEN '11th Administration'
		WHEN DBO.VW_DESSA_SCHOOL_COMP.ASSESSMENT_ADMINISTRATION_NUMBER = 12 THEN '12th Administration'
		END AS ASSESSMENT_ADMINISTRATION_TEXT,
	dbo.vw_DESSA_SCHOOL_COMP.COMP_N, 
	dbo.vw_DESSA_SCHOOL_COMP.COMP_T, 
    dbo.vw_DESSA_SCHOOL_COMP.COMP_S, 
	dbo.vw_DESSA_SCHOOL_DM.DM_N, 
	dbo.vw_DESSA_SCHOOL_DM.DM_T, 
	dbo.vw_DESSA_SCHOOL_DM.DM_S, 
	dbo.vw_DESSA_SCHOOL_GDB.GDB_N, 
	dbo.vw_DESSA_SCHOOL_GDB.GDB_T, 
	dbo.vw_DESSA_SCHOOL_GDB.GDB_S, 
    dbo.vw_DESSA_SCHOOL_OT.OT_N, 
	dbo.vw_DESSA_SCHOOL_OT.OT_T, 
	dbo.vw_DESSA_SCHOOL_OT.OT_S, 
	dbo.vw_DESSA_SCHOOL_PR.PR_N, 
	dbo.vw_DESSA_SCHOOL_PR.PR_T, 
	dbo.vw_DESSA_SCHOOL_PR.PR_S, 
	dbo.vw_DESSA_SCHOOL_RS.RS_N, 
	dbo.vw_DESSA_SCHOOL_RS.RS_T, 
	dbo.vw_DESSA_SCHOOL_RS.RS_S, 
	dbo.vw_DESSA_SCHOOL_SA.SA_N, 
	dbo.vw_DESSA_SCHOOL_SA.SA_T, 
	dbo.vw_DESSA_SCHOOL_SA.SA_S, 
	dbo.vw_DESSA_SCHOOL_SM.SM_N, 
	dbo.vw_DESSA_SCHOOL_SM.SM_T, 
	dbo.vw_DESSA_SCHOOL_SM.SM_S, 
	dbo.vw_DESSA_SCHOOL_SoA.SoA_N, 
	dbo.vw_DESSA_SCHOOL_SoA.SoA_T, 
	dbo.vw_DESSA_SCHOOL_SoA.SoA_S
FROM vw_DESSA_School_COMP
JOIN vw_DESSA_School_OT
		ON vw_DESSA_SCHOOL_OT.cych_Accnt_SF_ID = vw_DESSA_School_COMP.cych_Accnt_SF_ID
		AND vw_DESSA_SCHOOL_OT.Student_School_Name = vw_DESSA_School_COMP.Student_School_Name
		AND vw_DESSA_SCHOOL_OT.Assessment_Administration_Number = vw_DESSA_School_COMP.Assessment_Administration_Number
JOIN vw_DESSA_SCHOOL_DM
		ON vw_DESSA_SCHOOL_DM.cych_Accnt_SF_ID = vw_DESSA_School_COMP.cych_Accnt_SF_ID
		AND vw_DESSA_SCHOOL_DM.Student_School_Name = vw_DESSA_School_COMP.Student_School_Name
		AND vw_DESSA_SCHOOL_DM.Assessment_Administration_Number = vw_DESSA_School_COMP.Assessment_Administration_Number
JOIN vw_DESSA_SCHOOL_GDB
		ON vw_DESSA_SCHOOL_GDB.cych_Accnt_SF_ID = vw_DESSA_School_COMP.cych_Accnt_SF_ID
		AND vw_DESSA_SCHOOL_GDB.Student_School_Name = vw_DESSA_School_COMP.Student_School_Name
		AND vw_DESSA_SCHOOL_GDB.Assessment_Administration_Number = vw_DESSA_School_COMP.Assessment_Administration_Number
JOIN vw_DESSA_SCHOOL_PR
		ON vw_DESSA_SCHOOL_PR.cych_Accnt_SF_ID = vw_DESSA_School_COMP.cych_Accnt_SF_ID
		AND vw_DESSA_SCHOOL_PR.Student_School_Name = vw_DESSA_School_COMP.Student_School_Name
		AND vw_DESSA_SCHOOL_PR.Assessment_Administration_Number = vw_DESSA_School_COMP.Assessment_Administration_Number
JOIN vw_DESSA_SCHOOL_RS
		ON vw_DESSA_SCHOOL_RS.cych_Accnt_SF_ID = vw_DESSA_School_COMP.cych_Accnt_SF_ID
		AND vw_DESSA_SCHOOL_RS.Student_School_Name = vw_DESSA_School_COMP.Student_School_Name
		AND vw_DESSA_SCHOOL_RS.Assessment_Administration_Number = vw_DESSA_School_COMP.Assessment_Administration_Number
JOIN vw_DESSA_SCHOOL_SA
		ON vw_DESSA_SCHOOL_SA.cych_Accnt_SF_ID = vw_DESSA_School_COMP.cych_Accnt_SF_ID
		AND vw_DESSA_SCHOOL_SA.Student_School_Name = vw_DESSA_School_COMP.Student_School_Name
		AND vw_DESSA_SCHOOL_SA.Assessment_Administration_Number = vw_DESSA_School_COMP.Assessment_Administration_Number
JOIN vw_DESSA_SCHOOL_SM
		ON vw_DESSA_SCHOOL_SM.cych_Accnt_SF_ID = vw_DESSA_School_COMP.cych_Accnt_SF_ID
		AND vw_DESSA_SCHOOL_SM.Student_School_Name = vw_DESSA_School_COMP.Student_School_Name
		AND vw_DESSA_SCHOOL_SM.Assessment_Administration_Number = vw_DESSA_School_COMP.Assessment_Administration_Number
JOIN vw_DESSA_SCHOOL_SoA
		ON vw_DESSA_SCHOOL_SoA.cych_Accnt_SF_ID = vw_DESSA_School_COMP.cych_Accnt_SF_ID
		AND vw_DESSA_SCHOOL_SoA.Student_School_Name = vw_DESSA_School_COMP.Student_School_Name
		AND vw_DESSA_SCHOOL_SoA.Assessment_Administration_Number = vw_DESSA_School_COMP.Assessment_Administration_Number





GO
