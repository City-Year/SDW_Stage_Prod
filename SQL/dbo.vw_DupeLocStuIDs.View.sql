USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_DupeLocStuIDs]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[vw_DupeLocStuIDs]
AS
SELECT a.Local_Student_ID__c, ID, Location__c FROM SDW_Stage_Prod.dbo.Student__c a WHERE a.Local_Student_ID__c in (
SELECT
    local_Student_ID__c
FROM
    SDW_Stage_Prod.dbo.Student__c
GROUP BY
    local_Student_ID__c
HAVING 
    COUNT(*) > 1)


  



GO
