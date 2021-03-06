USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[Student_PG__c]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_PG__c](
	[Id] [varchar](18) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedById] [varchar](18) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastModifiedById] [varchar](18) NOT NULL,
	[SystemModstamp] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[Student_c__c] [varchar](18) NOT NULL,
	[External_Id__c] [varchar](255) NULL,
	[PGCellPhone__c] [varchar](1300) NULL,
	[PG_First_Name__c] [varchar](1300) NULL,
	[PG_Last_Name__c] [varchar](1300) NULL,
	[PG_Middle_Name__c] [varchar](1300) NULL,
	[PG_Relationship__c] [varchar](1300) NULL,
	[P_G_Personal_Phone__c] [varchar](1300) NULL,
	[P_G_Phone__c] [varchar](1300) NULL,
	[Parent_Guardian_c__c] [varchar](18) NULL,
	[Primary_Contact__c] [int] NOT NULL,
	[Student__c] [varchar](18) NULL
) ON [PRIMARY]

GO
