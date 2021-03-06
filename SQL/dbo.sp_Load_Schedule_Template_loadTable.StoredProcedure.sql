USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Load_Schedule_Template_loadTable]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================


CREATE PROCEDURE [dbo].[sp_Load_Schedule_Template_loadTable]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
TRUNCATE TABLE [SDW_Stage_Prod].[dbo].[SS_Load_Schedule_Template__c]

INSERT INTO [SDW_Stage_Prod].[dbo].[SS_Load_Schedule_Template__c] (
	[IsDeleted]
	,[Name]
	,[Color__c]
	,[Has_Class__c]
	,[Is_Master__c]
	,[Reference_Id__c]
	,[Reporting_Period__c]
	,[Setup__c]
	,[Number_of_Periods__c])
SELECT [IsDeleted]
	,[Name]
	,[Color__c]
	,[Has_Class__c]
	,[Is_Master__c]
	,[External_ID__c]
	,[Reporting_Period__c]
	,[Setup__c]
	,[Number_of_Periods__c]
FROM   [SDW_Stage_Prod].[dbo].[vw_Schedule_Templates_4_Loaded_ReportingPeriods]
END



GO
