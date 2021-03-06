USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_TEST_VIEW]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_TEST_VIEW]
AS

select e.cysch_Accnt_SF_ID, e.cych_Accnt_SF_ID, e.student_name, case when DMDiff>=4 then 1 when DMDiff<=-4 then 2 else null end as DMDiffGroup,
case when GBDiff>=4 then 1 when GBDiff<=-4 then 2 else null end as GBDiffGroup, case when OTDiff>=4 then 1 when OTDiff<=-4 then 2 else null end as OTDiffGroup,
case when PRDiff>=4 then 1 when PRDiff<=-4 then 2 else null end as PRDiffGroup, case when RSDiff>=4 then 1 when RSDiff<=-4 then 2 else null end as RSDiffGroup,
case when SADiff>=4 then 1 when SADiff<=-4 then 2 else null end as SADiffGroup, case when SMDiff>=4 then 1 when SMDiff<=-4 then 2 else null end as SMDiffGroup,
case when SODiff>=4 then 1 when SODiff<=-4 then 2 else null end as SODiffGroup

--into #table3 

from
(select *, datediff(d, SecMostRecentAssess, MostRecentAssess) as AssessDateDiff, (MostRecentCompTScore-SecMostRecentCompTScore) as diff,
(DMMostRecentTScore-DMSecMostRecentTScore) as DMDiff, (GBMostRecentTScore-GBSecMostRecentTScore) as GBDiff,	(OTMostRecentTScore-OTSecMostRecentTScore) as OTDiff,
(PRMostRecentTScore-PRSecMostRecentTScore) as PRDiff, (RSMostRecentTScore-RSSecMostRecentTScore) as RSDiff,	(SAMostRecentTScore-SASecMostRecentTScore) as SADIff,
(SMMostRecentTScore-SMSecMostRecentTScore) as SMDiff, (SOMostRecentTScore-SOSecMostRecentTScore) as SODiff
from
(select student__c, max(MostRecentAssess) as MostRecentAssess, 	max(MostRecentCompTScore) as MostRecentCompTScore, 	max(DMMostRecentTScore) as DMMostRecentTScore, 	
max(GBMostRecentTScore) as GBMostRecentTScore, 	max(OTMostRecentTScore) as OTMostRecentTScore, 	max(PRMostRecentTScore) as PRMostRecentTScore, 	
max(RSMostRecentTScore) as RSMostRecentTScore, 	max(SAMostRecentTScore) as SAMostRecentTScore, 	max(SMMostRecentTScore) as SMMostRecentTScore, 	
max(SOMostRecentTScore) as SOMostRecentTScore, 	max(SECMostRecentTScoreDescription) as SECMostRecentTScoreDescription, 	
max(DMMostRecentTScoreDescription) as DMMostRecentTScoreDescription, 	max(GBMostRecentTScoreDescription) as GBMostRecentTScoreDescription, 	
max(OTMostRecentTScoreDescription) as OTMostRecentTScoreDescription, 	max(PRMostRecentTScoreDescription) as PRMostRecentTScoreDescription, 	
max(RSMostRecentTScoreDescription) as RSMostRecentTScoreDescription, 	max(SAMostRecentTScoreDescription) as SAMostRecentTScoreDescription, 	
max(SMMostRecentTScoreDescription) as SMMostRecentTScoreDescription, 	max(SOMostRecentTScoreDescription) as SOMostRecentTScoreDescription, 	
max(SecMostRecentAssess) as SecMostRecentAssess, 	max(SecMostRecentCompTScore) as SecMostRecentCompTScore, 	max(DMSecMostRecentTScore) as DMSecMostRecentTScore, 	
max(GBSecMostRecentTScore) as GBSecMostRecentTScore, 	max(OTSecMostRecentTScore) as OTSecMostRecentTScore, 	max(PRSecMostRecentTScore) as PRSecMostRecentTScore, 	
max(RSSecMostRecentTScore) as RSSecMostRecentTScore, 	max(SASecMostRecentTScore) as SASecMostRecentTScore, 	max(SMSecMostRecentTScore) as SMSecMostRecentTScore, 	
max(SOSecMostRecentTScore) as SOSecMostRecentTScore, 	max(SECSecMostRecentTScoreDescription) as SECSecMostRecentTScoreDescription, 	
max(DMSecMostRecentTScoreDescription) as DMSecMostRecentTScoreDescription, 	max(GBSecMostRecentTScoreDescription) as GBSecMostRecentTScoreDescription, 	
max(OTSecMostRecentTScoreDescription) as OTSecMostRecentTScoreDescription, 	max(PRSecMostRecentTScoreDescription) as PRSecMostRecentTScoreDescription, 	
max(RSSecMostRecentTScoreDescription) as RSSecMostRecentTScoreDescription, 	max(SASecMostRecentTScoreDescription) as SASecMostRecentTScoreDescription, 	
max(SMSecMostRecentTScoreDescription) as SMSecMostRecentTScoreDescription, 	max(SOSecMostRecentTScoreDescription) as SOSecMostRecentTScoreDescription
from
(select *, case when assessorder=1 then Date_Administered__c else null end as MostRecentAssess, 
case when assessorder=1 then SEL_Composite_T_Score__c else null end as MostRecentCompTScore,
case when assessorder=1 then Decision_Making_T_Score__c else null end as DMMostRecentTScore,
case when assessorder=1 then Goal_directed_Behavior_T_Score__c else null end as GBMostRecentTScore,
case when assessorder=1 then Optimistic_Thinking_T_Score__c else null end as OTMostRecentTScore,
case when assessorder=1 then Personal_Responsibility_T_Score__c else null end as PRMostRecentTScore,
case when assessorder=1 then Relationship_Skills_T_Score__c else null end as RSMostRecentTScore,
case when assessorder=1 then Self_Awareness_T_Score__c else null end as SAMostRecentTScore,
case when assessorder=1 then Self_Management_T_Score__c else null end as SMMostRecentTScore,
case when assessorder=1 then Social_Awareness_T_Score__c else null end as SOMostRecentTScore,
case when assessorder=1 then SEL_Composite_Description__c else null end as SECMostRecentTScoreDescription,
case when assessorder=1 then Decision_Making_Description__c else null end as DMMostRecentTScoreDescription,
case when assessorder=1 then Goal_directed_Behavior_Description__c else null end as GBMostRecentTScoreDescription,
case when assessorder=1 then Optimistic_Thinking_Description__c else null end as OTMostRecentTScoreDescription,
case when assessorder=1 then Personal_Responsibility_Description__c else null end as PRMostRecentTScoreDescription,
case when assessorder=1 then Relationship_Skills_Description__c else null end as RSMostRecentTScoreDescription,
case when assessorder=1 then Self_Awareness_Description__c else null end as SAMostRecentTScoreDescription,
case when assessorder=1 then Self_Management_Description__c else null end as SMMostRecentTScoreDescription,
case when assessorder=1 then Social_Awareness_Description__c else null end as SOMostRecentTScoreDescription,
case when assessorder=2 then Date_Administered__c else null end as SecMostRecentAssess,
case when assessorder=2 then SEL_Composite_T_Score__c else null end as SecMostRecentCompTScore,
case when assessorder=2 then Decision_Making_T_Score__c else null end as DMSecMostRecentTScore,
case when assessorder=2 then Goal_directed_Behavior_T_Score__c else null end as GBSecMostRecentTScore,
case when assessorder=2 then Optimistic_Thinking_T_Score__c else null end as OTSecMostRecentTScore,
case when assessorder=2 then Personal_Responsibility_T_Score__c else null end as PRSecMostRecentTScore,
case when assessorder=2 then Relationship_Skills_T_Score__c else null end as RSSecMostRecentTScore,
case when assessorder=2 then Self_Awareness_T_Score__c else null end as SASecMostRecentTScore,
case when assessorder=2 then Self_Management_T_Score__c else null end as SMSecMostRecentTScore,
case when assessorder=2 then Social_Awareness_T_Score__c else null end as SOSecMostRecentTScore,
case when assessorder=2 then SEL_Composite_Description__c else null end as SECSecMostRecentTScoreDescription,
case when assessorder=2 then Decision_Making_Description__c else null end as DMSecMostRecentTScoreDescription,
case when assessorder=2 then Goal_directed_Behavior_Description__c else null end as GBSecMostRecentTScoreDescription,
case when assessorder=2 then Optimistic_Thinking_Description__c else null end as OTSecMostRecentTScoreDescription,
case when assessorder=2 then Personal_Responsibility_Description__c else null end as PRSecMostRecentTScoreDescription,
case when assessorder=2 then Relationship_Skills_Description__c else null end as RSSecMostRecentTScoreDescription,
case when assessorder=2 then Self_Awareness_Description__c else null end as SASecMostRecentTScoreDescription,
case when assessorder=2 then Self_Management_Description__c else null end as SMSecMostRecentTScoreDescription,
case when assessorder=2 then Social_Awareness_Description__c else null end as SOSecMostRecentTScoreDescription
from
(select *, row_number() over (partition by student__c order by Date_Administered__c DESC) AS ASSESSORDER FROM [SDW_Stage_Prod].[dbo].[Assesment__c] WHERE assessment_name__c = 'dessa') a) b
group by student__c) c
where datediff(d,  SecMostRecentAssess, MostRecentAssess)>=28) d
left join
[SDW_Stage_Prod].[dbo].[vw_Student_Information] e
on d.student__c= e.student_sf_id
where diff >=4 or diff <=-4



GO
