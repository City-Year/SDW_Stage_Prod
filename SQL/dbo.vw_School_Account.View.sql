USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_School_Account]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_School_Account]

AS

SELECT [Id]
	  ,[Name]
      ,[RecordTypeId]
      ,[ParentId]
      ,[BillingStreet]
      ,[BillingCity]
      ,[BillingState]
      ,[BillingPostalCode]
      ,[BillingCountry]
      ,[Phone]
      ,[Fax]
      ,[Website]
      ,[Description]
      ,[OwnerId]
      ,[CreatedDate]
      ,[CreatedById]
      ,[LastModifiedDate]
      ,[LastModifiedById]
      ,[SystemModstamp]
      ,[LastActivityDate]
      ,[Is_Active__c]
      ,[Legacy_ID__c]
      ,[Name_of_County__c]
      ,[Principal_E_mail_Address__c]
      ,[Principal__c]
      ,[Reference_Id__c]
      ,[School_Buildings__c]
      ,[School_Code__c]
      ,[School_District_Subdivision__c]
      ,[School_Full_Name__c]
      ,[Title_1_Targeted_School_Status__c]
      ,[Type_of_School__c]
      ,[of_Enrolled_Students__c]
      ,[of_Faculty__c]
      ,[Room_Capacity__c]
      ,[Room_Count__c]
      ,[legacy_key1__c]
      ,[Site__c]
  FROM [SDW_Stage_Prod].[dbo].[Account]
WHERE Site__c in (SELECT Distinct[Site__c]
  FROM [SDW_Stage_Prod].[dbo].[Account])

GO
