USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Gradebook]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vw_Gradebook]
AS
SELECT     d.Id AS Student_SalesForce_ID
		, a.Name AS Section_Name
		, a.Core_Class__c
		, a.In_After_School__c AS Section_Type
		, a.Indicator_Area__c AS Section_Subject
		, 'N/A' AS Section_Period
		, a.Section_Frequency__c AS Section_Frequency
		, i.StaffID1
		, i.StaffName1
		, i.StaffID2
		, i.StaffName2
		, i.StaffID3
		, i.StaffName3
		, i.StaffID4
		, i.StaffName4
		, i.StaffID5
		, i.StaffName5
		, j.Type__c
		, b.Name AS Assignment_Name
		, b.Due_Date_for_Gradebook__c AS Assignment_Due_Date
		, b.Name_in_Gradebook__c AS Assignment_Marking_Period
		, c.CreatedDate AS Entry_date 
		, U.Name AS Create_by
		, c.Entered_Grade__c AS Assignment_Entered_Grade
		, c.Grade_Number__c AS Assignment_Grade_Number
		, c.Weighted_Grade_Value__c AS Assignment_Weighted_Grade_Vale
		, c.Standard_Times_Assignment__c AS Assignment_Standard_Times
		, c.Name AS Grade_Name
		, b.Include_in_Final_Grade__c
		, d.Name
		, d.Reference_Id__c
		, d.Race_Multi__c
		, d.Race__c
		, d.School_Name__c
		, d.Attendance__c
		, d.Behavior__c
		, d.ELA_Literacy__c
		, d.Math__c, d.Location__c
		, f.BillingCity
		, f.BillingState
		, f.BillingStreet
		, f.BillingPostalCode
		, f.Fax
		, f.Phone
		, f.Site__c AS Business_Unit
		, m.name AS Standard_Name
		, c.Strand_Grade__c AS Grade_For_Standard
		, l.Identifier__c
		, l.Long_Text__c
FROM
		Grade__c AS c WITH (nolock) INNER JOIN
		dbo.Assignment__c AS b ON
			c.Assignment__c = b.Id INNER JOIN
		dbo.Section__c AS a WITH (nolock) ON
			b.Section__c = a.Id INNER JOIN
		dbo.Account AS f WITH (nolock) ON
			a.School__c = f.Id INNER JOIN
		dbo.Student__c AS d WITH (nolock) ON 
			c.Student__c = d.Id INNER JOIN
		dbo.Course__c AS h WITH (nolock) ON 
			a.Course__c = h.Id LEFT JOIN
		dbo.Standard__c m ON 
			c.Standard__c = m.ID INNER JOIN
		dbo.Section_Staff_Flat_Table AS i WITH (nolock) ON 
			a.Id = i.SectionID INNER JOIN
		dbo.Assignment_Lib__c AS j ON 
			b.Assignment_Library__c = j.Id  LEFT JOIN
		dbo.Assignment_Standard__c AS k ON 
			j.Id = k.Standard__c LEFT JOIN
		dbo.Standard__c AS l WITH (nolock) ON 
			k.Standard__c = l.Id LEFT JOIN
		dbo.User_SF AS U ON
			c.CreatedById = U.Id

WHERE     (a.RecordTypeId = '0121a000000VC6SAAW')




GO
