USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Record_Audit_Email]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Swetha Todupunoori
-- Create date: 06-17-2016
-- Description:	checks the Record_Audit table to make sure there are entries from the previous day in the table and if there aren't it would would send an email

-- =============================================
CREATE PROCEDURE [dbo].[sp_Record_Audit_Email]
AS
BEGIN


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @max_date as datetime;
	declare @count as int;

	select  @max_date = max(date)  from Record_Audit
	select @count = count(*) from SDW_Stage_Prod.dbo.Record_Audit (nolock)
	where CONVERT(date,@max_date) = CONVERT(date, [date])

	if (CONVERT(date,@max_date) < CONVERT(date, getdate()-1)) OR @Count < 55
	BEGIN
     
		declare @body varchar(max);
		set @body = 'SDW Stage Prod (cyschoolhouse) did not refresh'
		EXEC msdb.dbo.sp_send_dbmail
		@profile_name = 'Mail Profile',
		@recipients = 'stodupunoori0@cityyear.org;rdoherty@cityyear.org;cdurkee@cityyear.org;sjames@cityyear.org;',
		@subject = 'SDW Stage Prod (cyschoolhouse) did not refresh',
		@body = @body
	
	END

	

END





GO
