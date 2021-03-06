USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Staff_Team_Info]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[vw_Staff_Team_Info]
AS
SELECT a.Id
	  ,a.[Name] as Staff_Name
	  ,REPLACE(REPLACE([Email__c],'=','@'),'@example.com','')as StaffEmail
	  ,First_Name_Staff__c
      ,[Staff_Last_Name__c]
      ,[Site__c]
      ,c.Name as TeamName
      ,c.Team_Description__c as TeamDescription
  FROM [SDW_Stage_Prod].[dbo].[Team_Staff__c] b left join
[SDW_Stage_Prod].[dbo].[Staff__c] a ON 
	b.Staff_Member__c = a.Id left join
[SDW_Stage_Prod].[dbo].[Team__c] c ON 
	b.Team__c = c.Id






GO
