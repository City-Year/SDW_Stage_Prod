USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_STF_SEC_4_SCH_ADMS_ORL]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*use SDW_Stage_PROD
SELECT 
a.Id AS S_S_Staff_ID
,Count(e.ID) AS S_S_Section_ID_Count
,'1' Is_Active__c
,a.ID__c+'_'+e.ID AS S_S_Ref_ID 
FROM 
Staff__c a INNER JOIN
User_SF  b WITH(nolock) ON 
Substring(b.ID,1,15)= a.User_ID__c INNER JOIN 
Profile c WITH(nolock) ON b.ProfileId = c.Id INNER JOIN
Account d WITH(nolock) ON a.Organization__c = d.ID INNER JOIN
Section__c e WITH(nolock)ON a.Organization__c = e.School__c
WHERE b.Site__c = 'Orlando' and c.Id ='00e1a000000hyP7AAI' and d.Site__c = 'orlando'
Group by a.Id--,e.Id */
CREATE VIEW [dbo].[vw_STF_SEC_4_SCH_ADMS_ORL]
AS
SELECT     a.Id AS S_S_Staff_ID, e.Id AS S_S_Section_ID, '1' AS Is_Active__c, a.ID__c + '_' + e.Id AS S_S_Ref_ID
FROM         dbo.Staff__c AS a INNER JOIN
                      dbo.User_SF AS b WITH (nolock) ON SUBSTRING(b.Id, 1, 15) = a.User_ID__c INNER JOIN
                      dbo.Profile AS c WITH (nolock) ON b.ProfileId = c.Id INNER JOIN
                      dbo.Account AS d WITH (nolock) ON a.Organization__c = d.Id INNER JOIN
                      dbo.Section__c AS e WITH (nolock) ON a.Organization__c = e.School__c LEFT OUTER JOIN
                      dbo.Staff_Section__c AS f WITH (nolock) ON a.Id = f.Staff__c AND e.Id = f.Section__c
WHERE     (b.Site__c = 'Orlando') AND (c.Id = '00e1a000000hyP7AAI') AND (d.Site__c = 'orlando') AND (f.Staff__c IS NULL) AND (f.Section__c IS NULL)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[36] 2[21] 3) )"
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
               Right = 275
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 358
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 315
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 438
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 322
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "f"
            Begin Extent = 
               Top = 6
               Left = 313
               Bottom = 114
               Right = 566
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
         Alias = 1365
         Table = 1170
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_STF_SEC_4_SCH_ADMS_ORL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Output = 720
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_STF_SEC_4_SCH_ADMS_ORL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_STF_SEC_4_SCH_ADMS_ORL'
GO
