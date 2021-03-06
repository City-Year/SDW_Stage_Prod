USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[PowerBI_Staff_Test]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBI_Staff_Test](
	[Id] [varchar](18) NULL,
	[Name] [varchar](80) NULL,
	[Email__c] [varchar](80) NULL,
	[External_Id__c] [varchar](255) NULL,
	[First_Name_Staff__c] [varchar](80) NOT NULL,
	[Gender__c] [varchar](255) NULL,
	[Grade__c] [varchar](255) NULL,
	[Highest_Education__c] [varchar](255) NULL,
	[Holding_Source__c] [varchar](18) NULL,
	[ID__c] [varchar](20) NULL,
	[Individual__c] [varchar](18) NULL,
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
	[Campus__c] [varchar](255) NULL,
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
