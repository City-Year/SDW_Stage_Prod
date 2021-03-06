USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Assessement_W_ReportingPeriods]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_Assessement_W_ReportingPeriods]
AS
SELECT     B.Student_Name
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
		, H.Name__c AS Marking_Period
		, A.CreatedDate
		, A.CreatedById
		, C.Name AS CreatedBy
		, A.LastModifiedDate
		, A.LastModifiedById
		, A.X0_to_100_Scale_Score__c
		--, A.X0_to_100_Scale_Score_for_Sum_Reports__c
		, A.X0_to_100_Scale_Student_Target_Score__c
		, A.X0_to_1000_Scaled_Score__c
		--, A.X0_to_1000_Scaled_Score_for_Sum_Reports__c
		, A.X0_to_1000_Student_Target_Score__c
		, A.X0_to_300_Scaled_Score__c
		--, A.X0_to_300_Scaled_Score_for_Sum_Reports__c
		, A.X0_to_300_Student_Target_Score__c
		, A.A_to_Z_Alpha_Scale__c
		--, A.A_to_Z_Alpha_Scale_for_Summative_Reports__c
		, A.AIMSweb_ELA_Scale_score__c
		, A.AIMSweb_ELA_Student_Target_Score__c
		, A.AIMSweb_Math_Scale_score__c
		, A.AIMSweb_Math_Student_Target_Score__c
		--, A.AIMSweb_Scale_score_for_Sum_Reports__c
		--, A.BPS_Predict_Scaled_Score_for_Sum_Reports__c
		, A.BPS_Predictive_Scaled_Score__c
--, A.Check_ins__c
		, A.Date_Administered__c
		, A.Days_Enrolled__c
		--, A.DIBELS_GLE_Score_for_Summative_Reports__c
		, A.DIBELS_GLE_Student_Target_Score__c
		, A.DIBELS_Grade_Level_Equivalent_Score__c
		, A.District_Benchmark__c
		--, A.District_Benchmark_for_Summative_Reports__c
		--, A.DRA_GLE_Score_for_Summative_Reports__c
		, A.DRA_GLE_Student_Target_Score__c
		, A.DRA_Grade_Level_Equivalent_Score__c
		, A.Explore_Composite_Score__c
		--, A.Explore_Composite_Score_for_Sum_Reports__c
		, A.FSA_Algebra_Score__c
		--, A.FSA_Algebra_Score_for_Summative_Reports__c
		, A.FSA_ELA_Score__c
		--, A.FSA_ELA_Score_for_Summative_Reports__c
		, A.FSA_Math_Score__c
		--, A.FSA_Math_Score_for_Summative_Reports__c
--, A.Goals_set__c
		, A.Greatness_Lesson__c
		--, A.IRLA_GLE_Score_for_Summative_Reports__c
		, A.IRLA_GLE_Student_Target_Score__c
		, A.IRLA_Grade_Level_Equivalent_Score__c
		, A.Jerry_Johns_BRI_GLE_Score__c
		--, A.Jerry_Johns_BRI_GLE_Score_for_Sum_Report__c
--, A.Leadership_Lesson__c
		, A.Lexia_Step_Number__c
		--, A.Lexia_Step_Number_for_Summative_Reports__c
		, A.Lexile_Score__c
		--, A.Lexile_Score_for_Summative_Reports__c
		, A.Lexile_Student_Target_Score__c
--, A.Local_Benchmark__c
--, A.National_Benchmark__c
		, A.Number_of_Absences__c
		, A.Number_of_Detentions__c
		, A.Number_of_Excused_Absences__c
		, A.Number_of_In_School_Suspensions__c
		, A.Number_of_Office_Referrals__c
		, A.Number_of_Out_of_School_Suspensions__c
		, A.Number_of_Suspensions__c
		, A.Number_of_Tardies__c
		, A.Number_of_Unexcused_Absences__c
		--, A.Percentile_for_Summative_Reports__c
--, A.Percentile_PL__c
		, A.Quantile_Score__c
		--, A.Quantile_Score_for_Summative_Reports__c
		, A.Quantile_Student_Target_Score__c
		, A.Scantron_Scaled_Score__c
		--, A.Scantron_Scaled_Score_for_Sum_Reports__c
		, A.Scantron_Student_Target_Score__c
		--, A.STAR_GLE_Score_for_Summative_Reports__c
		, A.STAR_GLE_Student_Target_Score__c
		, A.STAR_Grade_Level_Equivalent_Score__c
		, A.Testing_Grade_Level__c
		, A.Time_Period__c
		--, A.TRC_Alpha_Scale_for_Summative_Reports__c
		, A.TRC_Alpha_Scale_Score__c
		, A.TRC_Alpha_Scale_Student_Target_Score__c
		--, A.Average_Daily_Attendance__c	--A.Average_Daily_Attendance__c
		--, A.Cumulative__c				--A.Cumulative__c
--, A.Weekly_goal_progress__c
--, A.Weekly_goals_set__c
		, A.Student__c
		, A.Type__c
--, A.Scan_Reading_Scale__c
--, A.Scan_Math_Scale__c
		, 'N/A' AS MarkingPeriod
		, B.Business_Unit
		, 'N/A' AS Region
		, 'N/A' AS District
		, 'N/A' AS Team
		, 'N/A' AS TeamDescription
		, A.Year_Over_Year__c
		, A.Scale_Score__c
--, A.OwnerId
		, A.Student_Id__c
		, A.Student_Name__c
		, A.Performance_Value_ID__c
		, A.Performance_Value_Name__c
		, B.cysch_Accnt_SF_ID
		, B.cych_Accnt_SF_ID
FROM         dbo.Assesment__c AS A INNER JOIN
                      dbo.vw_Student_Information AS B WITH (NOLOCK) ON A.Student__c = B.Student_SF_ID INNER JOIN
                      dbo.Contact AS C WITH (NOLOCK) ON A.CreatedById = C.User__c  INNER JOIN
                      dbo.Time_Element__c AS D WITH (NOLOCK) ON B.Student_School_Year = D.Name__c INNER JOIN
                      dbo.Account AS E WITH (NOLOCK) ON B.cysch_Accnt_SF_ID = E.Id INNER JOIN 
                      dbo.Setup__c AS F WITH (NOLOCK) ON F.School__c = E.Id INNER JOIN
                      dbo.Time_Element__c AS G WITH (NOLOCK) ON F.Term__c = G.ID INNER JOIN 
                      dbo.Time_Element__c AS H WITH (NOLOCK) ON H.Parent_Time_Element__c = G.Id AND A.Date_Administered__c BETWEEN H.Date_Start_Date__c AND H.End_Date__c
                       
                      
WHERE F.Active__c = '1'                     



GO
