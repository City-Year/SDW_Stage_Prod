USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Assessement_Student_final_WIP]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


















CREATE VIEW [dbo].[vw_Assessement_Student_final_WIP]
AS

SELECT   Distinct B.Student_Name
		, B.Student_First
		, B.Student_Last
		, B.Student_IA_Att
		, B.Student_IA_Beh
		, B.Student_IA_ELA
		, B.Student_IA_Math
		, B.Student_TTL_IAs_Assigned
		, B.Student_Gender
		, B.Student_Ethnicity
		, B.Student_ELL
		, B.Student_Grade
		, B.Student_DOB
		, B.Student_District_ID
		, B.Student_School_Year
		, B.CY_Student_ID
		, B.Student_School_Name
		, B.Student_SF_ID
		, A.Id AS Assessment_ID
		, A.Assessment_Name__c AS Assessment_Name
		, CASE 
			WHEN A.Assessment_Name__c LIKE '%Math%'
				OR A.Assessment_Name__c LIKE '%Algebra%' THEN 'MATH'
			WHEN A.Assessment_Name__c LIKE '%ELA%' 
				OR A.Assessment_Name__c LIKE '%Reading%'
				OR A.Assessment_Name__c LIKE '%English%'
				THEN 'ELA'
			WHEN A.Assessment_Name__c LIKE '%Attendance%' THEN 'ATTENDANCE'
			WHEN A.Assessment_Name__c LIKE '%50 Acts%' 
				OR A.Assessment_Name__c LIKE '%Behavior%'
				OR A.Assessment_Name__c LIKE '%SEL%'
				OR A.Assessment_Name__c LIKE '%DESSA%'
				THEN 'BEHAVIOR'
			ELSE 'Needs Case IA' 
			END AS Assessment_IA
		, A.CreatedDate
		, A.CreatedById
		, C.Name AS CreatedBy
		, A.LastModifiedDate
		, A.LastModifiedById
		, A.X0_to_100_Scale_Score__c
		, X0_to_100_Scale_Score_for_Sum_Reports__c = '000' -- A.X0_to_100_Scale_Score_for_Sum_Reports__c
		, A.X0_to_100_Scale_Student_Target_Score__c
		, A.X0_to_1000_Scaled_Score__c
		, X0_to_1000_Scaled_Score_for_Sum_Reports__c  = '000' -- A.X0_to_1000_Scaled_Score_for_Sum_Reports__c
		, A.X0_to_1000_Student_Target_Score__c
		, A.X0_to_300_Scaled_Score__c
		, X0_to_300_Scaled_Score_for_Sum_Reports__c = '000' --A.X0_to_300_Scaled_Score_for_Sum_Reports__c
		, A.X0_to_300_Student_Target_Score__c 
		, A.A_to_Z_Alpha_Scale__c
		, A_to_Z_Alpha_Scale_for_Summative_Reports__c = '000' --A.A_to_Z_Alpha_Scale_for_Summative_Reports__c
		, A.AIMSweb_ELA_Scale_score__c
		, A.AIMSweb_ELA_Student_Target_Score__c
		, A.AIMSweb_Math_Scale_score__c
		, A.AIMSweb_Math_Student_Target_Score__c
		, AIMSweb_Scale_score_for_Sum_Reports__c = '000'  --A.AIMSweb_Scale_score_for_Sum_Reports__c
		, BPS_Predict_Scaled_Score_for_Sum_Reports__c = '000' --A.BPS_Predict_Scaled_Score_for_Sum_Reports__c
		, A.BPS_Predictive_Scaled_Score__c
		, Check_ins__c = '000' --A.Check_ins__c
		--, A.Date_Administered__c, 
		, A.Days_Enrolled__c
		, DIBELS_GLE_Score_for_Summative_Reports__c = '000' --A.DIBELS_GLE_Score_for_Summative_Reports__c
		, A.DIBELS_GLE_Student_Target_Score__c
		, A.DIBELS_Grade_Level_Equivalent_Score__c
		, A.District_Benchmark__c
		, District_Benchmark_for_Summative_Reports__c = '000' --A.Check_ins__c
		, DRA_GLE_Score_for_Summative_Reports__c = '000'  --A.DRA_GLE_Score_for_Summative_Reports__c
		, A.DRA_GLE_Student_Target_Score__c
		, A.DRA_Grade_Level_Equivalent_Score__c
		, A.Explore_Composite_Score__c
		, Explore_Composite_Score_for_Sum_Reports__c = '000'   --A.Explore_Composite_Score_for_Sum_Reports__c
		, A.FSA_Algebra_Score__c
		, FSA_Algebra_Score_for_Summative_Reports__c = '000'  --A.FSA_Algebra_Score_for_Summative_Reports__c
		, A.FSA_ELA_Score__c
		, FSA_ELA_Score_for_Summative_Reports__c = '000'  --A.FSA_ELA_Score_for_Summative_Reports__c
		, A.FSA_Math_Score__c
		, FSA_Math_Score_for_Summative_Reports__c = '000' --A.FSA_Math_Score_for_Summative_Reports__c
		, Goals_set__c = '000'  --A.Goals_set__c
		, A.Greatness_Lesson__c
		, IRLA_GLE_Score_for_Summative_Reports__c = '000'  --A.IRLA_GLE_Score_for_Summative_Reports__c
		, A.IRLA_GLE_Student_Target_Score__c, A.IRLA_Grade_Level_Equivalent_Score__c
		, A.Jerry_Johns_BRI_GLE_Score__c
		, Jerry_Johns_BRI_GLE_Score_for_Sum_Report__c = '000'  --A.Jerry_Johns_BRI_GLE_Score_for_Sum_Report__c
		, Leadership_Lesson__c = '000'  --A.Leadership_Lesson__c
		, A.Lexia_Step_Number__c
		, Lexia_Step_Number_for_Summative_Reports__c = '000'  --A.Lexia_Step_Number_for_Summative_Reports__c
		, A.Lexile_Score__c
		, Lexile_Score_for_Summative_Reports__c = '000'  --A.Lexile_Score_for_Summative_Reports__c
		, A.Lexile_Student_Target_Score__c
        , Local_Benchmark__c = '000' --Added back in as null to facilitate loading A.Local_Benchmark__c
		, National_Benchmark__c = '000' --A.National_Benchmark__c
		, A.Number_of_Absences__c
		, A.Number_of_Detentions__c
		, A.Number_of_Excused_Absences__c
		, A.Number_of_In_School_Suspensions__c
		, A.Number_of_Office_Referrals__c
		, A.Number_of_Out_of_School_Suspensions__c
		, A.Number_of_Suspensions__c
		, A.Number_of_Tardies__c
		, A.Number_of_Unexcused_Absences__c
		, Percentile_for_Summative_Reports__c = '000' --A.Percentile_for_Summative_Reports__c
		, Percentile_PL__c = '000'  --A.Percentile_PL__c
		, A.Quantile_Score__c
		, Quantile_Score_for_Summative_Reports__c = '' --Added back in as null to facilitate loading A.Quantile_Score_for_Summative_Reports__c
		, A.Quantile_Student_Target_Score__c
		, A.Scantron_Scaled_Score__c
		, Scantron_Scaled_Score_for_Sum_Reports__c = '000'  --A.Scantron_Scaled_Score_for_Sum_Reports__c
		, A.Scantron_Student_Target_Score__c
		, A.SEL_Composite_Description__c
		, A.SEL_Composite_Percentile__c
		, A.SEL_Composite_T_Score__c
		, STAR_GLE_Score_for_Summative_Reports__c = '000'  --A.STAR_GLE_Score_for_Summative_Reports__c
		, A.STAR_GLE_Student_Target_Score__c
		, A.STAR_Grade_Level_Equivalent_Score__c
		, A.Testing_Grade_Level__c
		, A.Time_Period__c
		, TRC_Alpha_Scale_for_Summative_Reports__c = '000'  --A.TRC_Alpha_Scale_for_Summative_Reports__c
		, A.TRC_Alpha_Scale_Score__c
		, A.TRC_Alpha_Scale_Student_Target_Score__c
		, Weekly_goal_progress__c = '000'  --A.Weekly_goal_progress__c
		, Weekly_goals_set__c = '000'  --A.Weekly_goals_set__c
		, A.Student__c
		, A.Type__c
		, A.Average_Daily_Attendance__c
		, A.Date_Administered__c
		, A.Decision_Making_Description__c
		, A.Difficulty_of_Goal__c
		, A.Decision_Making_Percentile__c
		, A.Decision_Making_Raw_Score__c
		--, A.Decision_Making_T_Score__c
		, A.Goal_progress__c
		, A.Decision_Making_T_Score__c
		, A.Date_of_Goal_Completion__c
		, A.Goal_directed_Behavior_Description__c
		, A.Number_of_Acts_of_Greatness_for_week__c
		, A.Goal_directed_Behavior_Percentile__c
		, A.Goal_directed_Behavior_Raw_Score__c
		, A.Goal_directed_Behavior_T_Score__c
		, A.Optimistic_Thinking_Description__c
		, A.Optimistic_Thinking_Percentile__c
		, A.Optimistic_Thinking_Raw_Score__c
		, A.Optimistic_Thinking_T_Score__c
		, A.Personal_Responsibility_Description__c
		, A.Personal_Responsibility_Percentile__c
		, A.Personal_Responsibility_Raw_Score__c
		, A.Personal_Responsibility_T_Score__c
		, A.Relationship_Skills_Description__c
		, A.Relationship_Skills_Percentile__c
		, A.Relationship_Skills_Raw_Score__c
		, A.Relationship_Skills_T_Score__c
		, A.SEL_Composite_Raw_Score__c
		, A.Self_Awareness_Description__c
		, A.Self_Awareness_Percentile__c
		, A.Self_Awareness_Raw_Score__c
		, A.Self_Awareness_T_Score__c
		, A.Self_Management_Description__c
		, A.Self_Management_Percentile__c
		, A.Self_Management_Raw_Score__c
		, A.Self_Management_T_Score__c
		, A.Social_Awareness_Description__c
		, A.Social_Awareness_Percentile__c
		, A.Social_Awareness_Raw_Score__c
		, A.Social_Awareness_T_Score__c
		, A.Number_of_Acts_of_Leadership_for_week__c
		, Scan_Reading_Scale__c = '000'  --A.Scan_Reading_Scale__c
		, Scan_Math_Scale__c = '000'  --A.Scan_Math_Scale__c
		, D.Marking_Period AS MarkingPeriod
		, B.Business_Unit
		, 'N/A' AS Region
		, 'N/A' AS District
		, 'N/A' AS Team
		, 'N/A' AS TeamDescription
		, A.Year_Over_Year__c
		, A.Scale_Score__c
		, OwnerId = '000'  --A.OwnerId
		, A.Student_Id__c
		, A.Student_Name__c
		, A.Performance_Value_ID__c
		, A.Performance_Value_Name__c
		, B.cysch_Accnt_SF_ID
		, B.cych_Accnt_SF_ID
FROM         dbo.vw_Student_Information AS B lEFT JOIN
dbo.Assesment__c AS A WITH (NOLOCK) ON
	B.Student_SF_ID = A.Student__c LEFT JOIN
dbo.User_SF AS C WITH (NOLOCK) ON
	A.CreatedById = C.ID LEFT JOIN
dbo.vw_Assessement_W_ReportingPeriods AS D WITH (NOLOCK) ON
	A.Id = D.Assessment_ID













GO
