USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Load_Crystal_Reports_Tables]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Load_Crystal_Reports_Tables]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	----- Corps Member Report
	truncate table Eval_Labs.dbo.CMR_CM_SPMBEH_Body---------------------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.CMR_CM_SPMBEH_Body(Section_Primary_Staff, Section_Primary_Staff_ID, STUDENT_SCHOOL_NAME, cych_Accnt_SF_ID, Section_IA, BUSINESS_UNIT)
	select Section_Primary_Staff, Section_Primary_Staff_ID, STUDENT_SCHOOL_NAME, cych_Accnt_SF_ID, Section_IA, BUSINESS_UNIT
	from SDW_Stage_Prod.dbo.vw_CM_SPMBEH_Body (nolock) a 

	update Eval_Labs.dbo.CMR_CM_SPMBEH_Body
	set TEAM_NAME = b.TEAM_NAME
	,TEAM_ID = b.TEAM_NUMBER
	from SDW_Stage_Prod.dbo.CMR_CM_SPMBEH_Body (nolock) a
	inner join ReportCYData_Prod.dbo.SCHOOL_BASED_TEAMS (nolock) b on a.STUDENT_SCHOOL_NAME = b.SCHOOL_NAME_NORMALIZED

	ALTER INDEX ALL ON Eval_Labs.dbo.CMR_CM_SPMBEH_Body REBUILD

	truncate table Eval_Labs.dbo.CMR_CM_SPMBEH_DESSAChart -----------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.CMR_CM_SPMBEH_DESSAChart(STUDENT__C, Student_Name, ASSESSMENT_NAME, DATE_ADMINISTERED__C, SEL_Composite_T_Score__c, Section_Primary_Staff_ID, Section_Primary_Staff, cych_Accnt_SF_ID, Month_Administered)
	select STUDENT__C, Student_Name, ASSESSMENT_NAME, DATE_ADMINISTERED__C, SEL_Composite_T_Score__c, Section_Primary_Staff_ID, Section_Primary_Staff, cych_Accnt_SF_ID, Month_Administered 
	from SDW_Stage_Prod.dbo.vw_CM_SPMBEH_DESSAChart (nolock)

	truncate table  Eval_Labs.dbo.CMR_CM_SPMBEH_DESSATable---------------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.CMR_CM_SPMBEH_DESSATable(student__c, date_administered__c, ASSESSMENT_NAME, student_name, Decision_Making_Description__c, Goal_directed_Behavior_Description__c, Optimistic_Thinking_Description__c, Personal_Responsibility_Description__c, Relationship_Skills_Description__c, SEL_Composite_Description__c, Self_Awareness_Description__c, Self_Management_Description__c, Social_Awareness_Description__c, MOSTRECENT, Section_Primary_Staff_id, Section_Primary_Staff, cych_accnt_sf_id)
	select student__c, date_administered__c, ASSESSMENT_NAME, student_name, Decision_Making_Description__c, Goal_directed_Behavior_Description__c, Optimistic_Thinking_Description__c, Personal_Responsibility_Description__c, Relationship_Skills_Description__c, SEL_Composite_Description__c, Self_Awareness_Description__c, Self_Management_Description__c, Social_Awareness_Description__c, MOSTRECENT, Section_Primary_Staff_id, Section_Primary_Staff, cych_accnt_sf_id
	from SDW_Stage_Prod.dbo.vw_CM_SPMBEH_DESSATable (nolock) 

	truncate table Eval_Labs.dbo.CMR_CM_SPMBEH_IntSkills----------------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.CMR_CM_SPMBEH_IntSkills(Session_Dossage, Session_Date, Session_ID, Student_Name, Student_IA_Beh,Section_IA, Program_Description, Session_Skills, CY_Student_ID, Student_School_Name, Student_SF_ID, Intervention_Corps_Member,Intervention_Corps_Member_ID,  Business_Unit, Section_Primary_Staff,Section_Primary_Staff_ID,Student_Grade)
	select Session_Dossage, Session_Date, Session_ID, Student_Name, Student_IA_Beh,Section_IA, Program_Description, Session_Skills, CY_Student_ID, Student_School_Name, Student_SF_ID, Intervention_Corps_Member,Intervention_Corps_Member_ID,  Business_Unit, Section_Primary_Staff,Section_Primary_Staff_ID,Student_Grade
	from SDW_Stage_Prod.dbo.vw_CM_SPMBEH_IntSkills (nolock)

	truncate table Eval_Labs.dbo.CMR_CM_Attendance_Suspensions----------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.CMR_CM_Attendance_Suspensions(AVG_AVERAGE_DAILY_ATTENDANCE, PERC_SUSPENSION, PERC_DETENTION, PERC_OFFICEREFERRAL, cych_accnt_sf_id, Section_Primary_Staff, Section_Primary_Staff_ID, [QUARTER])
	select AVG_AVERAGE_DAILY_ATTENDANCE, PERC_SUSPENSION, PERC_DETENTION, PERC_OFFICEREFERRAL, cych_accnt_sf_id, Section_Primary_Staff, Section_Primary_Staff_ID, [QUARTER]
	from SDW_Stage_Prod.dbo.vw_CM_Attendance_Suspensions (nolock)

	--Team Report
	truncate table Eval_Labs.dbo.TR_SCH_SPMBEH_Body

	insert into Eval_Labs.dbo.TR_SCH_SPMBEH_Body(cych_accnt_sf_id, BUSINESS_UNIT, STUDENT_SCHOOL_NAME)
	select cych_accnt_sf_id, BUSINESS_UNIT, STUDENT_SCHOOL_NAME
	from SDW_Stage_Prod.dbo.vw_SCH_SPMBEH_Body (nolock)

	update Eval_Labs.dbo.TR_SCH_SPMBEH_Body
	set TEAM_NAME = b.TEAM_NAME
	,TEAM_ID = b.TEAM_NUMBER
	from SDW_Stage_Prod.dbo.TR_SCH_SPMBEH_Body (nolock) a
	inner join ReportCYData_Prod.dbo.SCHOOL_BASED_TEAMS (nolock) b on a.STUDENT_SCHOOL_NAME = b.SCHOOL_NAME_NORMALIZED

	ALTER INDEX ALL ON Eval_Labs.dbo.TR_SCH_SPMBEH_Body REBUILD

	truncate table Eval_Labs.dbo.TR_DESSA_SCHOOL_FULL

	insert into Eval_Labs.dbo.TR_DESSA_SCHOOL_FULL(cych_Accnt_SF_ID, STUDENT_SCHOOL_NAME, Assessment_Administration_Number, ASSESSMENT_ADMINISTRATION_TEXT, COMP_N, COMP_T, COMP_S, DM_N, DM_T, DM_S, GDB_N, GDB_T, GDB_S, OT_N, OT_T, OT_S, PR_N, PR_T, PR_S, RS_N, RS_T, RS_S, SA_N, SA_T, SA_S, SM_N, SM_T, SM_S, SoA_N, SoA_T, SoA_S)
	select cych_Accnt_SF_ID, STUDENT_SCHOOL_NAME, Assessment_Administration_Number, ASSESSMENT_ADMINISTRATION_TEXT, COMP_N, COMP_T, COMP_S, DM_N, DM_T, DM_S, GDB_N, GDB_T, GDB_S, OT_N, OT_T, OT_S, PR_N, PR_T, PR_S, RS_N, RS_T, RS_S, SA_N, SA_T, SA_S, SM_N, SM_T, SM_S, SoA_N, SoA_T, SoA_S
	from SDW_Stage_Prod.dbo.VW_DESSA_SCHOOL_FULL (nolock)

	truncate table Eval_Labs.dbo.TR_DESSA_SCHOOL_FULL_MOSTRECENT

	--drop table Eval_Labs.dbo.TR_DESSA_SCHOOL_FULL_MOSTRECENT

	insert into Eval_Labs.dbo.TR_DESSA_SCHOOL_FULL_MOSTRECENT(cych_Accnt_SF_ID, STUDENT_SCHOOL_NAME, COMP_PLUS4, COMP_PLUS1TO3, COMP_NOCHANGE, COMP_MINUS1TO3, COMP_MINUS4, DM_PLUS4, DM_PLUS1TO3, DM_NOCHANGE, DM_MINUS1TO3, DM_MINUS4, GDB_PLUS4, GDB_PLUS1TO3, GDB_NOCHANGE, GDB_MINUS1TO3, GDB_MINUS4, OT_PLUS4, OT_PLUS1TO3, OT_NOCHANGE, OT_MINUS1TO3, OT_MINUS4, PR_PLUS4, PR_PLUS1TO3, PR_NOCHANGE, PR_MINUS1TO3, PR_MINUS4, RS_PLUS4, RS_PLUS1TO3, RS_NOCHANGE, RS_MINUS1TO3, RS_MINUS4, SA_PLUS4, SA_PLUS1TO3, SA_NOCHANGE, SA_MINUS1TO3, SA_MINUS4, SM_PLUS4, SM_PLUS1TO3, SM_NOCHANGE, SM_MINUS1TO3, SM_MINUS4, SoA_PLUS4, SoA_PLUS1TO3, SoA_NOCHANGE, SoA_MINUS1TO3, SoA_MINUS4)
	select cych_Accnt_SF_ID, STUDENT_SCHOOL_NAME, COMP_PLUS4, COMP_PLUS1TO3, COMP_NOCHANGE, COMP_MINUS1TO3, COMP_MINUS4, DM_PLUS4, DM_PLUS1TO3, DM_NOCHANGE, DM_MINUS1TO3, DM_MINUS4, GDB_PLUS4, GDB_PLUS1TO3, GDB_NOCHANGE, GDB_MINUS1TO3, GDB_MINUS4, OT_PLUS4, OT_PLUS1TO3, OT_NOCHANGE, OT_MINUS1TO3, OT_MINUS4, PR_PLUS4, PR_PLUS1TO3, PR_NOCHANGE, PR_MINUS1TO3, PR_MINUS4, RS_PLUS4, RS_PLUS1TO3, RS_NOCHANGE, RS_MINUS1TO3, RS_MINUS4, SA_PLUS4, SA_PLUS1TO3, SA_NOCHANGE, SA_MINUS1TO3, SA_MINUS4, SM_PLUS4, SM_PLUS1TO3, SM_NOCHANGE, SM_MINUS1TO3, SM_MINUS4, SoA_PLUS4, SoA_PLUS1TO3, SoA_NOCHANGE, SoA_MINUS1TO3, SoA_MINUS4
	from SDW_Stage_Prod.dbo.VW_DESSA_SCHOOL_FULL_MOSTRECENT (nolock)

	truncate table Eval_Labs.dbo.TR_SCH_SPMBEH_SessionInfo--------------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.TR_SCH_SPMBEH_SessionInfo(program_description, cych_accnt_sf_id, Section_Primary_Staff, Section_Primary_Staff_ID, TOTALSTUDENTS, TOTALSESSIONS6WK, TOTALSTUDENTS6WK, AVGSessionDosage6wks, STUDENTSPERSESSION6wks, EXPECTED_SESSIONS)
	select program_description, cych_accnt_sf_id, Section_Primary_Staff, Section_Primary_Staff_ID, TOTALSTUDENTS, TOTALSESSIONS6WK, TOTALSTUDENTS6WK, AVGSessionDosage6wks, STUDENTSPERSESSION6wks, EXPECTED_SESSIONS
	from SDW_Stage_Prod.dbo.vw_SCH_SPMBEH_SessionInfo (nolock)

	truncate table Eval_Labs.dbo.TR_SCH_SPMBEH_SessionSkills------------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.TR_SCH_SPMBEH_SessionSkills(SESSION_ID, STUDENT_IA_BEH, SECTION_IA, PROGRAM_DESCRIPTION, SESSION_SKILLS, CY_STUDENT_ID, STUDENT_SCHOOL_NAME, CYCH_ACCNT_SF_iD, STUDENT_SF_ID, Section_Primary_Staff, Section_Primary_Staff_ID, BUSINESS_UNIT, PRIMARYSKILL, ABBREV_SESSIONSKILL, APPEND, ABREV, SESSION_SKILL_FORUSE)
	select SESSION_ID, STUDENT_IA_BEH, SECTION_IA, PROGRAM_DESCRIPTION, SESSION_SKILLS, CY_STUDENT_ID, STUDENT_SCHOOL_NAME, CYCH_ACCNT_SF_iD, STUDENT_SF_ID, Section_Primary_Staff, Section_Primary_Staff_ID, BUSINESS_UNIT, PRIMARYSKILL, ABBREV_SESSIONSKILL, APPEND, ABREV, SESSION_SKILL_FORUSE
	from SDW_Stage_Prod.dbo.vw_SCH_SPMBEH_SessionSkills (nolock)

	truncate table Eval_Labs.dbo.TR_SCH_Attendance_Suspensions

	insert into Eval_Labs.dbo.TR_SCH_Attendance_Suspensions(CYCH_ACCNT_SF_ID, QUARTER, AVG_AVERAGE_DAILY_ATTENDANCE, PERC_SUSPENSION, PERC_DETENTION, PERC_OFFICEREFERRAL)
	select CYCH_ACCNT_SF_ID, QUARTER, AVG_AVERAGE_DAILY_ATTENDANCE, PERC_SUSPENSION, PERC_DETENTION, PERC_OFFICEREFERRAL
	from SDW_Stage_Prod.dbo.vw_SCH_Attendance_Suspensions (nolock)

	-- Team & Corps Member Report
	truncate table Eval_Labs.dbo.CM_CMSCH_SPMBEH_Demographics

	insert into Eval_Labs.dbo.CM_CMSCH_SPMBEH_Demographics(Student_Name, student_school_name, cych_Accnt_SF_ID, Student_SF_ID, student_ia_att, Student_IA_Beh, Student_IA_ELA, Student_IA_Math, student_gender, student_ethnicity, student_ell, student_grade, cy_student_id, afterschoolpart,ENROLLED_BEHAVIOR, Section_Primary_Staff, Section_Primary_Staff_ID)
	select Student_Name, student_school_name,  cych_Accnt_SF_ID, Student_SF_ID, student_ia_att, Student_IA_Beh, Student_IA_ELA, Student_IA_Math, student_gender, student_ethnicity, student_ell, student_grade, cy_student_id, afterschoolpart,ENROLLED_BEHAVIOR, Section_Primary_Staff, Section_Primary_Staff_ID
	from SDW_Stage_Prod.dbo.vw_CMSCH_SPMBEH_Demographics (nolock)

	-- Student Report
	truncate table Eval_Labs.dbo.SR_ST_SPMBEH_Body----------------------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.SR_ST_SPMBEH_Body(Student_Name, Student_First, Student_Last, Student_IA_Att, Student_IA_Beh, Student_IA_ELA, Student_IA_Math, Student_TTL_IAs_Assigned, Student_Gender, Student_Ethnicity, Student_ELL, Student_Grade, Student_DOB, Student_District_ID, Student_School_Year, CY_Student_ID, Student_School_Name, Business_Unit, Student_SF_ID,cySch_Accnt_SF_ID,  cych_Accnt_SF_ID, legacy_key1__c)
	select Student_Name, Student_First, Student_Last, Student_IA_Att, Student_IA_Beh, Student_IA_ELA, Student_IA_Math, Student_TTL_IAs_Assigned, Student_Gender, Student_Ethnicity, Student_ELL, Student_Grade, Student_DOB, Student_District_ID, Student_School_Year, CY_Student_ID, Student_School_Name, Business_Unit, Student_SF_ID, cySch_Accnt_SF_ID,cych_Accnt_SF_ID, legacy_key1__c
	from SDW_Stage_Prod.dbo.vw_ST_SPMBEH_Body (nolock)

	update Eval_Labs.dbo.SR_ST_SPMBEH_Body
	set TEAM_NAME = b.TEAM_NAME
	,TEAM_ID = b.TEAM_NUMBER
	from SDW_Stage_Prod.dbo.SR_ST_SPMBEH_Body (nolock) a
	inner join ReportCYData_Prod.dbo.SCHOOL_BASED_TEAMS (nolock) b on a.STUDENT_SCHOOL_NAME = b.SCHOOL_NAME_NORMALIZED

	ALTER INDEX ALL ON Eval_Labs.dbo.SR_ST_SPMBEH_Body REBUILD

	truncate table  Eval_Labs.dbo.SR_ST_SPMBEH_Demographics--------------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.SR_ST_SPMBEH_Demographics(Student_Name, student_school_name, cych_Accnt_SF_ID, Student_SF_ID, student_ia_att, Student_IA_Beh, Student_IA_ELA, Student_IA_Math, student_gender, student_ethnicity, student_ell, student_grade, cy_student_id, afterschoolpart)
	select Student_Name, student_school_name, cych_Accnt_SF_ID, Student_SF_ID, student_ia_att, Student_IA_Beh, Student_IA_ELA, Student_IA_Math, student_gender, student_ethnicity, student_ell, student_grade, cy_student_id, afterschoolpart
	from SDW_Stage_Prod.dbo.vw_ST_SPMBEH_Demographics (nolock)

	truncate table Eval_Labs.dbo.SR_ST_SPMBEH_DESSAChart

	insert into Eval_Labs.dbo.SR_ST_SPMBEH_DESSAChart(student__c, Date_Administered__c, Assessment_Name, Decision_Making_T_Score__c, Goal_directed_Behavior_T_Score__c, Optimistic_Thinking_T_Score__c, Personal_Responsibility_T_Score__c, Relationship_Skills_T_Score__c, SEL_Composite_T_Score__c, Self_Awareness_T_Score__c, Self_Management_T_Score__c, Social_Awareness_T_Score__c, Month_Administered)
	select student__c, Date_Administered__c, Assessment_Name, Decision_Making_T_Score__c, Goal_directed_Behavior_T_Score__c, Optimistic_Thinking_T_Score__c, Personal_Responsibility_T_Score__c, Relationship_Skills_T_Score__c, SEL_Composite_T_Score__c, Self_Awareness_T_Score__c, Self_Management_T_Score__c, Social_Awareness_T_Score__c, Month_Administered
	from SDW_Stage_Prod.dbo.vw_ST_SPMBEH_DESSAChart (nolock)

	truncate table Eval_Labs.dbo.SR_ST_SPMBEH_DESSATable

	insert into Eval_Labs.dbo.SR_ST_SPMBEH_DESSATable(student__c, date_administered__c, ASSESSMENT_NAME, student_name, social_awareness_Description__c, self_management_description__c, self_awareness_description__c, SEL_composite_description__c, relationship_skills_description__c, personal_responsibility_description__c, optimistic_thinking_description__c, goal_directed_behavior_description__c, decision_making_description__c, MOSTRECENT)
	select student__c, date_administered__c, ASSESSMENT_NAME, student_name, social_awareness_Description__c, self_management_description__c, self_awareness_description__c, SEL_composite_description__c, relationship_skills_description__c, personal_responsibility_description__c, optimistic_thinking_description__c, goal_directed_behavior_description__c, decision_making_description__c, MOSTRECENT 
	from SDW_Stage_Prod.dbo.vw_ST_SPMBEH_DESSATable (nolock)

	truncate table Eval_Labs.dbo.SR_ST_SPMBEH_IntSessions----------------------------------------------------

	insert into Eval_Labs.dbo.SR_ST_SPMBEH_IntSessions(session_dossage, session_date, session_id, student_name, student_ia_beh, section_ia, program_description, session_skills, cy_student_id, cych_accnt_sf_id, student_school_name, student_sf_id,[Intervention_Corps_Member],[Intervention_Corps_Member_ID], business_Unit, Section_Primary_Staff, Section_Primary_Staff_id )
	select session_dossage, session_date, session_id, student_name, student_ia_beh, section_ia, program_description, session_skills, cy_student_id, cych_accnt_sf_id, student_school_name, student_sf_id, [Intervention_Corps_Member],[Intervention_Corps_Member_ID], business_Unit, Section_Primary_Staff, Section_Primary_Staff_id 
	from SDW_Stage_Prod.dbo.vw_ST_SPMBEH_IntSessions (nolock)



	truncate table  Eval_Labs.dbo.SR_ST_Attendance_Suspensions-------------------------------------------------------------------------------

	insert into Eval_Labs.dbo.SR_ST_Attendance_Suspensions(student_sf_id, cych_Accnt_SF_ID, Assessment_Name_ATT,Average_Daily_Attendance__c, Assessment_Name_SUS, Number_of_Suspensions__c, Number_of_Detentions__c, Number_of_Office_Referrals__c, Quarter, Date_Administered__c, cysch_accnt_sf_id, SUSPENSION_IND, DETENTION_IND, OFFICEREFERRAL_IND)
	select student_sf_id, cych_Accnt_SF_ID,  Assessment_Name_ATT, 
	ISNULL(cast(NULLIF(Average_Daily_Attendance,'') as numeric(18,3)),NULL)
	, Assessment_Name_SUS, 
	ISNULL(cast(NULLIF(Number_of_Suspensions,'') as numeric(18,1)),NULL), 
	ISNULL(cast(NULLIF(Number_of_Detentions,'') as numeric(18,1)),NULL), 
	ISNULL(cast(NULLIF(Number_of_Office_Referrals,'') as numeric(18,1)),NULL), Quarter, Date_Administered, cysch_accnt_sf_id, SUSPENSION_IND, DETENTION_IND, OFFICEREFERRAL_IND
	from SDW_Stage_Prod.dbo.vw_ST_Attendance_Suspensions (nolock)
	

	truncate table SDW_Stage_Prod.[dbo].[ATTENDANCE_AND_SUSPENSIONS] ----------------------------------------

	insert into SDW_Stage_Prod.[dbo].[ATTENDANCE_AND_SUSPENSIONS] (student_sf_id,cych_Accnt_SF_ID,Student ,Section_Primary_Staff,Section_Primary_Staff_ID,Assessment_Name_ATT,Average_Daily_Attendance,Number_of_Suspensions,Number_of_Detentions,Number_of_Office_Referrals, Quarter,Date_Administered,cysch_accnt_sf_id,Suspension_Ind,DETENTION_IND,OFFICEREFERRAL_IND)
	select student_sf_id,cych_Accnt_SF_ID,Student__c ,Section_Primary_Staff,Section_Primary_Staff_ID,Assessment_Name__c,
	CASE WHEN ISNUMERIC(Average_Daily_Attendance__c) <> 1 THEN NULL ELSE Average_Daily_Attendance__c END,
	NULL,NULL,NULL,Quarter,convert(date,Date_Administered__c),cysch_accnt_sf_id,NULL,NULL,NULL
	from SDW_Stage_Prod.dbo.vw_AVG_DAILY_ATT
	

	

	insert into SDW_Stage_Prod.[dbo].[ATTENDANCE_AND_SUSPENSIONS] (student_sf_id,cych_Accnt_SF_ID,Student ,Section_Primary_Staff,Section_Primary_Staff_ID,Assessment_Name_SUS,Average_Daily_Attendance,Number_of_Suspensions,Number_of_Detentions,Number_of_Office_Referrals, Quarter,Date_Administered,cysch_accnt_sf_id,Suspension_Ind,DETENTION_IND,OFFICEREFERRAL_IND)
	select a.student_sf_id,a.cych_Accnt_SF_ID,a.Student__c ,a.Section_Primary_Staff,a.Section_Primary_Staff_ID,a.Assessment_Name__c,'',a.Number_of_Suspensions__c,a.Number_of_Detentions__c,a.Number_of_Office_Referrals__c,a.Quarter,convert(date,a.Date_Administered__c),a.cysch_accnt_sf_id,
	case when a.Number_of_Suspensions__c	  IS NOT NULL and a.Number_of_Suspensions__c	  <> '0.0' THEN 1 
	     when a.number_of_suspensions__c      IS NOT NULL and a.Number_of_suspensions__c       = '0.0' THEN 0 else NULL END as SUSPENSION_IND,
	case when a.Number_of_Detentions__c		  IS NOT NULL and a.Number_of_Detentions__c		  <> '0.0' THEN 1 
	     when a.Number_of_Detentions__c       IS NOT NULL and a.Number_of_Detentions__c        = '0.0' THEN 0 else NULL END as DETENTION_IND,
	case when a.Number_of_Office_Referrals__c IS NOT NULL and a.Number_of_Office_Referrals__c <> '0.0' THEN 1 
	     when a.Number_of_Office_Referrals__c IS NOT NULL and a.Number_of_Office_Referrals__c  = '0.0' THEN 0 else NULL END as OFFICEREFERRAL_IND
	from SDW_Stage_Prod.dbo.vw_NUM_OF_SUSPENSIONS a left outer join SDW_Stage_Prod.[dbo].[ATTENDANCE_AND_SUSPENSIONS] b 
	ON  a.student_sf_id = b.student_sf_id
	WHERE b.student_sf_id IS NULL 
	

	UPDATE SDW_Stage_Prod.[dbo].[ATTENDANCE_AND_SUSPENSIONS] SET
	[Assessment_Name_SUS] =   b.[Assessment_Name__c],
	[Number_of_Suspensions] = b.[Number_of_Suspensions__c],
	[Number_of_Detentions] =  b.[Number_of_Detentions__c],
	[Number_of_Office_Referrals] = b.[Number_of_Office_Referrals__c]
	
	FROM SDW_Stage_Prod.[dbo].[ATTENDANCE_AND_SUSPENSIONS] a inner join SDW_Stage_Prod.dbo.vw_NUM_OF_SUSPENSIONS b
	ON a.student_sf_id = b.student_sf_id
	WHERE Assessment_Name_ATT = 'Reporting Period ADA Tracker - ATTENDANCE'

	

	UPDATE SDW_Stage_Prod.[dbo].[ATTENDANCE_AND_SUSPENSIONS] SET
	
	[SUSPENSION_IND] =     case when a.Number_of_Suspensions	  IS NOT NULL and a.Number_of_Suspensions	    <> '0.0' THEN 1 
							    when a.number_of_suspensions      IS NOT NULL and a.Number_of_suspensions       =  '0.0' THEN 0 else NULL END ,
	[DETENTION_IND] =      case when a.Number_of_Detentions		  IS NOT NULL and a.Number_of_Detentions		<> '0.0' THEN 1 
	                            when a.Number_of_Detentions       IS NOT NULL and a.Number_of_Detentions        =  '0.0' THEN 0 else NULL END ,
	[OFFICEREFERRAL_IND] = case when a.Number_of_Office_Referrals IS NOT NULL and a.Number_of_Office_Referrals  <> '0.0' THEN 1 
	                            when a.Number_of_Office_Referrals IS NOT NULL and a.Number_of_Office_Referrals  =  '0.0' THEN 0 else NULL END
	FROM SDW_Stage_Prod.[dbo].[ATTENDANCE_AND_SUSPENSIONS] a inner join SDW_Stage_Prod.dbo.vw_NUM_OF_SUSPENSIONS b
	ON a.student_sf_id = b.student_sf_id
	WHERE Assessment_Name_ATT = 'Reporting Period ADA Tracker - ATTENDANCE'


END






GO
