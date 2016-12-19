USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Accounts_WO_Terms]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_Accounts_WO_Terms]
AS
SELECT ID
	,Name 
FROM 
Account 
--filter out 'Individuals' and 'School 1' accounts
WHERE Name NOT IN (SELECT Name__c FROM Time_Element__c) AND ID NOT IN ('0011a00000ELyb4AAD','0011a00000CbT8yAAF')

GO
