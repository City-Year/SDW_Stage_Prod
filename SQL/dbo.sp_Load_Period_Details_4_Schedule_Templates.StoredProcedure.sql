USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Load_Period_Details_4_Schedule_Templates]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================


CREATE PROCEDURE [dbo].[sp_Load_Period_Details_4_Schedule_Templates]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
TRUNCATE TABLE [SDW_Stage_Prod].[dbo].[SS_Load_Period__c]

INSERT INTO [SDW_Stage_Prod].[dbo].[SS_Load_Period__c] (
	   [IsDeleted]
      ,[Schedule_Template__c]
      ,[End_Time_Text__c]
      ,[End_Time__c]
      ,[External_Id__c]
      ,[Key__c]
      ,[Order__c]
      ,[Passing_Time__c]
      ,[Start_Time_Text__c]
      ,[Start_Time__c]
      ,[Type__c])
SELECT IsDeleted
	  ,Schedule_Template__c
	  ,End_Time_Text__c
	  ,End_Time__c
	  ,External_Id__c
	  ,Key__c
	  ,Order__c
	  ,Passing_Time__c
	  ,Start_Time_Text__c
	  ,Start_Time__c
	  ,Type__c
FROM   [SDW_Stage_Prod].[dbo].[vw_Load_Period_Details_4_Schedule_Templates]
END




GO
