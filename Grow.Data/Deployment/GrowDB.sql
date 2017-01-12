USE [GROW]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[Farm]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[Ligth]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[Plant]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[Seed]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[Sex]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[TypeFarm]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[TypeLight]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[TypeSeed]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[Variaty]    Script Date: 1/10/2017 8:29:33 PM ******/
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
/****** Object:  Table [dbo].[VariatySeed]    Script Date: 1/10/2017 8:29:33 PM ******/
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
SET IDENTITY_INSERT [dbo].[Bank] ON 

GO
INSERT [dbo].[Bank] ([id], [code], [description]) VALUES (1, N'DSB       ', N'Duke Seeds Banks')
GO
INSERT [dbo].[Bank] ([id], [code], [description]) VALUES (2, N'CB        ', N'CannaBiogen')
GO
SET IDENTITY_INSERT [dbo].[Bank] OFF
GO
SET IDENTITY_INSERT [dbo].[Seed] ON 

GO
INSERT [dbo].[Seed] ([id], [name], [idBank], [genetic], [daysGrow], [daysFlow], [heightIndoor], [heightOutdoor], [idTypeSeed], [idSex]) VALUES (1, N'KAJELA', 1, N'LOW RYDER X MAZAR', 17, 35, NULL, NULL, 1, 1)
GO
INSERT [dbo].[Seed] ([id], [name], [idBank], [genetic], [daysGrow], [daysFlow], [heightIndoor], [heightOutdoor], [idTypeSeed], [idSex]) VALUES (2, N'PRUEBA', 1, N'GEN 1 & GEN 2', 90, 98, NULL, NULL, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[Seed] OFF
GO
SET IDENTITY_INSERT [dbo].[Sex] ON 

GO
INSERT [dbo].[Sex] ([id], [code], [description]) VALUES (1, N'M         ', N'MACHO')
GO
INSERT [dbo].[Sex] ([id], [code], [description]) VALUES (2, N'F         ', N'FEMININIZADA')
GO
INSERT [dbo].[Sex] ([id], [code], [description]) VALUES (4, N'NN        ', N'DESCONOCIDO')
GO
SET IDENTITY_INSERT [dbo].[Sex] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeFarm] ON 

GO
INSERT [dbo].[TypeFarm] ([id], [code], [description]) VALUES (1, N'ID        ', N'Indoor')
GO
INSERT [dbo].[TypeFarm] ([id], [code], [description]) VALUES (2, N'OD        ', N'Outdoor')
GO
SET IDENTITY_INSERT [dbo].[TypeFarm] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeLight] ON 

GO
INSERT [dbo].[TypeLight] ([id], [code], [description]) VALUES (1, N'LED       ', N'LED')
GO
INSERT [dbo].[TypeLight] ([id], [code], [description]) VALUES (2, N'HPS       ', N'High Pressure Sodium')
GO
SET IDENTITY_INSERT [dbo].[TypeLight] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeSeed] ON 

GO
INSERT [dbo].[TypeSeed] ([id], [code], [description]) VALUES (1, N'F         ', N'FEMINIZADA')
GO
INSERT [dbo].[TypeSeed] ([id], [code], [description]) VALUES (2, N'R         ', N'REGULAR')
GO
INSERT [dbo].[TypeSeed] ([id], [code], [description]) VALUES (3, N'A         ', N'AUTOMATICA')
GO
SET IDENTITY_INSERT [dbo].[TypeSeed] OFF
GO
SET IDENTITY_INSERT [dbo].[Variaty] ON 

GO
INSERT [dbo].[Variaty] ([id], [code], [description]) VALUES (1, N'I         ', N'INDICA')
GO
INSERT [dbo].[Variaty] ([id], [code], [description]) VALUES (2, N'S         ', N'SATIVA')
GO
INSERT [dbo].[Variaty] ([id], [code], [description]) VALUES (3, N'R         ', N'RUDELARIS')
GO
SET IDENTITY_INSERT [dbo].[Variaty] OFF
GO
SET IDENTITY_INSERT [dbo].[VariatySeed] ON 

GO
INSERT [dbo].[VariatySeed] ([id], [idSeed], [idVariety], [porcentage]) VALUES (1, 1, 1, 50)
GO
INSERT [dbo].[VariatySeed] ([id], [idSeed], [idVariety], [porcentage]) VALUES (2, 1, 3, 50)
GO
SET IDENTITY_INSERT [dbo].[VariatySeed] OFF
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