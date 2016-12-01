USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Load_Record_Audit]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[sp_Load_Record_Audit] @Object varchar(255)=''
AS
BEGIN
	SET NOCOUNT ON;

DECLARE @sqlCommand	varchar(1000)=''

SET @sqlCommand = 'INSERT INTO Record_Audit(ObjectName, Count, [Date])
SELECT ''' + @Object + ''' AS ObjectName, COUNT(*) AS [Count], getdate() FROM ' + @Object

EXEC (@sqlCommand)

END







GO
