USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Assessement_Student_final]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[vw_Assessement_Student_final]
AS
SELECT DISTINCT

--Student Info 
                      B.Student_Name
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
--Assessment Info                      
                      , A.Id AS Assessment_ID
                      , A.Assessment_Name__c AS Assessment_Name
                      , CASE WHEN A.Assessment_Name__c LIKE '%Math%' OR
								  A.Assessment_Name__c LIKE '%Algebra%' THEN 'MATH' 
						     WHEN A.Assessment_Name__c LIKE '%ELA%' OR
								  A.Assessment_Name__c LIKE '%Reading%' OR
								  A.Assessment_Name__c LIKE '%English%' THEN 'ELA' 
							 WHEN A.Assessment_Name__c LIKE '%Attendance%' THEN 'ATTENDANCE' 
							 WHEN A.Assessment_Name__c LIKE '%50 Acts%' OR
								  A.Assessment_Name__c LIKE '%Behavior%' OR
                                  A.Assessment_Name__c LIKE '%SEL%' OR 
                                  A.Assessment_Name__c LIKE '%DESSA%' 
                             THEN 'BEHAVIOR' 
                             ELSE 'Needs Case IA' 
                         END AS Assessment_IA
                      , A.CreatedDate
                      , A.CreatedById
--User Info                      
                      , C.Name AS CreatedBy
--Assessment Info
                      , A.LastModifiedDate
                      , A.LastModifiedById
                      , A.X0_to_100_Scale_Score__c
                      , '000' AS X0_to_100_Scale_Score_for_Sum_Reports__c
                      , A.X0_to_100_Scale_Student_Target_Score__c
                      , A.X0_to_1000_Scaled_Score__c
                      , '000' AS X0_to_1000_Scaled_Score_for_Sum_Reports__c
                      , A.X0_to_1000_Student_Target_Score__c
                      , A.X0_to_300_Scaled_Score__c
                      , '000' AS X0_to_300_Scaled_Score_for_Sum_Reports__c
                      , A.X0_to_300_Student_Target_Score__c
                      , A.A_to_Z_Alpha_Scale__c
                      , '000' AS A_to_Z_Alpha_Scale_for_Summative_Reports__c
                      , A.AIMSweb_ELA_Scale_score__c
                      , A.AIMSweb_ELA_Student_Target_Score__c
                      , A.AIMSweb_Math_Scale_score__c
                      , A.AIMSweb_Math_Student_Target_Score__c
                      , '000' AS AIMSweb_Scale_score_for_Sum_Reports__c
                      , '000' AS BPS_Predict_Scaled_Score_for_Sum_Reports__c
                      , A.BPS_Predictive_Scaled_Score__c
                      , '000' AS Check_ins__c, A.Days_Enrolled__c
                      , '000' AS DIBELS_GLE_Score_for_Summative_Reports__c
                      , A.DIBELS_GLE_Student_Target_Score__c
                      , A.DIBELS_Grade_Level_Equivalent_Score__c
                      , A.District_Benchmark__c, '000' AS District_Benchmark_for_Summative_Reports__c
                      , '000' AS DRA_GLE_Score_for_Summative_Reports__c
                      , A.DRA_GLE_Student_Target_Score__c
                      , A.DRA_Grade_Level_Equivalent_Score__c
                      , A.Explore_Composite_Score__c
                      , '000' AS Explore_Composite_Score_for_Sum_Reports__c
                      , A.FSA_Algebra_Score__c
                      , '000' AS FSA_Algebra_Score_for_Summative_Reports__c
                      , A.FSA_ELA_Score__c, '000' AS FSA_ELA_Score_for_Summative_Reports__c
                      , A.FSA_Math_Score__c
                      , '000' AS FSA_Math_Score_for_Summative_Reports__c
                      , '000' AS Goals_set__c, A.Greatness_Lesson__c
                      , '000' AS IRLA_GLE_Score_for_Summative_Reports__c
                      , A.IRLA_GLE_Student_Target_Score__c
                      , A.IRLA_Grade_Level_Equivalent_Score__c
                      , A.Jerry_Johns_BRI_GLE_Score__c
                      , '000' AS Jerry_Johns_BRI_GLE_Score_for_Sum_Report__c
                      , '000' AS Leadership_Lesson__c, A.Lexia_Step_Number__c
                      , '000' AS Lexia_Step_Number_for_Summative_Reports__c
                      , A.Lexile_Score__c
                      , '000' AS Lexile_Score_for_Summative_Reports__c
                      , A.Lexile_Student_Target_Score__c
                      , '000' AS Local_Benchmark__c
                      , '000' AS National_Benchmark__c
                      , A.Number_of_Absences__c
                      , A.Number_of_Detentions__c
                      , A.Number_of_Excused_Absences__c
                      , A.Number_of_In_School_Suspensions__c
                      , A.Number_of_Office_Referrals__c
                      , A.Number_of_Out_of_School_Suspensions__c
                      , A.Number_of_Suspensions__c
                      , A.Number_of_Tardies__c
                      , A.Number_of_Unexcused_Absences__c
                      , '000' AS Percentile_for_Summative_Reports__c
                     -- , '000' AS Percentile_PL__c
					  , A.Quantile_Score__c
                      , '' AS Quantile_Score_for_Summative_Reports__c
                      , A.Quantile_Student_Target_Score__c
                      , A.Scantron_Scaled_Score__c
                      , '000' AS Scantron_Scaled_Score_for_Sum_Reports__c
                      , A.Scantron_Student_Target_Score__c
                      , A.SEL_Composite_Description__c
                      , A.SEL_Composite_Percentile__c
                      , A.SEL_Composite_T_Score__c
                      , '000' AS STAR_GLE_Score_for_Summative_Reports__c
                      , A.STAR_GLE_Student_Target_Score__c
                      , A.STAR_Grade_Level_Equivalent_Score__c
                      , A.Testing_Grade_Level__c, A.Time_Period__c
                      , '000' AS TRC_Alpha_Scale_for_Summative_Reports__c
                      , A.TRC_Alpha_Scale_Score__c
                      , A.TRC_Alpha_Scale_Student_Target_Score__c
                      , '000' AS Weekly_goal_progress__c
                      , '000' AS Weekly_goals_set__c
                      , A.Student__c
                      , A.Type__c
                      , A.Average_Daily_Attendance__c
                      , A.Date_Administered__c
                      , A.Decision_Making_Description__c
                      , A.Difficulty_of_Goal__c
                      , A.Decision_Making_Percentile__c
                      , A.Decision_Making_Raw_Score__c
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
					  , A.[Percentile__c]
					  , A.[Percentile_Score__c]
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
                      , '000' AS Scan_Reading_Scale__c
                      , '000' AS Scan_Math_Scale__c
                      , A.Student_Reading_Level__c
					  , A.Sum_of_Tardies_and_Unexcused_Absences__c
					  ,A.TestStartDate__c
					  ,A.TestDurationMinutes__c
					  ,A.TestRITScore__c
					  ,A.TestPercentile__c
					  ,A.FallToFallProjectedGrowth__c
					  ,A.FalltoFallObservedGrowth__c
					  ,A.FallToFallConditionalGrowthIndex__c
					  ,A.FallToFallConditionalGrowthPercentile__c
					  ,A.FallToWinterProjectedGrowth__c
					  ,A.FalltoWinterObservedGrowth__c
					  ,A.FallToWinterConditionalGrowthIndex__c
				      ,A.FallToWinterConditionalGrowthPercentile__c
					  ,A.FallToSpringProjectedGrowth__c
					  ,A.FalltoSpringObservedGrowth__c
					  ,A.FallToSpringConditionalGrowthIndex__c
					  ,A.FallToSpringConditionalGrowthPercentile__c
					  ,A.WinterToWinterProjectedGrowth__c
					  ,A.WinterToWinterObservedGrowth__c
					  ,A.WinterToWinterConditionalGrowthIndex__c
					  ,A.WinterToWinterConditionalGrowthPercentil__c
					  ,A.WinterToSpringProjectedGrowth__c
					  ,A.WinterToSpringObservedGrowth__c
					  ,A.WinterToSpringConditionalGrowthIndex__c
					  ,A.WinterToSpringConditionalGrowthPercentil__c
					  ,A.SpringToSpringProjectedGrowth__c
					  ,A.SpringToSpringObservedGrowth__c
					  ,A.SpringToSpringConditionalGrowthIndex__c
					  ,A.SpringToSpringConditionalGrowthPercentil__c
					  ,A.RITtoReadingScore__c

