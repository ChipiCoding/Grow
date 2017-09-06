/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.1601)
    Source Database Engine Edition : Microsoft SQL Server Standard Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [GROW]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [nchar](10) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bank] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farm]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farm](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[dateBegin] [date] NOT NULL,
	[dateEnd] [date] NULL,
	[idTypeFarm] [bigint] NOT NULL,
	[idLight] [bigint] NULL,
 CONSTRAINT [PK_Farm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ligth]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ligth](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [nchar](10) NOT NULL,
	[watts] [int] NOT NULL,
	[idTypeLight] [bigint] NOT NULL,
 CONSTRAINT [PK_Ligth] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plant]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plant](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[alias] [nvarchar](50) NULL,
	[idSeed] [bigint] NOT NULL,
	[idFarm] [bigint] NOT NULL,
	[dateGermination] [date] NULL,
	[dateGrow] [date] NULL,
	[dateFlow] [date] NULL,
 CONSTRAINT [PK_Plant] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seed]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seed](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[idBank] [bigint] NOT NULL,
	[genetic] [nvarchar](50) NULL,
	[daysGrow] [int] NULL,
	[daysFlow] [int] NULL,
	[heightIndoor] [int] NULL,
	[heightOutdoor] [int] NULL,
	[idTypeSeed] [bigint] NOT NULL,
	[idSex] [bigint] NOT NULL,
 CONSTRAINT [PK_Seed] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sex]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sex](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [nchar](10) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sex] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeFarm]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeFarm](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [nchar](10) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeFarm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeLight]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeLight](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [nchar](10) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeLight] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeSeed]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeSeed](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [nchar](10) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeSeed] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variaty]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variaty](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [nchar](10) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VariatySeed]    Script Date: 9/6/2017 3:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VariatySeed](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idSeed] [bigint] NOT NULL,
	[idVariety] [bigint] NOT NULL,
	[porcentage] [int] NOT NULL,
 CONSTRAINT [PK_TypeSeed_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Farm]  WITH CHECK ADD  CONSTRAINT [FK_Farm_Farm] FOREIGN KEY([idTypeFarm])
REFERENCES [dbo].[TypeFarm] ([id])
GO
ALTER TABLE [dbo].[Farm] CHECK CONSTRAINT [FK_Farm_Farm]
GO
ALTER TABLE [dbo].[Farm]  WITH CHECK ADD  CONSTRAINT [FK_Farm_TypeLight] FOREIGN KEY([idLight])
REFERENCES [dbo].[Ligth] ([id])
GO
ALTER TABLE [dbo].[Farm] CHECK CONSTRAINT [FK_Farm_TypeLight]
GO
ALTER TABLE [dbo].[Ligth]  WITH CHECK ADD  CONSTRAINT [FK_Ligth_TypeLight] FOREIGN KEY([idTypeLight])
REFERENCES [dbo].[TypeLight] ([id])
GO
ALTER TABLE [dbo].[Ligth] CHECK CONSTRAINT [FK_Ligth_TypeLight]
GO
ALTER TABLE [dbo].[Plant]  WITH CHECK ADD  CONSTRAINT [FK_Plant_Farm] FOREIGN KEY([idFarm])
REFERENCES [dbo].[Farm] ([id])
GO
ALTER TABLE [dbo].[Plant] CHECK CONSTRAINT [FK_Plant_Farm]
GO
ALTER TABLE [dbo].[Plant]  WITH CHECK ADD  CONSTRAINT [FK_Plant_Plant] FOREIGN KEY([idSeed])
REFERENCES [dbo].[Seed] ([id])
GO
ALTER TABLE [dbo].[Plant] CHECK CONSTRAINT [FK_Plant_Plant]
GO
ALTER TABLE [dbo].[Seed]  WITH CHECK ADD  CONSTRAINT [FK_Seed_Bank] FOREIGN KEY([idBank])
REFERENCES [dbo].[Bank] ([id])
GO
ALTER TABLE [dbo].[Seed] CHECK CONSTRAINT [FK_Seed_Bank]
GO
ALTER TABLE [dbo].[Seed]  WITH CHECK ADD  CONSTRAINT [FK_Seed_Sex] FOREIGN KEY([idSex])
REFERENCES [dbo].[Sex] ([id])
GO
ALTER TABLE [dbo].[Seed] CHECK CONSTRAINT [FK_Seed_Sex]
GO
ALTER TABLE [dbo].[Seed]  WITH CHECK ADD  CONSTRAINT [FK_Seed_TypeSeed] FOREIGN KEY([idTypeSeed])
REFERENCES [dbo].[TypeSeed] ([id])
GO
ALTER TABLE [dbo].[Seed] CHECK CONSTRAINT [FK_Seed_TypeSeed]
GO
ALTER TABLE [dbo].[VariatySeed]  WITH CHECK ADD  CONSTRAINT [FK_TypeSeed_Seed] FOREIGN KEY([idSeed])
REFERENCES [dbo].[Seed] ([id])
GO
ALTER TABLE [dbo].[VariatySeed] CHECK CONSTRAINT [FK_TypeSeed_Seed]
GO
ALTER TABLE [dbo].[VariatySeed]  WITH CHECK ADD  CONSTRAINT [FK_TypeSeed_Variaty] FOREIGN KEY([idVariety])
REFERENCES [dbo].[Variaty] ([id])
GO
ALTER TABLE [dbo].[VariatySeed] CHECK CONSTRAINT [FK_TypeSeed_Variaty]
GO
