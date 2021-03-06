USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_SchoolAccounts_WO_Students]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_SchoolAccounts_WO_Students]
AS
SELECT DISTINCT CYSH_Account_ID
, CYCH_Account_ID
, Channel_Account_#
, SchoolName
, Business_Unit
, DN
, Region
, SchoolYear
FROM 
(SELECT a.ID as CYSH_Account_ID
	, a.[Legacy_ID__c] AS CYCH_Account_ID
	, c.AccountNumber AS Channel_Account_#
	, a.Name as SchoolName
	, a.Site__c as Business_Unit
	, 'No' AS DN-- defaulted for subsequent update
	, 'N/A'AS Region -- defaulted for subsequent update
	, e.Name__c AS SchoolYear
FROM Account a LEFT JOIN
vw_Student_Information b WITH (nolock) ON
	a.id = b.[cysch_Accnt_SF_ID] INNER JOIN 
[ODW_Stage].[dbo].[Account] c WITH (nolock) ON
	a.Legacy_ID__c = c.ID INNER JOIN 
[Setup__c] d WITH (nolock) ON
	a.ID = d.school__c INNER JOIN
Time_Element__c e WITH (nolock) ON 
	d.Year__c = e.id
WHERE (cysch_Accnt_SF_ID is NULL)) T1


GO
