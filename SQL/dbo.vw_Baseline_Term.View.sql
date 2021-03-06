USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Baseline_Term]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_Baseline_Term]
AS
SELECT  ID as schoolID 
	, '2015-07-01 00:00:00.000' as date_start_date__c
	, '2016-06-08 00:00:00.000' as end_date__c
	,'MTWHF' as Days_of_Week__c
	, Name
	, 'a1Y1a00000066hPEAQ' as parent_time_element__c
	, 'a0r1a000000oe7SAAQ' as Picklist_Value__c
	, 'a0r1a000000oe7LAAQ' as Reporting_Period_Value__c
	, ID + '_'+'a1Y1a00000066hPEAQ' as External_ID__c
FROM Account
WHERE Name like 'Baseline%'







GO
