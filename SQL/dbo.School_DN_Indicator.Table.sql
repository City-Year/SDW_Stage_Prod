USE [SDW_Stage_Prod]
GO
/****** Object:  Table [dbo].[School_DN_Indicator]    Script Date: 12/1/2016 8:48:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School_DN_Indicator](
	[SCHOOL_ID] [int] NOT NULL,
	[SCHOOL_ALT_ID] [varchar](30) NULL,
	[SITE_ID] [int] NULL,
	[SCHOOL_NAME] [varchar](100) NULL,
	[SCHOOL_FULL_NAME] [varchar](255) NULL,
	[SCHOOL_DESC] [varchar](100) NULL,
	[SCHOOL_DISTRICT_NAME] [varchar](100) NULL,
	[PARENT_SCHOOL_ENTITY] [varchar](100) NULL,
	[SCHOOL_CURR_CY_SITE] [varchar](40) NULL,
	[SCHOOL_LGCY_KEY] [varchar](18) NULL,
	[SFDC_ACCT_ID] [varchar](18) NULL,
	[SFDC_PARENT_ACCT_ID] [varchar](18) NULL,
	[SFDC_PARENT_ACCT_NAME] [varchar](100) NULL,
	[SCHOOL_TYPE] [varchar](30) NULL,
	[SCHOOL_PHONE] [varchar](20) NULL,
	[SCHOOL_FAX] [varchar](20) NULL,
	[SCHOOL_WEBSITE] [varchar](100) NULL,
	[SCHOOL_STREET] [varchar](30) NULL,
	[SCHOOL_CITY] [varchar](40) NULL,
	[SCHOOL_STATE] [varchar](40) NULL,
	[SCHOOL_COUNTRY] [varchar](40) NULL,
	[SCHOOL_ZIPCODE] [varchar](20) NULL,
	[PARTNERSHIP_LVL] [varchar](40) NULL,
	[IS_CHARTER_SCHOOL] [char](1) NULL,
	[SCHOOL_CREATE_DATE] [datetime] NULL,
	[IS_CURRENT_PARTNER] [char](1) NULL,
	[IS_DIPLOMAS_NOW_SCHOOL] [char](1) NULL,
	[IS_I3_SCHOOL] [char](1) NULL,
	[LOWEST_GRADE_LVL] [varchar](40) NULL,
	[HIGHEST_GRADE_LVL] [varchar](40) NULL,
	[LOAD_DATE] [datetime] NULL,
	[REC_BEGIN_DATE] [datetime] NULL,
	[REC_END_DATE] [datetime] NULL,
	[RECORD_SRC] [varchar](50) NULL,
	[SCHOOL_VERSION_NUMBER] [int] NULL,
	[CREATED_BY_USR_ID] [int] NULL,
	[SCHOOL_DISTRICT_ID] [int] NULL,
	[CREATED_BY_USR_NAME] [varchar](255) NULL,
	[CREATED_DATE] [datetime] NULL,
	[SCHOOL_OWNER_ID] [int] NULL,
	[SCHOOL_OWNER_ROLE_ID] [int] NULL,
	[SCHOOL_OWNER_NAME] [varchar](255) NULL,
	[SCHOOL_OWNER_ROLE_NAME] [varchar](255) NULL,
	[SF_SCHOOL_ID] [varchar](30) NULL,
	[RECORD_UPDATE_DATE] [datetime] NULL,
	[SOURCE_DELETED] [varchar](10) NULL,
	[SCHOOL_LOCAL_ID] [varchar](50) NULL,
	[IS_DELETED] [varchar](20) NULL,
	[CYCHANNEL_ACCOUNT_NUMBER] [varchar](50) NULL,
 CONSTRAINT [PK_CY_MSTR_SCHOOL] PRIMARY KEY NONCLUSTERED 
(
	[SCHOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