--Assessment Marking Period Info
                      
                      , D.Marking_Period AS MarkingPeriod

--Student Info
                     
                      , B.Business_Unit, 'N/A' AS Region

--General Info
                      , 'N/A' AS District
                      , CAST('N/A' AS varchar(255)) AS Team
                      , CAST('N/A' AS varchar(255)) AS TeamDescription
                      
 --Assessment Info
                     
                      , A.Year_Over_Year__c
                      , A.Scale_Score__c, '000' AS OwnerId
                      , A.Student_Id__c, A.Student_Name__c
                      , A.Performance_Value_ID__c
                      , A.Performance_Value_Name__c

					  					  , A.Average_Ability_Score__c
					  , A.RCT_Ability_Score__c
					  , A.VKT_Ability_Score__c
					  , A.Maze__c
					  , A.DRA_Oral_Reading__c
					  , A.WRT_Ability_Score__c
						--, A.Percentile__c
				      , A.Daze__c
					  , A.PostTest__c
					  , A.PreTest__c
					  , A.RIT_Score__c
					  , A.DRP_Exam_Score__c
					  , A.SBAC_ELA_Band__c
					  , A.SBAC_Math_Band__c
						--, A.DRP_Proficiency_Level__c
						--, A.SBAC_ELA_Scale_Score__c
						--, A.SBAC_Math_Scale_Score__c
					  , A.DRP_Proficiency_Level__c
					  , A.SBAC_ELA_Scale_Score__c
					  , A.SBAC_Math_Scale_Score__c
					  , A.Percent_Correct__c
						--, A.Percentile__c
					  , A.MSD_Computation_Score__c
						--, A.Student_Reading_Level__c
					  , A.A_to_Z_Alpha_Scale_Student_Target_Score__c
					  , A.Daze_Student_Target_Score__c
					  , A.Maze_Student_Target_Score__c
					  , A.Oral_Reading_Fluency_Student_Target_Scor__c
					  , A.Student_Reading_Level_Target_Score__c
                      
--Student Info
                      , B.cysch_Accnt_SF_ID
                      , B.cych_Accnt_SF_ID

FROM         dbo.vw_Student_Information AS B LEFT OUTER JOIN
                      dbo.Assesment__c AS A WITH (NOLOCK) ON 
							B.Student_SF_ID = A.Student__c LEFT OUTER JOIN
                      dbo.User_SF AS C WITH (NOLOCK) ON 
							A.CreatedById = C.Id LEFT OUTER JOIN
                      dbo.vw_Assessement_W_ReportingPeriods AS D WITH (NOLOCK) ON 
							A.Id = D.Assessment_ID








GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[41] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 250
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "A"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 362
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 358
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 334
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1680
         Alias = 1965
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Assessement_Student_final'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Assessement_Student_final'
GO
