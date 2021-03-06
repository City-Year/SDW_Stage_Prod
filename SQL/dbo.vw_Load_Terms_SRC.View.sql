USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Load_Terms_SRC]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vw_Load_Terms_SRC]
AS
SELECT a.ID AS SchoolID
		,b.[Term Start] AS date_start_date__c
		,b.[Term End] AS [end_date__c]
		,Days_of_Week__c = 'MTWHF'
		,b.[school name] AS Name
		,c.ID AS Parent_Time_Element__c
		,d.ID AS Reporting_Period_Value__c
		,a.ID + '_'+c.ID AS External_ID
		,'a0r1a000000oe7SAAQ' as Picklist_Value__c
FROM vw_Accounts_WO_Terms a INNER JOIN 
[dbo].[Schoolswithoutterms] b ON 
	a.Name = b.[school name] INNER JOIN
Time_Element__c c ON 
	b.[School Year] = c.Name__c INNER JOIN 
Picklist_Value__c d ON 
	b.[Reporting Period] = d.Name

GO
