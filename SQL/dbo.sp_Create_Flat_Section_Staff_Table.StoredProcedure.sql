USE [SDW_Stage_Prod]
GO
/****** Object:  StoredProcedure [dbo].[sp_Create_Flat_Section_Staff_Table]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Create_Flat_Section_Staff_Table]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	   truncate table SDW_Stage_Prod.dbo.Section_Staff_Flat_Table

	   insert into SDW_Stage_Prod.dbo.Section_Staff_Flat_Table(SectionID, SectionName)
       select distinct b.ID, b.Name
	   from Staff_Section__c (nolock) a
	   inner join Section__c (nolock) b on a.Section__c = b.Id
	   inner join Staff__c (nolock) c on a.Staff__c = c.Id
	   order by b.ID


	DECLARE @UniqueSectionID VARCHAR(250)
	DECLARE @SectionID VARCHAR(250)
	DECLARE @SectionName VARCHAR(250)
	DECLARE @StaffID VARCHAR(250)
	DECLARE @StaffName VARCHAR(250)
	DECLARE @Counter int

	Set @Counter = 0

 		   DECLARE db_cursor CURSOR FOR  
		   select distinct SectionID
		   from SDW_Stage_Prod.dbo.Section_Staff_Flat_Table
		   order by SectionID

	OPEN db_cursor
	FETCH NEXT FROM db_cursor INTO @UniqueSectionID

	WHILE @@FETCH_STATUS = 0   
	BEGIN   

		   DECLARE db_cursor2 CURSOR FOR  
		   select b.ID SectionID, b.Name SectionName, c.ID StaffID, c.Name StaffName
		   from Staff_Section__c (nolock) a
		   inner join Section__c (nolock) b on a.Section__c = b.Id
		   inner join Staff__c (nolock) c on a.Staff__c = c.Id
		   where b.ID = @UniqueSectionID
		   order by b.ID, a.ID

		   OPEN db_cursor2   
		   FETCH NEXT FROM db_cursor2 INTO @SectionID, @SectionName, @StaffID, @StaffName 

			WHILE @@FETCH_STATUS = 0   
			BEGIN   

			If @Counter = 1
				BEGIN
					update SDW_Stage_Prod.dbo.Section_Staff_Flat_Table
					set StaffID1 = @StaffID
					,StaffName1 = @StaffName 
					where SectionID = @SectionID
				END				
		
			If @Counter = 2
				BEGIN
					update SDW_Stage_Prod.dbo.Section_Staff_Flat_Table
					set StaffID2 = @StaffID
					,StaffName2 = @StaffName 
					where SectionID = @SectionID
				END				

			If @Counter = 3
				BEGIN
					update SDW_Stage_Prod.dbo.Section_Staff_Flat_Table
					set StaffID3 = @StaffID
					,StaffName3 = @StaffName
					where SectionID = @SectionID
				END				

			If @Counter = 4
				BEGIN
					update SDW_Stage_Prod.dbo.Section_Staff_Flat_Table
					set StaffID4 = @StaffID
					,StaffName4 = @StaffName
					where SectionID = @SectionID
				END				

			If @Counter = 5
				BEGIN
					update SDW_Stage_Prod.dbo.Section_Staff_Flat_Table
					set StaffID5 = @StaffID
					,StaffName5 = @StaffName 
					where SectionID = @SectionID
				END				

		   FETCH NEXT FROM db_cursor2 INTO @SectionID, @SectionName, @StaffID, @StaffName 

			set @Counter = @Counter + 1
			END

				CLOSE db_cursor2   
				DEALLOCATE db_cursor2

		FETCH NEXT FROM db_cursor INTO @UniqueSectionID
		Set @Counter = 1
	END   

	CLOSE db_cursor   
	DEALLOCATE db_cursor

END




GO
