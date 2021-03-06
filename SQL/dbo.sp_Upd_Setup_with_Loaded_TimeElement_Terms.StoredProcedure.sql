USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Upd_Setup_with_Loaded_TimeElement_Terms]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================


CREATE PROCEDURE [dbo].[sp_Upd_Setup_with_Loaded_TimeElement_Terms]

AS
BEGIN

UPDATE T1  SET T1.Term__c = T2.ID FROM
Setup__c as T1 INNER JOIN
(SELECT a.ID,b.schoolID 
FROM Time_Element__c a INNER JOIN 
dbo.SS_Load_Terms b WITH(nolock) ON
	a.Name__c = b.Name) as T2 ON T1.School__c = T2.schoolID

END

GO
