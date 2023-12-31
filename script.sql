USE [master]
GO
/****** Object:  Database [DB_OOO_Sportivnyue_Tovaryu1]    Script Date: 26.11.2023 23:58:11 ******/
CREATE DATABASE [DB_OOO_Sportivnyue_Tovaryu1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_OOO_Sportivnyue_Tovaryu1', FILENAME = N'D:\MSSQL\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_OOO_Sportivnyue_Tovaryu1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_OOO_Sportivnyue_Tovaryu1_log', FILENAME = N'D:\MSSQL\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_OOO_Sportivnyue_Tovaryu1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_OOO_Sportivnyue_Tovaryu1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET  MULTI_USER 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_OOO_Sportivnyue_Tovaryu1', N'ON'
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET QUERY_STORE = ON
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DB_OOO_Sportivnyue_Tovaryu1]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 26.11.2023 23:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Number] [int] NOT NULL,
	[Content] [nvarchar](50) NOT NULL,
	[DateOrder] [date] NOT NULL,
	[DateDelivery] [date] NOT NULL,
	[PointIssueId] [int] NOT NULL,
	[UserId] [int] NULL,
	[CodeToGet] [nvarchar](5) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointIssue]    Script Date: 26.11.2023 23:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointIssue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Index] [nvarchar](6) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[Home] [int] NULL,
 CONSTRAINT [PK_PointIssue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 26.11.2023 23:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[SizeMaxSale] [int] NULL,
	[NameCreater] [nvarchar](50) NULL,
	[NameShop] [nvarchar](50) NULL,
	[CategoryProduct] [nvarchar](50) NULL,
	[ActivSale] [int] NULL,
	[CountSale] [int] NULL,
	[InfoProduct] [nvarchar](150) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 26.11.2023 23:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 26.11.2023 23:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26.11.2023 23:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (1, N'А112Т4, 2, G598Y6, 2', CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 10, 18, N'401', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (2, N'F746E6, 3, D830R5, 3', CAST(N'2022-05-16' AS Date), CAST(N'2022-05-22' AS Date), 11, 19, N'402', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (3, N'D648N7, 10, F735B6, 10', CAST(N'2022-05-17' AS Date), CAST(N'2022-05-23' AS Date), 12, 20, N'403', 2)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (4, N'F937G4, 1, E324U7, 1', CAST(N'2022-05-18' AS Date), CAST(N'2022-05-24' AS Date), 13, 21, N'404', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (5, N'N483G5, 10, D038G6, 10', CAST(N'2022-05-19' AS Date), CAST(N'2022-05-25' AS Date), 14, NULL, N'405', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (6, N'G480F5, 2, C324S5, 2', CAST(N'2022-05-19' AS Date), CAST(N'2022-05-25' AS Date), 15, NULL, N'406', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (7, N'V312R4, 1, J4DF5E, 1', CAST(N'2022-05-21' AS Date), CAST(N'2022-05-27' AS Date), 16, NULL, N'407', 2)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (8, N'G522B5, 3, K432G6, 3', CAST(N'2022-05-22' AS Date), CAST(N'2022-05-28' AS Date), 17, NULL, N'408', 2)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (9, N'F047J7, 1, S374B5, 1', CAST(N'2022-05-23' AS Date), CAST(N'2022-05-29' AS Date), 18, NULL, N'409', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (10, N'N836R5, 5, D927K3, 5', CAST(N'2022-05-24' AS Date), CAST(N'2022-05-30' AS Date), 19, NULL, N'410', 2)
GO
SET IDENTITY_INSERT [dbo].[PointIssue] ON 

INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (1, N'344288', N' г. Дубна', N' ул. Чехова', 1)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (2, N'614164', N' г.Дубна', N'  ул. Степная', 30)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (3, N'394242', N' г. Дубна', N' ул. Коммунистическая', 43)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (4, N'660540', N' г. Дубна', N' ул. Солнечная', 25)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (5, N'125837', N' г. Дубна', N' ул. Шоссейная', 40)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (6, N'125703', N' г. Дубна', N' ул. Партизанская', 49)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (7, N'625283', N' г. Дубна', N' ул. Победы', 46)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (8, N'614611', N' г. Дубна', N' ул. Молодежная', 50)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (9, N'454311', N' г.Дубна', N' ул. Новая', 19)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (10, N'660007', N' г.Дубна', N' ул. Октябрьская', 19)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (11, N'603036', N' г. Дубна', N' ул. Садовая', 4)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (12, N'450983', N' г.Дубна', N' ул. Комсомольская', 26)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (13, N'394782', N' г. Дубна', N' ул. Чехова', 3)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (14, N'603002', N' г. Дубна', N' ул. Дзержинского', 28)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (15, N'450558', N' г. Дубна', N' ул. Набережная', 30)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (16, N'394060', N' г.Дубна', N' ул. Фрунзе', 43)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (17, N'410661', N' г. Дубна', N' ул. Школьная', 50)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (18, N'625590', N' г. Дубна', N' ул. Коммунистическая', 20)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (19, N'625683', N' г. Дубна', N' ул. 8 Марта', NULL)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (20, N'400562', N' г. Дубна', N' ул. Зеленая', 32)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (21, N'614510', N' г. Дубна', N' ул. Маяковского', 47)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (22, N'410542', N' г. Дубна', N' ул. Светлая', 46)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (23, N'620839', N' г. Дубна', N' ул. Цветочная', 8)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (24, N'443890', N' г. Дубна', N' ул. Коммунистическая', 1)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (25, N'603379', N' г. Дубна', N' ул. Спортивная', 46)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (26, N'603721', N' г. Дубна', N' ул. Гоголя', 41)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (27, N'410172', N' г. Дубна', N' ул. Северная', 13)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (28, N'420151', N' г. Дубна', N' ул. Вишневая', 32)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (29, N'125061', N' г. Дубна', N' ул. Подгорная', 8)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (30, N'630370', N' г. Дубна', N' ул. Шоссейная', 24)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (31, N'614753', N' г. Дубна', N' ул. Полевая', 35)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (32, N'426030', N' г. Дубна', N' ул. Маяковского', 44)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (33, N'450375', N' г. Дубна ', N'ул. Клубная', 44)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (34, N'625560', N' г. Дубна', N' ул. Некрасова', 12)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (35, N'630201', N' г. Дубна', N' ул. Комсомольская', 17)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (36, N'190949', N' г. Дубна', N' ул. Мичурина', 26)
SET IDENTITY_INSERT [dbo].[PointIssue] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (1, N'А112Т4', N'Боксерская груша', N'шт.', 778, 30, N'X-Match', N'Спортмастер', N'Спортивный инвентарь', 5, 6, N'Боксерская груша X-Match черная', N'А112Т4.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (2, N'G598Y6', N'Спортивный мат', N'шт.', 2390, 15, N'Perfetto Sport', N'Декатлон', N'Спортивный инвентарь', 2, 16, N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', N'G598Y6.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (3, N'F746E6', N'Шведская стенка', N'шт.', 9900, 10, N'ROMANA Next', N'Декатлон', N'Спортивный инвентарь', 3, 5, N'Шведская стенка ROMANA Next, pastel', N'F746E6.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (4, N'D830R5', N'Тренажер прыжков', N'шт.', 1120, 15, N'Moby Kids', N'Спортмастер', N'Спортивный инвентарь', 4, 8, N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', N'D830R5.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (5, N'B538G6', N'Спортивный костюм', N'шт.', 839, 5, N'playToday', N'Спортмастер', N'Одежда', 3, 17, N'Спортивный костюм playToday (футболка + шорты)', N'B538G6.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (6, N'D648N7', N'Набор для хоккея', N'шт.', 350, 10, N'Совтехстром', N'Декатлон', N'Спортивный инвентарь', 4, 7, N'Набор для хоккея Совтехстром', N'D648N7.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (7, N'F735B6', N'Игровой набор', N'шт.', 320, 15, N'Совтехстром', N'Декатлон', N'Спортивный инвентарь', 2, 9, N'Игровой набор Совтехстром Кегли и шары', N'F735B6.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (8, N'F937G4', N'Игровой набор', N'шт.', 480, 10, N'Abtoys', N'Спортмастер', N'Спортивный инвентарь', 4, 12, N'Набор Abtoys Бадминтон и теннис ', N'F937G4.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (9, N'E324U7', N'Велотренажер', N'шт.', 6480, 25, N'DFC', N'Спортмастер', N'Спортивный инвентарь', 5, 5, N'Велотренажер двойной DFC B804 dual bike', N'E324U7.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (10, N'G403T5', N'Тюбинг', N'шт.', 1450, 15, N'Nordway', N'Спортмастер', N'Спортивный инвентарь', 4, 13, N'Тюбинг Nordway, 73 см', N'G403T5.jpg')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (11, N'N483G5', N'Клюшка', N'шт.', 1299, 10, N'Nordway', N'Декатлон', N'Спортивный инвентарь', 3, 4, N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (12, N'D038G6', N'Лыжный комплект', N'шт.', 3000, 30, N'Nordway', N'Декатлон', N'Спортивный инвентарь', 4, 23, N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (13, N'G480F5', N'Ролики', N'шт.', 1600, 15, N'Ridex', N'Спортмастер', N'Спортивный инвентарь', 4, 7, N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (14, N'C324S5', N'Шлем', N'шт.', 4000, 10, N'Salomon', N'Декатлон', N'Спортивный инвентарь', 5, 16, N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (15, N'V312R4', N'Мяч', N'шт.', 4150, 20, N'Mikasa', N'Декатлон', N'Спортивный инвентарь', 2, 5, N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (16, N'J4DF5E', N'Насос', N'шт.', 300, 5, N'Molten', N'Спортмастер', N'Спортивный инвентарь', 4, 12, N'Насос Molten HP-18-B для мячей мультиколор', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (17, N'G522B5', N'Ласты', N'шт.', 1980, 15, N'Colton', N'Декатлон', N'Спортивный инвентарь', 3, 6, N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (18, N'K432G6', N'Шапочка для плавания', N'шт.', 440, 25, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 5, 17, N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (19, N'J532D4', N'Перчатки для карате', N'шт.', 1050, 15, N'Green Hill', N'Спортмастер', N'Спортивный инвентарь', 3, 5, N'Перчатки для каратэ Green Hill KMС-6083 L красный', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (20, N'G873H4', N'Велосипед', N'шт.', NULL, 5, N'SKIF', N'Спортмастер', N'Спортивный инвентарь', 4, 6, N'Велосипед SKIF 29 Disc (2021), горный (взрослый), рама: 17", колеса: 29", темно-серый', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (21, N'V423D4', N'Штанга', N'шт.', 5600, 10, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 3, 8, N'Штанга Starfit BB-401 30кг пласт. черный ', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (22, N'K937A5', N'Гиря', N'шт.', 890, 5, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 4, 10, N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (23, N'F047J7', N'Коврик', N'шт.', 720, 15, N'Bradex', N'Спортмастер', N'Спортивный инвентарь', 5, 11, N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (24, N'S374B5', N'Ролик для йоги', N'шт.', 700, 10, N'Bradex', N'Спортмастер', N'Спортивный инвентарь', 3, 12, N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (25, N'F687G5', N'Защита голени', N'шт.', 1900, 15, N'Green Hill', N'Спортмастер', N'Спортивный инвентарь', 4, 6, N'Защита голени GREEN HILL Panther, L, синий/черный', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (26, N'N892G6', N'Очки для плавания', N'шт.', 500, 5, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 5, 14, N'Очки для плавания Atemi N8401 синий', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (27, N'D893W4', N'Мяч', N'шт.', 900, 5, N'Demix', N'Спортмастер', N'Спортивный инвентарь', 2, 5, N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', N'')
INSERT [dbo].[Products] ([id], [article], [Name], [Unit], [Price], [SizeMaxSale], [NameCreater], [NameShop], [CategoryProduct], [ActivSale], [CountSale], [InfoProduct], [Image]) VALUES (28, N'N836R5', N'Коньки', N'шт.', 2000, 10, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 3, 16, N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', N'')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'Менеджер')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Status]) VALUES (1, N'Новый ')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (2, N'Завершен')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (12, 1, N'Пахомова', N'Аиша', N'Анатольевна', N'm4ic8j5qgstw@gmail.com', N'2L6KZG')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (13, 1, N'Жуков', N'Роман', N'Богданович', N'd43zfg9tlsyv@gmail.com', N'uzWC67')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (14, 1, N'Киселева', N'Анастасия', N'Максимовна', N'8ohgisf6k45w@outlook.com', N'8ntwUp')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (15, 2, N'Григорьева', N'Арина', N'Арсентьевна', N'hi1brwj46czx@mail.com', N'YOyhfR')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (16, 2, N'Иванов', N'Лев', N'Михайлович', N'fvkbcamhlj52@gmail.com', N'RSbvHv')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (17, 2, N'Григорьев', N'Лев', N'Давидович', N'9qxnce8jwruv@gmail.com', N'rwVDh9')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (18, 3, N'Поляков', N'Степан', N'Егорович', N'dotiex942p1r@gmail.com', N'LdNyos')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (19, 3, N'Леонова', N'Алиса', N'Кирилловна', N'n0bmi2h1xral@tutanota.com', N'gynQMT')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (20, 3, N'Яковлев', N'Платон', N'Константинович', N'sfm3t278kdvz@yahoo.com', N'AtnDjr')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (21, 3, N'Ковалева', N'Ева', N'Яковлевна', N'ilb8rdut0v7e@mail.com', N'JlFRCZ')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Mail], [Password]) VALUES (22, 1, N'admin', N'admin', N'admin', N'admin', N'12345')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PointIssue] FOREIGN KEY([PointIssueId])
REFERENCES [dbo].[PointIssue] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PointIssue]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu1] SET  READ_WRITE 
GO
