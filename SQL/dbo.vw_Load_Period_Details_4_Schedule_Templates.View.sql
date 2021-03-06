USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Load_Period_Details_4_Schedule_Templates]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_Load_Period_Details_4_Schedule_Templates]
AS
Select  b.IsDeleted
	,a.Id [Schedule_Template__c]
	,b.End_Time_Text__c
	,b.End_Time__c
	,a.Id+'_'+b.Key__c [External_Id__c]
	,b.Key__c
	,b. Order__c
	,b.Passing_Time__c
	,b. Start_Time_Text__c
	,b. Start_Time__c
	,b.Type__c
 from Schedule_Template__c a
cross join 
(Select Distinct Key__c
	,0 isDeleted
	,Order__c 
	,CASE WHEN Key__c = 'ELA/Literacy' THEN '10:00 AM' ELSE '12:00 PM' END AS [End_Time_Text__c]
    ,CASE WHEN Key__c = 'ELA/Literacy' THEN '2015-12-04 15:00:00.000' ELSE '2015-12-04 17:00:00.000' END AS [End_Time__c]
    --,[End_Time_Text__c]
    --,[End_Time__c]
      --,a.[External_Id__c]
      --,a.[Key__c]
      --,a.[Order__c]
      ,0 [Passing_Time__c]
      ,CASE WHEN Key__c = 'ELA/Literacy' THEN '08:00 AM' ELSE '10:00 AM' END AS [Start_Time_Text__c]
      ,CASE WHEN Key__c = 'ELA/Literacy' THEN '2015-12-04 13:00:00.000' ELSE '2015-10-21 14:00:00.000' END AS [Start_Time__c]
      --,a.[Time__c]
      ,'Period' [Type__c]
	  from Period__c
WHERE Key__c IN ('Math','ELA/Literacy') AND Order__c not IN ('3','4')) AS b
WHERE a.External_Id__c is not null



GO
