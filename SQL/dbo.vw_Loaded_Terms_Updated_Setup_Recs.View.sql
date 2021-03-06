USE [SDW_Stage_Prod]
GO
/****** Object:  View [dbo].[vw_Loaded_Terms_Updated_Setup_Recs]    Script Date: 12/1/2016 8:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_Loaded_Terms_Updated_Setup_Recs]
AS

SELECT a.Id
	,a.OwnerId
	,a.IsDeleted
	,a.Name
	,a.RecordTypeId
	,a.CreatedDate
	,a.CreatedById
	,a.LastModifiedDate
	,a.LastModifiedById
	,a.SystemModstamp
	,a.Active__c
	,a.Behavior_Referal_Details__c
	,a.CEEB_Code__c
	,a.Calculate_Class_Rank__c
	,a.Calculation_Type__c
	,a.Cascade_Daily_Attendance__c
	,a.Chronological_Periods__c
	,a.Configure_Course_Catalog__c
	,a.Configure_Grade_Scale_Catalog__c
	,a.Configure_School_Term__c
	,a.Counselor__c
	,a.Course_Catalog__c
	,a.Data_Activated__c
	,a.Days__c
	,a.Display_Community_Service_Hours__c
	,a.Display_Cumulative_Weighted_GPA__c
	,a.Display_GPA_on_Report_Cards__c
	,a.Display_Incomplete_Assignments__c
	,a.Display_Legend_on_Report_Cards__c
	,a.Display_Reading_Level_On_Report_Card__c
	,a.Display_Weighted_GPA_on_Documents__c
	,a.Evaluation_Documents__c
	,a.External_Id__c
	,a.GPA_By_Reporting_Period_Rolling__c
	,a.Grade_Scale_Catalog__c
	,a.Grade_Span__c
	,a.Group_Based__c
	,a.Include_Section_Grades__c
	,a.Law_of_Decaying_Average_Weight__c
	,a.New_School_Year__c
	,a.Notes_on_Transcripts__c
	,a.Number_of_Scores__c
	,a.On_Track_Threshold__c
	,a.Passing_Grade_Threshold__c
	,a.Points_Frequency__c
	,a.Points_Reset_Date__c
	,a.Points_Reset_Value__c
	,a.Processed_EOY_Data__c
	,a.Processed_Historical_Data__c
	,a.Processed_Setup_Data__c
	,a.Progress_Report_Standard_Display__c
	,a.Published__c
	,a.Purged_EOY_Data__c
	,a.Purged_Two_Years_Old_Data__c
	,a.Read_Only_Attendance_Wizard_Records__c
	,a.Registrar_Phone__c
	,a.Registrar__c
	,a.Report_Card_Standard_Display__c
	,a.Rolling_Standard_Grade__c
	,a.Room_Dependent__c
	,a.Schedule_End_Date__c
	,a.Schedule_Start_Date__c
	,a.School_Calendar__c
	,a.School_Logo_for_Portal__c
	,a.School_Using_PGV__c
	,a.School__c
	,a.School_picture__c
	,a.Section_Wizard__c
	,a.Show_Activities_on_Transcripts__c
	,a.Show_Alerts_in_Portal__c
	,a.Show_Assessments_on_Transcripts__c
	,a.Show_Attendance_Sections_in_Gradebook__c
	,a.Show_Attendance_in_Portal__c
	,a.Show_Awards_in_Portal__c
	,a.Show_Behavior_in_Portal__c
	,a.Show_Calendar_in_Portal__c
	,a.Show_Class_Rank__c
	,a.Show_Class_Rank_on_Transcripts__c
	,a.Show_Community_Service_In_Portal__c
	,a.Show_Daily_Attendance_in_Portal__c
	,a.Show_Gradebook_in_Portal__c
	,a.Show_Homework_In_Portal__c
	,a.Show_Homework_Percentage__c
	,a.Show_Honors_on_Transcripts__c
	,a.Show_Meals_in_Portal__c
	,a.Show_Normalizations_on_Report_Cards__c
	,a.Show_Notes_on_Transcripts__c
	,a.Show_Points_Balance_in_Portal__c
	,a.Show_Section_Comments__c
	,a.Show_Sectional_Attendance_in_Portal__c
	,a.Show_Sectional_Attendance_on_Report_Card__c
	,a.Show_Semester_Grades_On_Report_Cards__c
	,a.Show_Signature_on_Transcripts__c
	,a.Show_Standard_Grades__c
	,a.Show_Standard_Scale_on_Report_Cards__c
	,a.Show_Standards_in_Portal__c
	,a.Standard_Grade_Mastery_Threshold__c
	,a.Standard_Legend_1_Spanish__c
	,a.Standard_Legend_1__c
	,a.Standard_Legend_2_Spanish__c
	,a.Standard_Legend_2__c
	,a.Standard_Legend_3_Spanish__c
	,a.Standard_Legend_3__c
	,a.Standard_Legend_4_Spanish__c
	,a.Standard_Legend_4__c
	,a.Standard_Legend_Description_1_Spanish__c
	,a.Standard_Legend_Description_1__c
	,a.Standard_Legend_Description_2_Spanish__c
	,a.Standard_Legend_Description_2__c
	,a.Standard_Legend_Description_3_Spanish__c
	,a.Standard_Legend_Description_3__c
	,a.Standard_Legend_Description_4_Spanish__c
	,a.Standard_Legend_Description_4__c
	,a.Standard_Legend_Text_Spanish__c
	,a.Standard_Legend_Text__c
	,a.Standards_Based_Grading__c
	,a.Standards_ONLY_Gradebook__c
	,a.Strand_Grade_Mastery_Percentage__c
	,a.Students_Created_From_Previous_Year__c
	,a.Students_Created__c
	,a.Summarized_Data__c
	,a.Term__c
	,a.Use_1st_Reporting_Period_Start_Date_RC__c
	,a.Use_Sectional_Attendance__c
	,a.Using_Assessments__c
	,a.Using_Attendance__c
	,a.Using_Behavior__c
	,a.Using_Gradebook__c
	,a.Using_Homework__c
	,a.Using_Meals__c
	,a.Using_Points__c
	,a.Using_Portal__c
	,a.Using_Student_Documents__c
	,a.Using_Summer_School__c
	,a.Year_End__c
	,a.Year_Start__c
	,a.Year__c
FROM Setup__c a INNER JOIN
Time_Element__c b WITH(nolock) ON 
	a.Term__c = b.Id 
WHERE b.External_Id__c IS NOT NULL 

GO
