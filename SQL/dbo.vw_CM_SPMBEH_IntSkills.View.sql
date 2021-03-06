USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_CM_SPMBEH_IntSkills]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_CM_SPMBEH_IntSkills]
AS
SELECT vw_Intervention_final.Session_Dossage, vw_Intervention_final.Session_Date, vw_Intervention_final.Session_ID, vw_Intervention_final.Student_Name, 
                         vw_Intervention_final.Student_IA_Beh, vw_Intervention_final.Section_IA, vw_Intervention_final.Program_Description, vw_Intervention_final.Session_Skills, 
                         vw_Intervention_final.CY_Student_ID, vw_Intervention_final.cych_Accnt_SF_ID, vw_Intervention_final.Student_School_Name, vw_Intervention_final.Student_SF_ID, 
                         vw_Intervention_final.Intervention_Corps_Member, vw_Intervention_final.Intervention_Corps_Member_ID, vw_Intervention_final.Business_Unit, 
                         vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member AS Section_Primary_Staff, 
                         vw_Section_Staff_to_Int_Staff_IDs.Intervention_Corps_Member_ID AS Section_Primary_Staff_ID,
						 vw_Intervention_Final.student_grade
FROM            vw_Intervention_final LEFT OUTER JOIN
                         vw_Section_Staff_to_Int_Staff_IDs ON vw_Intervention_final.Section_Primary_Staff_ID = vw_Section_Staff_to_Int_Staff_IDs.Section_Primary_Staff_ID
WHERE        (vw_Intervention_final.Section_IA LIKE 'beh%') AND (vw_Intervention_final.Student_IA_Beh = 1) 
                         AND (vw_Intervention_final.Session_Date >= GETDATE() - 42)




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
         Begin Table = "vw_Intervention_final"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 273
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
         Column = 1440
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CM_SPMBEH_IntSkills'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CM_SPMBEH_IntSkills'
GO
