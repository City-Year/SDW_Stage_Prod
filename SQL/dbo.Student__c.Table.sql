USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Student__c]    Script Date: 12/19/2016 4:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student__c](
	[Id] [varchar](18) NOT NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Active__c] [int] NOT NULL,
	[Actual_graduation_date__c] [datetime] NULL,
	[Address__c] [varchar](255) NULL,
	[Admission_Code__c] [varchar](255) NULL,
	[Admission_Status__c] [varchar](255) NULL,
	[Advisory__c] [varchar](18) NULL,
	[Age__c] [decimal](18, 0) NULL,
	[Alternate_Lang_Comments__c] [varchar](255) NULL,
	[Alternate_Language__c] [int] NOT NULL,
	[American_Indian_or_Alaska_Native__c] [varchar](1300) NULL,
	[Application_Date__c] [datetime] NULL,
	[Apt__c] [varchar](6) NULL,
	[Archived__c] [int] NOT NULL,
	[Asian__c] [varchar](1300) NULL,
	[Attendance_Percentage__c] [decimal](18, 0) NULL,
	[Authorized_Pickup_Name_2__c] [varchar](50) NULL,
	[Authorized_Pickup_Name_3__c] [varchar](50) NULL,
	[Authorized_Pickup_Name_4__c] [varchar](50) NULL,
	[Authorized_Pickup_Name__c] [varchar](50) NULL,
	[Authorized_Pickup_Phone_1__c] [varchar](40) NULL,
	[Authorized_Pickup_Phone_2__c] [varchar](40) NULL,
	[Authorized_Pickup_Phone_3__c] [varchar](40) NULL,
	[Authorized_Pickup_Phone_4__c] [varchar](40) NULL,
	[Authorized_Pickup_Relation_1__c] [varchar](50) NULL,
	[Authorized_Pickup_Relation_3__c] [varchar](50) NULL,
	[Authorized_Pickup_Relation_4__c] [varchar](50) NULL,
	[Authorized_Pickup_Relation__c] [varchar](50) NULL,
	[Birth_Place_City__c] [varchar](80) NULL,
	[Birth_Place_State__c] [varchar](255) NULL,
	[Black_or_African_American__c] [varchar](1300) NULL,
	[Campus__c] [varchar](255) NULL,
	[Car_Model__c] [varchar](20) NULL,
	[City__c] [varchar](100) NULL,
	[Class_ID__c] [varchar](255) NULL,
	[Class_Rank__c] [decimal](4, 0) NULL,
	[Cohort__c] [varchar](18) NULL,
	[Comments__c] [varchar](255) NULL,
	[Contact_Id__c] [varchar](1300) NULL,
	[Country_of_Origin__c] [varchar](255) NULL,
	[Created_Next_Year_Student__c] [int] NOT NULL,
	[Current_School_Year__c] [varchar](255) NULL,
	[Currently_evaluated_for_special_ed__c] [int] NOT NULL,
	[DC_Resident__c] [varchar](255) NULL,
	[Date_of_Birth__c] [datetime] NULL,
	[Days_Enrolled__c] [decimal](3, 0) NULL,
	[Destination_School_Type__c] [varchar](255) NULL,
	[Destination_School__c] [varchar](255) NULL,
	[Detailed_Exit_Reason__c] [varchar](255) NULL,
	[Disability_Flag__c] [varchar](1) NULL,
	[District_of_Columbia_C_Student_ID__c] [varchar](20) NULL,
	[EC_1_Relationship_to_Student__c] [varchar](255) NULL,
	[EContact_1_Cell_Phone__c] [varchar](40) NULL,
	[EContact_1_Home_Phone__c] [varchar](40) NULL,
	[EContact_2_Cell_Phone__c] [varchar](40) NULL,
	[EContact_2_Home_Phone__c] [varchar](40) NULL,
	[EContact_2_Work_Phone__c] [varchar](40) NULL,
	[ELL_Hours__c] [varchar](20) NULL,
	[ELL_Level__c] [varchar](255) NULL,
	[ELL_Student_in_a_US_School_Less_Than_1_Y__c] [int] NOT NULL,
	[ELL_Test_Date__c] [datetime] NULL,
	[ELL_Test__c] [varchar](255) NULL,
	[ELL__c] [int] NOT NULL,
	[Economically_Disadvantaged__c] [int] NOT NULL,
	[Econtact_2_Relationship_to_Student__c] [varchar](255) NULL,
	[Eligible_For_Enrollment__c] [int] NOT NULL,
	[Email__c] [varchar](80) NULL,
	[Emergency_Contact_1_Name__c] [varchar](255) NULL,
	[Emergency_Contact_1_Work_Phone__c] [varchar](40) NULL,
	[Emergency_Contact_2_Name__c] [varchar](255) NULL,
	[Entry_Date__c] [datetime] NULL,
	[Entry_Type__c] [varchar](255) NULL,
	[Ethnicity__c] [varchar](255) NULL,
	[Evalauted_for_special_education__c] [int] NOT NULL,
	[Evaluated_for_Special_Education_but_Not__c] [int] NOT NULL,
	[Evaluated_for_special_education__c] [int] NOT NULL,
	[Evaluation_Date__c] [datetime] NULL,
	[Evaluation_Type__c] [varchar](255) NULL,
	[Exit_Comments__c] [varchar](255) NULL,
	[Exit_Date__c] [datetime] NULL,
	[Exit_Reason__c] [varchar](255) NULL,
	[Exit_Status__c] [varchar](255) NULL,
	[Exit_Type__c] [varchar](255) NULL,
	[Expiration_Date__c] [datetime] NULL,
	[External_Id__c] [varchar](255) NULL,
	[Final_GPA_Value__c] [decimal](18, 2) NULL,
	[Final_Grade_Level__c] [int] NOT NULL,
	[Final_Reading_Level__c] [varchar](1) NULL,
	[Final_Weighted_GPA_Value__c] [decimal](18, 2) NULL,
	[GPA_To_Date__c] [decimal](3, 2) NULL,
	[Gender__c] [varchar](255) NULL,
	[Gifted__c] [int] NOT NULL,
	[Grade_Name__c] [varchar](50) NULL,
	[Grade_Track__c] [varchar](10) NULL,
	[Grade__c] [varchar](255) NULL,
	[Grades_Overridden__c] [int] NOT NULL,
	[Graduation_Indicator__c] [int] NOT NULL,
	[Hispanic__c] [varchar](255) NULL,
	[Holding_Source__c] [varchar](18) NULL,
	[Home_Language__c] [varchar](255) NULL,
	[Homeroom__c] [varchar](18) NULL,
	[IEP_Program__c] [int] NOT NULL,
	[IEP__c] [int] NOT NULL,
	[If_Free_Type__c] [varchar](255) NULL,
	[Immigrant_Program_Participant__c] [int] NOT NULL,
	[Immigrant__c] [int] NOT NULL,
	[Individual__c] [varchar](18) NULL,
	[Intent_to_Return_Following_Year__c] [int] NOT NULL,
	[Is_Active__c] [int] NOT NULL,
	[Legacy_Id__c] [varchar](20) NULL,
	[Lep_Flag__c] [varchar](1) NULL,
	[License_Plate__c] [varchar](10) NULL,
	[Locker_Number__c] [decimal](5, 0) NULL,
	[Lot_Access__c] [varchar](20) NULL,
	[Lunch_Status__c] [varchar](255) NULL,
	[Meals_Category__c] [varchar](255) NULL,
	[Meals_Sub_Category__c] [varchar](255) NULL,
	[Migrant__c] [int] NOT NULL,
	[Mobile_Phone__c] [varchar](40) NULL,
	[Native_Hawaiian_Other_Pacific_Islander__c] [varchar](1300) NULL,
	[Next_School__c] [varchar](18) NULL,
	[Nickname__c] [varchar](20) NULL,
	[Non_Present_Daily_Attendance_v2__c] [decimal](18, 0) NULL,
	[Official_Exit_Type__c] [varchar](255) NULL,
	[Original_Graduation_Year__c] [varchar](255) NULL,
	[Original_Member_Of_Cohort__c] [int] NOT NULL,
	[Out_of_ELL__c] [int] NOT NULL,
	[Parental_Situation__c] [varchar](255) NULL,
	[Permission_for_Directory__c] [varchar](255) NULL,
	[Permit_Number__c] [varchar](20) NULL,
	[Photograph_Authorized__c] [int] NOT NULL,
	[Previous_School_1_Type__c] [varchar](255) NULL,
	[Previous_School_1__c] [varchar](50) NULL,
	[Previous_School_2_Type__c] [varchar](255) NULL,
	[Previous_School_2__c] [varchar](50) NULL,
	[Primary_Car_Make__c] [varchar](50) NULL,
	[Primary_Disability__c] [varchar](255) NULL,
	[Primary_Dissability__c] [varchar](255) NULL,
	[Primary_Schedule_Group__c] [varchar](18) NULL,
	[Promoted__c] [int] NOT NULL,
	[Promotional_Status__c] [varchar](255) NULL,
	[RT_Picture__c] [varchar](255) NULL,
	[Race_Multi__c] [varchar](255) NULL,
	[Race_PowerSchool_Import__c] [varchar](10) NULL,
	[Race__c] [varchar](255) NULL,
	[Reading_Level_Q1__c] [varchar](15) NULL,
	[Reading_Level_Q2__c] [varchar](15) NULL,
	[Reading_Level_Q3__c] [varchar](15) NULL,
	[Reading_Level_Q4__c] [varchar](15) NULL,
	[Reference_Id__c] [varchar](100) NULL,
	[Residence_After_Exiting_School__c] [varchar](255) NULL,
	[Retained_in_a_previous_grade_level__c] [int] NOT NULL,
	[SPED_School__c] [varchar](18) NULL,
	[Schedule_Group__c] [varchar](18) NULL,
	[School_Attendance_Goal__c] [decimal](18, 2) NULL,
	[School_Behavior_Goal__c] [decimal](18, 2) NULL,
	[School_Bus_Route__c] [varchar](255) NULL,
	[School_Bus__c] [int] NOT NULL,
	[School_Counseling__c] [int] NOT NULL,
	[School_Name__c] [varchar](1300) NULL,
	[School_Year_Name__c] [varchar](1300) NULL,
	[School_Year__c] [varchar](18) NULL,
	[School__c] [varchar](18) NULL,
	[Sec_Ed__c] [int] NOT NULL,
	[Section__c] [varchar](255) NULL,
	[Service_Hours_YTD__c] [decimal](6, 2) NULL,
	[Setup__c] [varchar](18) NULL,
	[Special_Ed_Type_Notes__c] [varchar](255) NULL,
	[Special_Ed_Type__c] [varchar](255) NULL,
	[Special_Ed__c] [int] NOT NULL,
	[Special_Education_Hours__c] [varchar](255) NULL,
	[Special_Education_Level__c] [varchar](255) NULL,
	[Staff__c] [varchar](255) NULL,
	[State__c] [varchar](255) NULL,
	[Student_First_Name__c] [varchar](100) NOT NULL,
	[Student_Id__c] [varchar](100) NULL,
	[Student_Last_Name__c] [varchar](100) NULL,
	[Student_Picture__c] [varchar](1300) NULL,
	[Student__c] [varchar](80) NULL,
	[Test_Account__c] [varchar](1300) NULL,
	[Title_1_Status_Date__c] [datetime] NULL,
	[Title_1_Status__c] [varchar](255) NULL,
	[Today_s_Points_Balance__c] [decimal](18, 0) NULL,
	[Total_Time_Lost__c] [decimal](18, 0) NULL,
	[Transportation_Authorized__c] [int] NOT NULL,
	[Transportation_Type__c] [varchar](255) NULL,
	[Use_Sectional_Attendance__c] [int] NOT NULL,
	[Video_Authorized__c] [int] NOT NULL,
	[Ward__c] [varchar](255) NULL,
	[Week_To_Date_Points_Balance__c] [decimal](4, 0) NULL,
	[White__c] [varchar](1300) NULL,
	[X504_Plan__c] [int] NOT NULL,
	[Years_at_School__c] [decimal](3, 0) NULL,
	[Zip_Code__c] [varchar](10) NULL,
	[of_Assigned_Homework__c] [decimal](18, 0) NULL,
	[of_Completed_Homework__c] [decimal](18, 0) NULL,
	[of_Late_Homework__c] [decimal](18, 0) NULL,
	[of_Missing_Homework__c] [decimal](18, 0) NULL,
	[Attendance_Time_Lost__c] [decimal](18, 0) NULL,
	[Combined_Final_Grade_Values__c] [decimal](5, 2) NULL,
	[Combined_Weighted_Final_Grade_Values__c] [decimal](18, 2) NULL,
	[Current_Meals_Balance__c] [decimal](18, 2) NULL,
	[Non_Present_Daily_Attendance__c] [decimal](18, 0) NULL,
	[Sectional_Attendance_Time_Lost__c] [decimal](18, 0) NULL,
	[Student_Behavior_Score__c] [decimal](10, 0) NULL,
	[Sum_of_Final_Consequence__c] [decimal](18, 0) NULL,
	[Sum_of_Time_Lost__c] [decimal](18, 0) NULL,
	[Total_Credits_Earned__c] [decimal](2, 0) NULL,
	[Total_Daily_Attendance__c] [decimal](18, 0) NULL,
	[Total_of_Unexcused_Daily_Absences__c] [decimal](18, 0) NULL,
	[YTD_Points_Balance__c] [decimal](3, 0) NULL,
	[Number_of_Indicator_Areas__c] [decimal](18, 0) NULL,
	[Hobbies__c] [varchar](255) NULL,
	[Strengths__c] [varchar](255) NULL,
	[Additional_Information__c] [varchar](255) NULL,
	[Contact_Cohort__c] [varchar](1300) NULL,
	[OSSE_Code_Text__c] [varchar](10) NULL,
	[Portfolio_Required__c] [int] NOT NULL,
	[Recovery_Plan_Action_Items__c] [varchar](255) NULL,
	[legacy_key1__c] [varchar](100) NULL,
	[legacy_key2__c] [varchar](100) NULL,
	[Contact_Student_Id__c] [varchar](1300) NULL,
	[Current_GPA__c] [decimal](6, 2) NULL,
	[OSSE_Code__c] [varchar](255) NULL,
	[Portfolio_Completed__c] [int] NOT NULL,
	[Weighted_GPA_To_Date__c] [decimal](3, 2) NULL,
	[Attendance__c] [decimal](1, 0) NULL,
	[Behavior__c] [decimal](1, 0) NULL,
	[ELA_Literacy__c] [decimal](1, 0) NULL,
	[Math__c] [decimal](1, 0) NULL,
	[Location__c] [varchar](1300) NULL,
	[Count__c] [decimal](18, 0) NULL,
	[Attending_Summer_School__c] [int] NOT NULL,
	[Student_ID_Auto_Number__c] [varchar](30) NOT NULL,
	[Guest_Student__c] [int] NOT NULL,
	[Local_Student_ID__c] [varchar](100) NULL
) ON [PRIMARY]

GO
