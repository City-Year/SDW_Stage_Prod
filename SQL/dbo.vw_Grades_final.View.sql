USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Grades_final]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_Grades_final]
AS
SELECT DISTINCT b.Student_Name
	, b.Student_First
	, b.Student_Last
	, b.Student_IA_Att
	, b.Student_IA_Beh
	, b.Student_IA_ELA
	, b.Student_IA_Math
	, b.Student_TTL_IAs_Assigned
	, b.Student_Gender
	, b.Student_Ethnicity
	, b.Student_ELL
	, b.Student_Grade
	, b.Student_DOB
	, b.Student_District_ID
	, b.Student_School_Year
	, b.CY_Student_ID
	, b.Student_School_Name
	, b.Student_SF_ID
	, a.Section_Name
	, a.Core_Class__c
	, a.Assignment_Due_Date
	, a.Assignment_Marking_Period
	, a.Type__c AS Assignment_Type
	, a.Assignment_Name

--[Comment] Update case statement CSD 06/07/16 rationalizing Assignment_Subject value translation based on all a.section_names found in section__c table --
	,CASE WHEN ISNULL(a.Section_Name, '') LIKE '%- ELA%' OR ISNULL(a.Section_Name, '') LIKE '%-ELA%' OR ISNULL(a.Section_Name, '') LIKE '% LITERACY%' THEN 'ELA/Literacy'
		  WHEN ISNULL(a.Section_Name, '') LIKE '%ATTENDANCE%' THEN 'Attendance'
		  WHEN ISNULL(a.Section_Name, '') LIKE '% MATH %' OR ISNULL(a.Section_Name, '') LIKE '%- MATH%'OR ISNULL(a.Section_Name, '') LIKE '%-MATH%' THEN 'Math'
		  ELSE 'N/A' 
		  END AS Assignment_Subject	

/* [dropped 06/07/16 CSD] replaced with code above --------
	, CASE WHEN isnull(a.Section_Name, '') LIKE '%ELA%' THEN 'ELA/Literacy' 
		   WHEN isnull(a.Section_Name, '') LIKE '%- ADA' THEN 'Attendance' 
		   WHEN isnull(a.Section_Name, '') LIKE '% Math %' THEN 'Math' 
		   ELSE 'N/A' 
		   END AS Assignment_Subject*/
	
	, a.Create_by
	, a.Entry_date 
	, a.Grade_Name
	, a.Assignment_Entered_Grade
	, a.Assignment_Grade_Number
	, a.Assignment_Weighted_Grade_Vale
	, b.Business_Unit
	, c.Staff_Name AS CorpsName1
	, c.StaffEmail AS CorpsEmail1
	, c.TeamName
	, c.TeamDescription
	, b.cysch_Accnt_SF_ID
	, b.cych_Accnt_SF_ID
	, a.Standard_Name
	, a.Grade_For_Standard
	, a.Identifier__c
	, a.Long_Text__c
--[Comment] Update case statement CSD 06/07/16 rationalizing Grades_IA value translation based on all a.section_names found in section__c table --
			
			, CASE WHEN section_name LIKE '%- ELA%' OR section_name LIKE '%-ELA%' OR section_name LIKE '% LITERACY%' THEN 'ELA' 
				   WHEN section_name LIKE '%Homeroom%' THEN 'Homeroom' 
				   WHEN section_name LIKE '% Math %' OR section_name LIKE '%- MATH%' OR section_name LIKE '%-MATH%' THEN 'Math' 
				   ELSE 'Other' 
				   END AS Grades_IA			

/* [dropped 06/07/16 CSD] replaced with code above --------			
			, CASE WHEN section_name LIKE '%ELA%' THEN 'ELA'
				WHEN section_name LIKE '%Homeroom%' THEN 'Homeroom'
				WHEN section_name LIKE '%Math%' THEN 'Math'
				ELSE 'Other'
			  END AS Grades_IA*/
	, 'N/A' AS Session_Skills
	, 'N/A' AS Program_Description
FROM         dbo.vw_Student_Information AS b LEFT OUTER JOIN
                      dbo.vw_Gradebook AS a WITH (nolock) ON a.Student_SalesForce_ID = b.Student_SF_ID LEFT OUTER JOIN
                      dbo.vw_Staff_Team_Info AS c WITH (nolock) ON a.StaffID1 = c.Id







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
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "a"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 309
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 399
               Right = 231
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Grades_final'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Grades_final'
GO
