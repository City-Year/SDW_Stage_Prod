USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Load_Reporting_Period_loadTable]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================


CREATE PROCEDURE [dbo].[sp_Load_Reporting_Period_loadTable]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
TRUNCATE TABLE [SDW_Stage_Prod].[dbo].[SS_Load_Reporting_Periods]

INSERT INTO [SDW_Stage_Prod].[dbo].[SS_Load_Reporting_Periods] ([Name]
      ,[Allow_Periods__c]
      ,[Current__c]
      ,[Date_Start_Date__c]
      ,[Days_of_Week__c]
      ,[EndTime__c]
      ,[End_Date__c]
      ,[External_Id__c]
      ,[Name_On_Report_Card__c]
      ,[Name__c]
      ,[New_School_Year__c]
      ,[Number__c]
      ,[Parent_Time_Element__c]
      ,[Picklist_Value__c]
      ,[Previous_Year__c]
      ,[Reference_Id__c]
      ,[Reporting_Period_Value__c]
      ,[Reporting_Period__c]
      ,[School__c]
      ,[StartTime__c]
      ,[Start_Time__c]
      ,[Type__c])
SELECT [Name]
      ,[Allow_Periods__c]
      ,[Current__c]
      ,[Date_Start_Date__c]
      ,[Days_of_Week__c]
      ,[EndTime__c]
      ,[End_Date__c]
      ,[External_Id__c]
      ,[Name_On_Report_Card__c]
      ,[Name__c]
      ,[New_School_Year__c]
      ,[Number__c]
      ,[Parent_Time_Element__c]
      ,[Picklist_Value__c]
      ,[Previous_Year__c]
      ,[Reference_Id__c]
      ,[Reporting_Period_Value__c]
      ,[Reporting_Period__c]
      ,[School__c]
      ,[StartTime__c]
      ,[Start_Time__c]
      ,[Type__c]
FROM   [SDW_Stage_Prod].[dbo].[vw_Load_Reporting_Periods_SRC]
END


GO
