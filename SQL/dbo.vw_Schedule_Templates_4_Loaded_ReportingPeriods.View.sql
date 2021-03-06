USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Schedule_Templates_4_Loaded_ReportingPeriods]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_Schedule_Templates_4_Loaded_ReportingPeriods]
AS
SELECT 0 isDeleted
	  ,a.Name as schoolName
      ,a.[Name_on_Report_card__c]+'_Schdl_Temp' as Name
	  ,Case When Row_number() OVER(ORDER BY a.[Reporting_Period__c]) % 2 = 0 THEN '#00ffff' ELSE '#ff0000' END AS [Color__c] 
      ,a.[External_Id__c]+'_STemplate' as [External_Id__c]
      ,1 [Has_Class__c]
      ,1 [Is_Master__c]
      ,d.ID [Reporting_Period__c]
      ,e.ID [Setup__c]
	  ,2 [Number_of_Periods__c]
  FROM [SDW_Stage_Prod].[dbo].[SS_Load_Reporting_Periods] a inner join 
  Time_Element__c d ON 
	a.[External_Id__c] = d.Reference_Id__c INNER JOIN 
  Setup__c e ON
	a.school__c = e.school__c



GO
