USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[MasterRecordId] [varchar](18) NULL,
	[AccountId] [varchar](18) NULL,
	[LastName] [varchar](80) NOT NULL,
	[FirstName] [varchar](40) NULL,
	[Salutation] [varchar](40) NULL,
	[Name] [varchar](121) NOT NULL,
	[RecordTypeId] [varchar](18) NULL,
	[OtherStreet] [varchar](255) NULL,
	[OtherCity] [varchar](40) NULL,
	[OtherState] [varchar](80) NULL,
	[OtherPostalCode] [varchar](20) NULL,
	[OtherCountry] [varchar](80) NULL,
	[MailingStreet] [varchar](255) NULL,
	[MailingCity] [varchar](40) NULL,
	[MailingState] [varchar](80) NULL,
	[MailingPostalCode] [varchar](20) NULL,
	[MailingCountry] [varchar](80) NULL,
	[Phone] [varchar](40) NULL,
	[Fax] [varchar](40) NULL,
	[MobilePhone] [varchar](40) NULL,
	[HomePhone] [varchar](40) NULL,
	[OtherPhone] [varchar](40) NULL,
	[AssistantPhone] [varchar](40) NULL,
	[ReportsToId] [varchar](18) NULL,
	[Email] [varchar](80) NULL,
	[Title] [varchar](128) NULL,
	[Department] [varchar](80) NULL,
	[AssistantName] [varchar](40) NULL,
	[LeadSource] [varchar](40) NULL,
	[Birthdate] [datetime] NULL,
	[Description] [varchar](255) NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[LastCURequestDate] [datetime] NULL,
	[LastCUUpdateDate] [datetime] NULL,
	[EmailBouncedReason] [varchar](255) NULL,
	[EmailBouncedDate] [datetime] NULL,
	[Jigsaw] [varchar](20) NULL,
	[JigsawContactId] [varchar](20) NULL,
	[Active__c] [int] NOT NULL,
	[Activities__c] [varchar](255) NULL,
	[Actual_Graduation_Date__c] [datetime] NULL,
	[Admission_Code__c] [varchar](255) NULL,
	[Admission_Status__c] [varchar](255) NULL,
	[Age__c] [decimal](18, 0) NULL,
	[Application_Date__c] [datetime] NULL,
	[Best_Place_of_Contact__c] [varchar](255) NULL,
	[Birth_Place_City__c] [varchar](80) NULL,
	[Birth_Place_State__c] [varchar](255) NULL,
	[Certification_Status__c] [varchar](255) NULL,
	[Cohort__c] [varchar](18) NULL,
	[Comments__c] [varchar](255) NULL,
	[Country_of_Origin__c] [varchar](255) NULL,
	[Currently_evaluated_for_special_ed__c] [int] NOT NULL,
	[Date_of_Birth__c] [datetime] NULL,
	[Detailed_Exit_Reason__c] [varchar](255) NULL,
	[Disability_Flag__c] [varchar](1) NULL,
	[District_of_Columbia_C_Student_ID__c] [varchar](20) NULL,
	[EC_1_Relationship_to_Student__c] [varchar](255) NULL,
	[EContact_1_Cell_Phone__c] [varchar](40) NULL,
	[EContact_1_Home_Phone__c] [varchar](40) NULL,
	[EContact_2_Cell_Phone__c] [varchar](40) NULL,
	[EContact_2_Home_Phone__c] [varchar](40) NULL,
	[EContact_2_Work_Phone__c] [varchar](40) NULL,
	[ELH_Provided_Student_ID__c] [varchar](20) NULL,
	[ELL__c] [int] NOT NULL,
	[Econtact_2_Relationship_to_Student__c] [varchar](255) NULL,
	[Email_to_SMS_Address__c] [varchar](255) NULL,
	[Emergency_Contact_1_Name__c] [varchar](255) NULL,
	[Emergency_Contact_1_Work_Phone__c] [varchar](40) NULL,
	[Emergency_Contact_2_Name__c] [varchar](255) NULL,
	[Employment_End_Date__c] [datetime] NULL,
	[Employment_Start_Date__c] [datetime] NULL,
	[Employment_Status__c] [varchar](255) NULL,
	[Entry_Date__c] [datetime] NULL,
	[Entry_Type__c] [varchar](255) NULL,
	[Ethnicity__c] [varchar](255) NULL,
	[Exit_Comments__c] [varchar](255) NULL,
	[Exit_Date__c] [datetime] NULL,
	[Exit_Status__c] [varchar](255) NULL,
	[Extension__c] [varchar](40) NULL,
	[External_Id__c] [varchar](255) NULL,
	[Full_Time_Status__c] [varchar](255) NULL,
	[Gender__c] [varchar](255) NULL,
	[Highest_Level_of_Education_Completed__c] [varchar](255) NULL,
	[Holding_Source__c] [varchar](18) NULL,
	[Home_Language__c] [varchar](255) NULL,
	[Honors__c] [varchar](255) NULL,
	[ID__c] [varchar](100) NULL,
	[Immigrant_Program_Participant__c] [int] NOT NULL,
	[Immigrant__c] [int] NOT NULL,
	[Is_Active__c] [int] NOT NULL,
	[Languages__c] [varchar](100) NULL,
	[Latitude__c] [varchar](100) NULL,
	[Legacy_ID__c] [varchar](100) NULL,
	[Lep_Flag__c] [varchar](1) NULL,
	[Level__c] [varchar](255) NULL,
	[Longitude__c] [varchar](100) NULL,
	[Middle_Name__c] [varchar](80) NULL,
	[Migrant__c] [int] NOT NULL,
	[Nickname__c] [varchar](100) NULL,
	[Notes__c] [varchar](255) NULL,
	[Notify_via_Email__c] [int] NOT NULL,
	[Notify_via_SMS__c] [int] NOT NULL,
	[Official_Exit_Type__c] [varchar](255) NULL,
	[Original_Member_of_Cohort__c] [int] NOT NULL,
	[Permission_for_Directory__c] [varchar](255) NULL,
	[Personal_Phone__c] [varchar](40) NULL,
	[Photograph_Authorized__c] [int] NOT NULL,
	[Portfolio_Completed__c] [int] NULL,
	[Portfolio_Required__c] [varchar](1300) NULL,
	[Preferred_Language__c] [varchar](255) NULL,
	[Previous_School_1_Type__c] [varchar](255) NULL,
	[Previous_School_1__c] [varchar](50) NULL,
	[Previous_School_2_Type__c] [varchar](255) NULL,
	[Previous_School_2__c] [varchar](80) NULL,
	[Primary_Parent__c] [int] NOT NULL,
	[Projected_Cohort_Graduation_Date__c] [datetime] NULL,
	[Projected_graduation_date__c] [datetime] NULL,
	[Race_PowerSchool_Import__c] [varchar](10) NULL,
	[Race__c] [varchar](255) NULL,
	[Receive_Written_Information_in_Spanish__c] [varchar](255) NULL,
	[Reference_Id__c] [varchar](100) NULL,
	[Relationship__c] [varchar](255) NULL,
	[Residence_After_Exiting_School__c] [varchar](255) NULL,
	[Scheduled_Daily_EndTime__c] [varchar](18) NULL,
	[Scheduled_Start_Time__c] [varchar](18) NULL,
	[Scheduled_Work_Days_Weekly__c] [varchar](255) NULL,
	[Scheduled_Work_Months_Annually__c] [varchar](255) NULL,
	[Secondary_Email__c] [varchar](80) NULL,
	[Service_Hours_Remaining__c] [decimal](18, 2) NULL,
	[Social_Security_Number__c] [varchar](18) NULL,
	[Staff_Code__c] [varchar](255) NULL,
	[Staff_Photo__c] [varchar](255) NULL,
	[Start_Date__c] [datetime] NULL,
	[Student_Current_Grade__c] [varchar](255) NULL,
	[Student_Id__c] [varchar](255) NULL,
	[Student_Picture__c] [varchar](255) NULL,
	[Student__c] [varchar](18) NULL,
	[Substitute_Status__c] [varchar](255) NULL,
	[Supervisor__c] [varchar](18) NULL,
	[Teaching_Credential_Type__c] [varchar](255) NULL,
	[Technology_Skills_Assessed__c] [int] NOT NULL,
	[Technology_Standards_Met__c] [int] NOT NULL,
	[Title_1_Status__c] [varchar](255) NULL,
	[Transportation_Authorized__c] [int] NOT NULL,
	[User_ID__c] [varchar](255) NULL,
	[User_Name__c] [varchar](30) NULL,
	[User__c] [varchar](18) NULL,
	[Video_Authorized__c] [int] NOT NULL,
	[Ward__c] [varchar](255) NULL,
	[Wireless_Provider__c] [varchar](255) NULL,
	[X504_Plan__c] [int] NOT NULL,
	[Years_of_Prior_Teaching_Experience__c] [decimal](10, 0) NULL,
	[Service_Hours_Completed__c] [decimal](6, 2) NULL,
	[legacy_key1__c] [varchar](100) NULL
) ON [PRIMARY]

GO
