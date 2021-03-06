USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_EVAL_Report_Student_DESSA]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[vw_EVAL_Report_Student_DESSA]
AS
SELECT     TOP (100) PERCENT a.Student_Name, b.Business_Unit, a.student_school_name, a.student_grade, a.student_gender, a.afterschoolpart, a.student_ia_att, 
                      a.Student_IA_Beh, a.Student_IA_ELA, a.Student_IA_Math, c.date_administered__c, c.social_awareness_Description__c, c.self_management_description__c, 
                      c.self_awareness_description__c, c.SEL_composite_description__c, c.relationship_skills_description__c, c.personal_responsibility_description__c, 
                      c.optimistic_thinking_description__c, c.goal_directed_behavior_description__c, c.decision_making_description__c, c.MOSTRECENT, 
                      c.date_administered__c AS Expr1, d.Decision_Making_T_Score__c, d.Goal_directed_Behavior_T_Score__c, d.Optimistic_Thinking_T_Score__c, 
                      d.Personal_Responsibility_T_Score__c, d.Relationship_Skills_T_Score__c, d.SEL_Composite_T_Score__c, d.Self_Awareness_T_Score__c, 
                      d.Self_Management_T_Score__c, d.Social_Awareness_T_Score__c, d.Month_Administered
FROM         dbo.SR_ST_SPMBEH_Demographics AS a INNER JOIN
                      dbo.SR_ST_SPMBEH_Body AS b ON a.Student_Name = b.Student_Name INNER JOIN
                      dbo.SR_ST_SPMBEH_DESSATable AS c ON a.Student_Name = c.student_name INNER JOIN
                      dbo.SR_ST_SPMBEH_DESSAChart AS d ON a.Student_SF_ID = d.student__c
ORDER BY a.Student_Name

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 114
               Right = 473
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 306
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 294
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2115
         Alias = 900
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_EVAL_Report_Student_DESSA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_EVAL_Report_Student_DESSA'
GO
