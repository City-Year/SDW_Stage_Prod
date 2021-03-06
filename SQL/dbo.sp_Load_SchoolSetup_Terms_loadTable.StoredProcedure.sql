USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Load_SchoolSetup_Terms_loadTable]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================


CREATE PROCEDURE [dbo].[sp_Load_SchoolSetup_Terms_loadTable]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
TRUNCATE TABLE [SDW_Stage_Prod].[dbo].[SS_Load_Terms]

INSERT INTO [SDW_Stage_Prod].[dbo].[SS_Load_Terms] ([SchoolID]
      ,[date_start_date__c]
      ,[end_date__c]
      ,[Days_of_Week__c]
      ,[Name]
      ,[Parent_Time_Element__c]
      ,[Reporting_Period_Value__c]
      ,[External_ID]
      ,[Picklist_Value__c])
SELECT [SchoolID]
      ,[date_start_date__c]
      ,[end_date__c]
      ,[Days_of_Week__c]
      ,[Name]
      ,[Parent_Time_Element__c]
      ,[Reporting_Period_Value__c]
      ,[External_ID]
      ,'a0r1a000000oe7SAAQ' AS Picklist_Value__c 
FROM   [SDW_Stage_Prod].[dbo].[vw_Load_Terms_SRC]
END
GO
