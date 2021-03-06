USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[MasterRecordId] [varchar](18) NULL,
	[Name] [varchar](255) NOT NULL,
	[Type] [varchar](40) NULL,
	[RecordTypeId] [varchar](18) NULL,
	[ParentId] [varchar](18) NULL,
	[BillingStreet] [varchar](255) NULL,
	[BillingCity] [varchar](40) NULL,
	[BillingState] [varchar](80) NULL,
	[BillingPostalCode] [varchar](20) NULL,
	[BillingCountry] [varchar](80) NULL,
	[ShippingStreet] [varchar](255) NULL,
	[ShippingCity] [varchar](40) NULL,
	[ShippingState] [varchar](80) NULL,
	[ShippingPostalCode] [varchar](20) NULL,
	[ShippingCountry] [varchar](80) NULL,
	[Phone] [varchar](40) NULL,
	[Fax] [varchar](40) NULL,
	[Website] [varchar](255) NULL,
	[Industry] [varchar](40) NULL,
	[AnnualRevenue] [decimal](18, 0) NULL,
	[NumberOfEmployees] [int] NULL,
	[Description] [varchar](255) NULL,
	[OwnerId] [varchar](18) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[IsCustomerPortal] [int] NOT NULL,
	[Jigsaw] [varchar](20) NULL,
	[JigsawCompanyId] [varchar](20) NULL,
	[AccountSource] [varchar](40) NULL,
	[SicDesc] [varchar](80) NULL,
	[AP_Mathematics_Program_Offered__c] [int] NOT NULL,
	[AP_Other_Program_Offered__c] [int] NOT NULL,
	[AP_Science_Program_Offered__c] [int] NOT NULL,
	[AYP_Status_2008__c] [varchar](255) NULL,
	[AYP_Status_2009__c] [varchar](255) NULL,
	[AYP_Status_Change__c] [varchar](255) NULL,
	[Abbreviation__c] [varchar](6) NULL,
	[Academic_Goal__c] [decimal](18, 0) NULL,
	[Administrative_Funding_Control__c] [varchar](255) NULL,
	[Assessment_Reporting_Method__c] [varchar](255) NULL,
	[Assistant_Principal_1__c] [varchar](18) NULL,
	[Assistant_Principal_2__c] [varchar](18) NULL,
	[Assistant_Principal_3__c] [varchar](18) NULL,
	[Assistant_Principal_4__c] [varchar](18) NULL,
	[Attendance_Goal__c] [decimal](18, 0) NULL,
	[Availability_of_Grouping__c] [int] NOT NULL,
	[Behavior_Goal__c] [decimal](18, 0) NULL,
	[Budget_Allocation_2008__c] [decimal](10, 0) NULL,
	[Budget_Allocation_2009__c] [decimal](10, 0) NULL,
	[Census_Tract_Number__c] [decimal](18, 0) NULL,
	[Compliance_Determination_Date__c] [datetime] NULL,
	[Compliance_Name__c] [varchar](80) NULL,
	[Compliance_Status__c] [varchar](255) NULL,
	[Distinguished_School_Status__c] [int] NOT NULL,
	[Facility_Capacity__c] [decimal](5, 0) NULL,
	[Holding_Source__c] [varchar](18) NULL,
	[IB_Program_Offered__c] [int] NOT NULL,
	[Instructional_Superintendent__c] [varchar](18) NULL,
	[Is_Active__c] [int] NOT NULL,
	[Legacy_ID__c] [varchar](20) NULL,
	[Math_Proficiency_Target__c] [int] NOT NULL,
	[Name_of_County__c] [varchar](80) NULL,
	[Principal_E_mail_Address__c] [varchar](80) NULL,
	[Principal__c] [varchar](18) NULL,
	[Reference_Id__c] [varchar](100) NULL,
	[School_Buildings__c] [decimal](3, 0) NULL,
	[School_Code__c] [decimal](18, 0) NULL,
	[School_District_Subdivision__c] [varchar](80) NULL,
	[School_Full_Name__c] [varchar](255) NULL,
	[School_Picture__c] [varchar](255) NULL,
	[School_Programs__c] [decimal](18, 0) NULL,
	[School_Ward__c] [decimal](3, 0) NULL,
	[State_Assigned_Code_for_Institution__c] [varchar](20) NULL,
	[State_FIPS_Code__c] [varchar](255) NULL,
	[Supplemental_Services_Provided__c] [varchar](255) NULL,
	[Title_1_Targeted_School_Status__c] [varchar](255) NULL,
	[Type_of_School__c] [varchar](255) NULL,
	[of_Enrolled_Students__c] [decimal](18, 0) NULL,
	[of_Faculty__c] [decimal](18, 0) NULL,
	[Room_Capacity__c] [decimal](3, 0) NULL,
	[Room_Count__c] [decimal](18, 0) NULL,
	[legacy_key1__c] [varchar](100) NULL,
	[Site__c] [varchar](255) NULL,
	[Active__c] [decimal](18, 0) NULL,
	[External_Id__c] [varchar](255) NULL,
	[CustomerPriority__c] [varchar](225) NULL,
	[NumberofLocations__c] [decimal](18, 0) NULL,
	[SLAExpirationDate__c] [datetime] NULL,
	[SLASerialNumber__c] [varchar](10) NULL,
	[SLA__c] [varchar](255) NULL,
	[UpsellOpportunity__c] [varchar](255) NULL
) ON [PRIMARY]

GO
