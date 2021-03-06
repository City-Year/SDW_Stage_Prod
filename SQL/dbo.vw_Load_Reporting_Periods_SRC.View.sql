USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Load_Reporting_Periods_SRC]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vw_Load_Reporting_Periods_SRC]
AS

Select a.name
    , Allow_Periods__c = '0'
	, Current__c = '0'
	, Date_Start_Date__c = Case When b.Name__c = 'Prior Year' THEN '2015-07-01 00:00:00.000' ELSE NULL END
	, Days_of_Week__c = 'MTWHF'
	, EndTime__c = NULL
	, End_Date__c = Case When b.Name__c = 'Prior Year' THEN '2015-07-31 00:00:00.000' ELSE NULL END
	, External_Id__c = a.schoolID+'_'+ b.reporting_period_value__c+'_'+b.Name_On_Report_Card__c
	, b.Name_On_Report_Card__c
	, b.Name__c as Name__c
	, New_School_Year__c = '0'
	, Number__c = NULL
	, c.id as Parent_Time_Element__c
	, b.reporting_period_value__c as Picklist_Value__c
	, Previous_Year__c ='0'
	, Reference_Id__c = NULL
	, Reporting_Period_Value__c	= NULL
	, Reporting_Period__c = '1'	
	, a.SchoolID AS School__c
	, StartTime__c	= NULL
	, Start_Time__c	 = NULL
	, Type__c = NULL
	
FROM 
[dbo].[vw_Loaded_Term_Recs] a INNER JOIN  
vw_Reporting_Periods_Synth b ON 
	a.Reporting_Period_Value__c = b.reporting_period_value__c  LEFT JOIN 
	Time_Element__c c ON
	a.name = c.name__c inner join account d on a.schoolID = d.ID
	where d.Site__c --<> 'Philadelphia'
	not in ('Philadelphia','Seattle')



GO
