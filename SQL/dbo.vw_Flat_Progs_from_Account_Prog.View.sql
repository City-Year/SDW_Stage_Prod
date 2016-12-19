USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Flat_Progs_from_Account_Prog]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_Flat_Progs_from_Account_Prog]
AS
SELECT Distinct    Name
				,Program__c
				,Active__c
FROM Account_Program__c
WHERE Active__c > 0


GO
