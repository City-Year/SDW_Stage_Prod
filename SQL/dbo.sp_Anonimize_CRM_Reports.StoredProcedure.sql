USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Anonimize_CRM_Reports]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Anonimize_CRM_Reports]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	create table #Mapping_Corps_Member
	(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Corp_Member_Name] varchar(255) NULL,
	[Anon_Corp_Member_Name] varchar(255) NULL
	)

	create table #Mapping_Student
	(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_Name] varchar(255) NULL,
	[Anon_Student_Name] varchar(255) NULL
	)

	create table #Mapping_Staff
	(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Staff_Name] varchar(255) NULL,
	[Anon_Staff_Name] varchar(255) NULL
	)

	insert into #Mapping_Staff(Staff_Name) 
	select distinct Section_Primary_Staff from CM_CMSCH_SPMBEH_Demographics (nolock) a
	left outer join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	where b.Staff_Name is null

	insert into #Mapping_Staff(Staff_Name) 
	select distinct Section_Primary_Staff from CMR_CM_Attendance_Suspensions (nolock) a
	left outer join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	where b.Staff_Name is null
	-- 272

	insert into #Mapping_Staff(Staff_Name) 
	select distinct Section_Primary_Staff from CMR_CM_SPMBEH_Body (nolock) a
	left outer join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	where b.Staff_Name is null
	-- 1978

	insert into #Mapping_Staff(Staff_Name) 
	select distinct Section_Primary_Staff from CMR_CM_SPMBEH_DESSAChart (nolock) a
	left outer join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	where b.Staff_Name is null
	-- 0

	insert into #Mapping_Staff(Staff_Name) 
	select distinct Section_Primary_Staff from CMR_CM_SPMBEH_DESSATable (nolock) a
	left outer join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	where b.Staff_Name is null
	-- 0 

	insert into #Mapping_Staff(Staff_Name) 
	select distinct Section_Primary_Staff from CMR_CM_SPMBEH_IntSkills (nolock) a
	left outer join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	where b.Staff_Name is null
	-- 0 

	insert into #Mapping_Student(Student_Name) 
	select distinct a.Student_Name from CM_CMSCH_SPMBEH_Demographics (nolock) a
	left outer join #Mapping_Student (nolock) b on a.Student_Name = b.Student_Name
	where b.Student_Name is null

	insert into #Mapping_Student(Student_Name) 
	select distinct a.Student_Name from CMR_CM_SPMBEH_DESSAChart (nolock) a
	left outer join #Mapping_Student (nolock) b on a.Student_Name = b.Student_Name
	where b.Student_Name is null
	-- 4674

	insert into #Mapping_Student(Student_Name) 
	select distinct a.student_name from CMR_CM_SPMBEH_DESSATable (nolock) a
	left outer join #Mapping_Student (nolock) b on a.Student_Name = b.Student_Name
	where b.Student_Name is null
	-- 0

	insert into #Mapping_Student(Student_Name) 
	select distinct a.Student_Name from CMR_CM_SPMBEH_IntSkills (nolock) a
	left outer join #Mapping_Student (nolock) b on a.Student_Name = b.Student_Name
	where b.Student_Name is null
	-- 961

	insert into #Mapping_Corps_Member(Corp_Member_Name) 
	select distinct Intervention_Corps_Member from CMR_CM_SPMBEH_IntSkills (nolock) a
	left outer join #Mapping_Corps_Member(nolock) b on a.Intervention_Corps_Member = b.Corp_Member_Name
	where b.Corp_Member_Name is null

	update #Mapping_Staff set Anon_Staff_Name = 'Staff ' + cast(ID as varchar)
	update #Mapping_Student set Anon_Student_Name = 'Student ' + cast(ID as varchar)
	update #Mapping_Corps_Member set Anon_Corp_Member_Name = 'Corp Member ' + cast(ID as varchar)

	update CM_CMSCH_SPMBEH_Demographics
	set student_name = c.Anon_Student_Name
	,Section_Primary_Staff = b.Anon_Staff_Name
	from CM_CMSCH_SPMBEH_Demographics (nolock) a
	inner join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	inner join #Mapping_Student (nolock) c on a.student_name = c.Student_Name

	update SR_ST_SPMBEH_Demographics
	set student_name = c.Anon_Student_Name
--	,Section_Primary_Staff = b.Anon_Staff_Name
	from SR_ST_SPMBEH_Demographics (nolock) a
--	inner join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	inner join #Mapping_Student (nolock) c on a.student_name = c.Student_Name
	
	update CMR_CM_Attendance_Suspensions 
	set Section_Primary_Staff = b.Anon_Staff_Name
	from CMR_CM_Attendance_Suspensions (nolock) a
	inner join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name

	update CMR_CM_SPMBEH_Body 
	set Section_Primary_Staff = b.Anon_Staff_Name
	from CMR_CM_SPMBEH_Body (nolock) a
	inner join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name

	update SR_ST_SPMBEH_DESSAChart 
	set Student_Name = c.Anon_Student_Name
--	,Section_Primary_Staff = b.Anon_Staff_Name
	from SR_ST_SPMBEH_DESSAChart (nolock) a
--	inner join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	inner join #Mapping_Student (nolock) c on a.Student_Name = c.Student_Name

	update CMR_CM_SPMBEH_DESSAChart 
	set Student_Name = c.Anon_Student_Name
	,Section_Primary_Staff = b.Anon_Staff_Name
	from CMR_CM_SPMBEH_DESSAChart (nolock) a
	inner join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	inner join #Mapping_Student (nolock) c on a.Student_Name = c.Student_Name

	update SR_ST_SPMBEH_DESSATable  
	set student_name = c.Anon_Student_Name
--	,Section_Primary_Staff = b.Anon_Staff_Name
	from SR_ST_SPMBEH_DESSATable  (nolock) a
--	inner join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	inner join #Mapping_Student (nolock) c on a.student_name = c.Student_Name

	update CMR_CM_SPMBEH_DESSATable 
	set student_name = c.Anon_Student_Name
	,Section_Primary_Staff = b.Anon_Staff_Name
	from CMR_CM_SPMBEH_DESSATable (nolock) a
	inner join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	inner join #Mapping_Student (nolock) c on a.student_name = c.Student_Name
	
	update CMR_CM_SPMBEH_IntSkills 
	set Student_Name = c.Anon_Student_Name
	,Intervention_Corps_Member = d.Anon_Corp_Member_Name
	,Section_Primary_Staff = b.Staff_Name
	from CMR_CM_SPMBEH_IntSkills (nolock) a
	inner join #Mapping_Staff (nolock) b on a.Section_Primary_Staff = b.Staff_Name
	inner join #Mapping_Student (nolock) c on a.Student_Name = c.Student_Name
	inner join #Mapping_Corps_Member (nolock) d on a.Intervention_Corps_Member = d.Corp_Member_Name

END

GO
