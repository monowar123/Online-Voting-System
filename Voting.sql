SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Division]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Division](
	[divId] [varchar](50) NOT NULL,
	[divName] [varchar](50) NULL,
 CONSTRAINT [PK_Division] PRIMARY KEY CLUSTERED 
(
	[divId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[District]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[District](
	[distId] [varchar](50) NOT NULL,
	[distName] [varchar](50) NULL,
	[divId] [varchar](50) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[distId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Upozilla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Upozilla](
	[upoId] [varchar](50) NOT NULL,
	[upoName] [varchar](50) NULL,
	[distId] [varchar](50) NULL,
 CONSTRAINT [PK_Upozilla] PRIMARY KEY CLUSTERED 
(
	[upoId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Union]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Union](
	[unionId] [varchar](50) NOT NULL,
	[unionName] [varchar](50) NULL,
	[upoId] [varchar](50) NULL,
 CONSTRAINT [PK_Union] PRIMARY KEY CLUSTERED 
(
	[unionId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Word]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Word](
	[wordId] [varchar](50) NOT NULL,
	[wordName] [varchar](50) NULL,
	[referenceId] [varchar](50) NULL,
 CONSTRAINT [PK_Word] PRIMARY KEY CLUSTERED 
(
	[wordId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VotarInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VotarInfo](
	[votar_id] [varchar](50) NOT NULL,
	[vname] [varchar](50) NULL,
	[fatherName] [varchar](50) NULL,
	[motherName] [varchar](50) NULL,
	[husband_wifeName] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[occupation] [varchar](50) NULL,
	[dateOfBirth] [datetime] NULL,
	[bloodGroup] [varchar](50) NULL,
	[image] [image] NULL,
	[division] [varchar](50) NULL,
	[district] [varchar](50) NULL,
	[upozilla] [varchar](50) NULL,
	[area] [varchar](50) NULL,
	[word] [varchar](50) NULL,
	[thana] [varchar](50) NULL,
	[postOffice] [varchar](50) NULL,
	[postCode] [varchar](50) NULL,
	[p_division] [varchar](50) NULL,
	[p_district] [varchar](50) NULL,
	[p_upozilla] [varchar](50) NULL,
	[p_area] [varchar](50) NULL,
	[p_word] [varchar](50) NULL,
	[p_thana] [varchar](50) NULL,
	[p_postOffice] [varchar](50) NULL,
	[p_postCode] [varchar](50) NULL,
	[user_name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[sQuestion] [varchar](50) NULL,
	[sAnswer] [varchar](50) NULL,
 CONSTRAINT [PK_VotarInfo] PRIMARY KEY CLUSTERED 
(
	[votar_id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdminInfo](
	[votar_id] [varchar](50) NOT NULL,
	[user_name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[alternateEmail] [varchar](50) NULL,
	[squestion] [varchar](50) NULL,
	[sanswer] [varchar](50) NULL,
	[admintype] [varchar](50) NULL,
	[adminstatus] [bit] NULL,
 CONSTRAINT [PK_AdminInfo] PRIMARY KEY CLUSTERED 
(
	[votar_id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PageInfo](
	[pageId] [varchar](50) NOT NULL,
	[pageContent] [ntext] NULL,
	[modifydate] [datetime] NULL,
	[modifiedby] [varchar](50) NULL,
 CONSTRAINT [PK_PageInfo] PRIMARY KEY CLUSTERED 
(
	[pageId] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
