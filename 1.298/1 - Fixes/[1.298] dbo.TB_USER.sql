USE KN_online
GO
IF EXISTS (SELECT * FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID('[dbo].[TB_USER]') AND OBJECTPROPERTY(ID, 'ISUSERTABLE') = 1)
DROP TABLE [dbo].[TB_USER]
GO
/* PremiumType (1 Bronze , 2 Silver , 3 Gold)*/
/****** Object:  Table [dbo].[TB_USER]    Script Date: 01/27/2023 19:57:51 ******/
-- 2023 can_snoxd
SET NOCOUNT ON
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
Print 'Table Procedure Fixed'
CREATE TABLE [dbo].[TB_USER](
	[strAccountID] [varchar](21) NOT NULL,
	[strPasswd] [varchar](13) NOT NULL,
	[strSocNo] [varchar](20) NOT NULL,
	[strAuthority] [tinyint] NOT NULL,
	[PremiumExpire] [datetime] NOT NULL,
	[PremiumType] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
Print 'DONE'