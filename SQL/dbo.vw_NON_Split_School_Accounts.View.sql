USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_NON_Split_School_Accounts]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vw_NON_Split_School_Accounts]

AS
Select a.ID
	, a.Name
	, a.Legacy_ID__c
	, a.legacy_key1__c
from account a left join vw_School_Account b WITH(nolock) ON
a.Legacy_ID__c = b.Legacy_ID__c
where b.Legacy_ID__c IS NOT NULL


GO
