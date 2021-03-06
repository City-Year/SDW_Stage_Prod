USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Staff__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff__c](
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
	[Address_1__c] [varchar](255) NULL,
	[Address_2__c] [varchar](255) NULL,
	[Age__c] [decimal](18, 0) NULL,
	[Base_School__c] [varchar](30) NULL,
	[Birthday__c] [datetime] NULL,
	[Campus__c] [varchar](255) NULL,
	[Certificate_Expiration_Date__c] [datetime] NULL,
	[City__c] [varchar](100) NULL,
	[Doctorate_Degree_1__c] [varchar](100) NULL,
	[Doctorate_Institute__c] [varchar](100) NULL,
	[Email__c] [varchar](80) NULL,
	[Extension__c] [varchar](40) NULL,
	[External_Id__c] [varchar](255) NULL,
	[First_Name_Staff__c] [varchar](80) NOT NULL,
	[Gender__c] [varchar](255) NULL,
	[Grade__c] [varchar](255) NULL,
	[Highest_Education__c] [varchar](255) NULL,
	[Holding_Source__c] [varchar](18) NULL,
	[ID__c] [varchar](20) NULL,
	[Individual__c] [varchar](18) NULL,
	[Instructional_Staff__c] [int] NOT NULL,
	[Is_Active__c] [int] NOT NULL,
	[Licensure_Institution__c] [varchar](100) NULL,
	[Licensure_Type__c] [varchar](255) NULL,
	[Master_s_Degree_1__c] [varchar](100) NULL,
	[Master_s_Degree_2__c] [varchar](100) NULL,
	[Master_s_Degree_3__c] [varchar](100) NULL,
	[Masters_Institution_1__c] [varchar](100) NULL,
	[Masters_Institution_2__c] [varchar](100) NULL,
	[Masters_Institution_3__c] [varchar](100) NULL,
	[Middle_Name_Staff__c] [varchar](80) NULL,
	[New_Returning__c] [varchar](255) NULL,
	[Nickname__c] [varchar](18) NULL,
	[Official_First_Name__c] [varchar](40) NULL,
	[Organization__c] [varchar](18) NULL,
	[Personal_Phone__c] [varchar](40) NULL,
	[Position_2__c] [varchar](255) NULL,
	[Position__c] [varchar](255) NULL,
	[Preferred_classroom__c] [varchar](18) NULL,
	[Qualifications__c] [varchar](255) NULL,
	[Race__c] [varchar](255) NULL,
	[Reference_Id__c] [varchar](100) NULL,
	[Role_Type__c] [varchar](18) NULL,
	[Role__c] [varchar](50) NULL,
	[Secondary_Email__c] [varchar](80) NULL,
	[Staff_Code__c] [varchar](255) NULL,
	[Staff_Email__c] [varchar](1300) NULL,
	[Staff_Last_Name__c] [varchar](80) NULL,
	[Staff_Photo__c] [varchar](255) NULL,
	[Staff_Picture_c__c] [varchar](1300) NULL,
	[Start_Date__c] [datetime] NULL,
	[State__c] [varchar](255) NULL,
	[Supervisor__c] [varchar](18) NULL,
	[Title__c] [varchar](255) NULL,
	[Undergraduate_Degree_1__c] [varchar](100) NULL,
	[Undergraduate_Degree_2__c] [varchar](100) NULL,
	[Undergraduate_Degree_3__c] [varchar](100) NULL,
	[Undergraduate_Institution_1__c] [varchar](100) NULL,
	[Undergraduate_Institution_2__c] [varchar](100) NULL,
	[Undergraduate_Institution_3__c] [varchar](100) NULL,
	[User_ID__c] [varchar](1300) NULL,
	[User_Name__c] [varchar](30) NULL,
	[Utilization__c] [varchar](255) NULL,
	[Years_at_School__c] [decimal](3, 0) NULL,
	[Zip_Code__c] [varchar](10) NULL,
	[legacy_key1__c] [varchar](100) NULL,
	[legacy_key2__c] [varchar](100) NULL,
	[Site__c] [varchar](1300) NULL
) ON [PRIMARY]

GO
