USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Reporting_Periods_Synth]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[vw_Reporting_Periods_Synth]
AS
SELECT  DISTINCT a.reporting_period_value__c
			,b.Name,c.Name__c,c.Name_On_Report_Card__c 
FROM [dbo].[vw_Loaded_Term_Recs] a INNER JOIN 
Picklist_Value__c b ON
	a.Reporting_Period_Value__c = b.Id  LEFT JOIN
Time_Element__c c ON
	a.Reporting_Period_Value__c = c.Picklist_Value__c
WHERE c.Name_On_Report_Card__c not like 'TRM%'
--order by name,name__c
union
Select top 3 
	Reporting_Period_Value__c ='a0r1a000000oe7MAAQ'
	,Case when a.name = 'Quarter' then 'Trimester'End as Name
	, Case When Name__c='Trimester 1' then 'Semester 1' 
		when Name__c = 'Trimester 2' then 'Semester 2' 
		ELSE 'Prior Year' END AS Name__c
	,Case When Name__c='Trimester 1' then 'SEM 1' 
		when Name__c = 'Trimester 2' then 'SEM 2' 
		ELSE 'PrYr' END AS Name_On_Report_Card__c 
from (Select distinct Name__c,picklist_Value__c from Time_Element__c a where picklist_Value__c = 'a0r1a000000oe7PAAQ') as t2  inner join
picklist_Value__c a ON
t2.picklist_Value__c = a.ID 
--order by Name





GO
