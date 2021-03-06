USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Intervention_final]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Intervention_final]
AS
SELECT DISTINCT 
                      a.Amount_of_Time__c AS Session_Dossage
					  , a.Intervention_Session_Date__c AS Session_Date
					  -- added ISR ID by SJG--
					  , a.Id AS Session_Result_ID 
					  , d.Id AS Session_ID
					  , e.Student_Name
					  , e.Student_First
					  , e.Student_Last
					  , e.Student_IA_Att
					  , e.Student_IA_Beh
					  , e.Student_IA_ELA
					  , e.Student_IA_Math
					  , e.Student_TTL_IAs_Assigned
					  , c.Indicator_Area__c AS Section_IA
					  , c.Auto_Name__c AS Section_Name
					  , j.Name AS Program_Description
					  , d.Skills_Covered_for_the_Session__c AS Session_Skills
					  , e.Student_Gender
					  , e.Student_Ethnicity
					  , e.Student_ELL
					  , e.Student_IEP
					  , e.Student_Grade
					  , e.Student_DOB
					  , e.Student_District_ID
					  , e.Student_School_Year
					  , e.CY_Student_ID
					  , e.Student_School_Name
					  , e.cysch_Accnt_SF_ID
					  , e.cych_Accnt_SF_ID
					  , l.Subtype__c as SchoolType
					  --, ISNULL(i.IS_DIPLOMAS_NOW_SCHOOL, '0') AS DN_Indicator
					  ,CASE
							When i.IS_DIPLOMAS_NOW_SCHOOL = 0 Then 'WSWC'
							Else 'DN'
						END AS DN_Indicator
					  , i.CYCHANNEL_ACCOUNT_NUMBER AS CYCH_SchoolID
					  , e.Student_SF_ID
					  , ISNULL(f.Name, 'N/A') AS Intervention_Corps_Member
					  , g.StaffEmail, ISNULL(f.Id, 'N/A') AS Intervention_Corps_Member_ID
					  , e.Business_Unit
					  , g.TeamName
					  , g.TeamDescription
					  , 'N/A' AS MarkingPeriod
					  , CASE 
							WHEN isnull(c.Auto_Name__c, '') LIKE '%ELA%' THEN 'ELA/Literacy' 
							WHEN isnull(c.Auto_Name__c, '') LIKE '%ADA%' THEN 'Attendance' 
							WHEN isnull(c.Auto_Name__c, '') LIKE '%Math%' THEN 'Math' ELSE 'N/A' 
						END AS Assignment_Subject
					  , k.Name AS Section_Primary_Staff
					  , k.Id AS Section_Primary_Staff_ID
FROM            dbo.vw_Student_Information			AS e 
inner join [ODW_Stage].[dbo].[Account]				AS l on e.cych_Accnt_SF_ID = l.Id
LEFT OUTER JOIN dbo.Student_Section__c				AS b WITH (nolock) ON b.Student__c = e.Student_SF_ID 
LEFT OUTER JOIN dbo.Intervention_Session_Result__c	AS a WITH (nolock) ON b.Id = a.Student_Section__c 
LEFT OUTER JOIN dbo.Section__c						AS c WITH (nolock) ON b.Section__c = c.Id 
LEFT OUTER JOIN dbo.Intervention_Session__c			AS d WITH (nolock) ON a.Intervention_Session__c = d.Id 
LEFT OUTER JOIN dbo.Staff__c						AS f WITH (nolock) ON d.Session_Time_Completed_For__c = f.Id 
LEFT OUTER JOIN dbo.vw_Staff_Team_Info				AS g WITH (nolock) ON f.Id = g.Id 
LEFT OUTER JOIN dbo.Account							AS h WITH (nolock) ON e.Student_School_Name = h.Name 
LEFT OUTER JOIN dbo.School_DN_Indicator				AS i WITH (nolock) ON h.Legacy_ID__c = i.SFDC_ACCT_ID 
INNER JOIN  dbo.vw_Flat_Progs_from_Account_Prog		AS j WITH (NOLOCK) ON c.Program__c = j.Program__c 
LEFT OUTER JOIN dbo.Staff__c						AS k			   ON c.Intervention_Primary_Staff__c = k.Id
WHERE     (c.RecordTypeId = '0121a000000VC6RAAW')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[32] 2[21] 3) )"
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
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 328
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "a"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 399
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 531
               Right = 341
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 663
               Right = 304
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "f"
            Begin Extent = 
               Top = 666
               Left = 38
               Bottom = 795
               Right = 292
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "g"
            Begin Extent = 
               Top = 798
               Left = 38
               Bottom = 927
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Intervention_final'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1a', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[32] 2[21] 3) )"
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
         Begin Table = "e"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 328
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "a"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 399
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 531
               Right = 341
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 663
               Right = 304
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "f"
            Begin Extent = 
               Top = 666
               Left = 38
               Bottom = 795
               Right = 292
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "g"
            Begin Extent = 
               Top = 798
               Left = 38
               Bottom = 927
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Intervention_final'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Begin Table = "h"
            Begin Extent = 
               Top = 930
               Left = 38
               Bottom = 1059
               Right = 334
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "i"
            Begin Extent = 
               Top = 1062
               Left = 38
               Bottom = 1191
               Right = 312
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "j"
            Begin Extent = 
               Top = 6
               Left = 305
               Bottom = 118
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "k"
            Begin Extent = 
               Top = 1194
               Left = 38
               Bottom = 1302
               Right = 275
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
         Alias = 2550
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Intervention_final'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2a', @value=N'       Begin Table = "h"
            Begin Extent = 
               Top = 930
               Left = 38
               Bottom = 1059
               Right = 334
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "i"
            Begin Extent = 
               Top = 1062
               Left = 38
               Bottom = 1191
               Right = 312
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "j"
            Begin Extent = 
               Top = 6
               Left = 305
               Bottom = 118
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "k"
            Begin Extent = 
               Top = 1194
               Left = 38
               Bottom = 1302
               Right = 275
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
         Alias = 2550
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Intervention_final'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Intervention_final'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCounta', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Intervention_final'
GO
