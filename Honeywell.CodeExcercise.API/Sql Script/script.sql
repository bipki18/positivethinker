USE [CodeExerciseDB]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 31-07-2020 10:50:49 ******/
DROP TABLE [dbo].[SubCategories]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 31-07-2020 10:50:49 ******/
DROP TABLE [dbo].[Items]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 31-07-2020 10:50:49 ******/
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 31-07-2020 10:50:49 ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 31-07-2020 10:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 31-07-2020 10:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 31-07-2020 10:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 31-07-2020 10:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200730132513_InitialCreate', N'3.1.6')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Cat1')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Cat2')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Cat3')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Cat4')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [SubCategoryId], [Name], [Description]) VALUES (1, 1, N'Item1', N'Desc1')
INSERT [dbo].[Items] ([Id], [SubCategoryId], [Name], [Description]) VALUES (2, 2, N'Item2', N'Desc2')
INSERT [dbo].[Items] ([Id], [SubCategoryId], [Name], [Description]) VALUES (3, 3, N'Item3', N'Desc3')
INSERT [dbo].[Items] ([Id], [SubCategoryId], [Name], [Description]) VALUES (4, 4, N'Item4', N'Desc4')
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([Id], [CategoryId], [Name]) VALUES (1, 1, N'SubCat1')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [Name]) VALUES (2, 2, N'SubCat2')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [Name]) VALUES (3, 3, N'SubCat3')
INSERT [dbo].[SubCategories] ([Id], [CategoryId], [Name]) VALUES (4, 4, N'SubCat4')
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
