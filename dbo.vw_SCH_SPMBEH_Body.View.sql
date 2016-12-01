USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_SCH_SPMBEH_Body]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[vw_SCH_SPMBEH_Body] as

SELECT distinct
	cych_accnt_sf_id,
	BUSINESS_UNIT,
	STUDENT_SCHOOL_NAME
FROM SDW_STAGE_PROD.DBO.VW_INTERVENTION_FINAL 
WHERE SECTION_IA LIKE 'BEH%' and business_unit is not null




GO
