USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Loaded_Term_Recs]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vw_Loaded_Term_Recs]
AS


SELECT a.Id
	,a.School__c as SchoolID
	,a.Date_Start_Date__c
	,a.End_Date__c
	,a.Days_of_Week__c
	,a.Name__c as Name
	,a.Parent_Time_Element__c
	,a.Reporting_Period_Value__c
	,a.External_Id__c
	,a.Picklist_Value__c
FROM Time_element__c a WITH(nolock) INNER JOIN 
Setup__c b ON
	a.ID = b.Term__c
WHERE a.External_ID__c IS NOT NULL


GO
