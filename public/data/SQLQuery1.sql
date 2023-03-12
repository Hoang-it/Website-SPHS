USE [master]
GO
/****** Object:  Database [TraCuuVatLyTHPT]    Script Date: 3/5/2023 8:41:43 PM ******/
CREATE DATABASE [TraCuuVatLyTHPT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TraCuuVatLyTHPT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TraCuuVatLyTHPT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TraCuuVatLyTHPT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TraCuuVatLyTHPT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TraCuuVatLyTHPT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET ARITHABORT OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET RECOVERY FULL 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET  MULTI_USER 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TraCuuVatLyTHPT', N'ON'
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET QUERY_STORE = ON
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TraCuuVatLyTHPT]
GO
/****** Object:  Table [dbo].[BaiTap]    Script Date: 3/5/2023 8:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiTap](
	[BaiTap_id] [int] NOT NULL,
	[CayKienThuc_id] [int] NULL,
	[DangBaiTap_id] [int] NULL,
 CONSTRAINT [PK_BaiTap] PRIMARY KEY CLUSTERED 
(
	[BaiTap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CayKienThuc]    Script Date: 3/5/2023 8:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CayKienThuc](
	[CayKienThuc_id] [int] NOT NULL,
	[Khoi_Chuong_id] [nvarchar](10) NOT NULL,
	[Bai_id] [int] NOT NULL,
	[TenKienThuc] [nvarchar](100) NOT NULL,
	[NoiDung] [nvarchar](50) NOT NULL,
	[KhaiNiem] [nvarchar](50) NULL,
	[CongThuc] [nvarchar](50) NULL,
	[BaiTap] [nvarchar](50) NULL,
 CONSTRAINT [PK_CayKienThuc] PRIMARY KEY CLUSTERED 
(
	[CayKienThuc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangBaiTap]    Script Date: 3/5/2023 8:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangBaiTap](
	[DangBaiTap_id] [int] NOT NULL,
	[TenDangBaiTap] [nvarchar](250) NOT NULL,
	[NoiDung] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DangBaiTap] PRIMARY KEY CLUSTERED 
(
	[DangBaiTap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Definitions]    Script Date: 3/5/2023 8:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Definitions](
	[Definition_id] [int] NOT NULL,
	[CayKienThuc_id] [int] NOT NULL,
	[Loai] [nvarchar](50) NOT NULL,
	[NoiDung] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Definitions] PRIMARY KEY CLUSTERED 
(
	[Definition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoi]    Script Date: 3/5/2023 8:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoi](
	[Khoi_id] [int] NOT NULL,
	[TenKhoi] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Khoi] PRIMARY KEY CLUSTERED 
(
	[Khoi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoi_Chuong]    Script Date: 3/5/2023 8:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoi_Chuong](
	[Khoi_Chuong_id] [nvarchar](10) NOT NULL,
	[Khoi_id] [int] NOT NULL,
	[Chuong_id] [int] NOT NULL,
	[TenChuong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Khoi_Chuong] PRIMARY KEY CLUSTERED 
(
	[Khoi_Chuong_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relation_DangBaiTap_CayKienThuc]    Script Date: 3/5/2023 8:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation_DangBaiTap_CayKienThuc](
	[DangBaiTap_id] [int] NOT NULL,
	[CayKienThuc_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relation_Definitions_BaiTap]    Script Date: 3/5/2023 8:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation_Definitions_BaiTap](
	[BaiTap_id] [int] NOT NULL,
	[Definition_id] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (1, 7, 8)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (2, 9, 10)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (3, 9, 11)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (4, 9, 12)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (5, 10, 13)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (6, 10, 11)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (7, 13, 15)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (8, 18, 16)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (9, 18, 17)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (10, 18, 18)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (11, 18, 19)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (12, 31, 20)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (13, 31, 21)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (14, 32, 21)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (15, 33, 21)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (16, 31, 22)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (17, 31, 14)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (18, 32, 22)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (19, 31, 14)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (20, 14, 23)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (21, 15, 23)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (22, 16, 24)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (23, 60, 25)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (24, 60, 26)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (25, 60, 27)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (26, 60, 28)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (27, 60, 29)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (28, 60, 30)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (29, 60, 31)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (30, 61, 32)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (31, 62, 32)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (32, 63, 32)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (33, 61, 33)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (34, 62, 33)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (35, 63, 33)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (36, 61, 34)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (37, 62, 34)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (38, 63, 34)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (39, 61, 35)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (40, 62, 35)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (41, 63, 35)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (42, 61, 36)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (43, 62, 36)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (44, 63, 36)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (45, 61, 37)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (46, 62, 37)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (47, 63, 37)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (48, 61, 38)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (49, 62, 38)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (50, 63, 38)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (51, 61, 39)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (52, 62, 39)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (53, 63, 39)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (54, 61, 40)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (55, 62, 40)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (56, 63, 40)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (57, 61, 41)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (58, 62, 41)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (59, 63, 41)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (60, 66, 42)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (61, 67, 42)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (62, 68, 42)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (63, 66, 43)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (64, 67, 43)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (65, 68, 43)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (66, 66, 44)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (67, 67, 44)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (68, 68, 44)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (69, 66, 45)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (70, 67, 45)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (71, 68, 45)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (72, 66, 46)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (73, 67, 46)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (74, 68, 46)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (75, 66, 47)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (76, 67, 47)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (77, 68, 47)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (78, 71, 48)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (79, 72, 48)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (80, 73, 48)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (81, 50, 62)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (82, 51, 62)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (83, 52, 63)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (84, 53, 63)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (85, 54, 63)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (86, 52, 64)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (87, 53, 64)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (88, 54, 64)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (89, 24, 63)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (90, 27, 63)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (91, 24, 64)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (92, 27, 64)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (93, 52, 67)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (94, 53, 67)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (95, 54, 67)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (96, 71, 67)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (97, 72, 67)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (98, 73, 67)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (99, 74, 67)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (100, 75, 67)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (101, 71, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (102, 72, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (103, 73, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (104, 74, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (105, 75, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (106, 60, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (107, 53, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (108, 54, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (109, 55, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (110, 56, 50)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (111, 5, 8)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (112, 7, 8)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (113, 10, 9)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (114, 9, 10)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (115, 9, 11)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (116, 9, 12)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (117, 10, 13)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (118, 10, 11)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (119, 13, 15)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (120, 18, 16)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (121, 18, 17)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (122, 18, 18)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (123, 18, 19)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (124, 31, 20)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (125, 31, 21)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (126, 32, 21)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (127, 33, 21)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (128, 31, 22)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (129, 32, 22)
GO
INSERT [dbo].[BaiTap] ([BaiTap_id], [CayKienThuc_id], [DangBaiTap_id]) VALUES (130, 31, 14)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (1, N'10-1', 1, N'Làm quen với vật lý', N'10-1-1.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (2, N'10-1', 2, N'Các quy tắc an toàn trong phòng thực hành Vật Lý', N'10-1-2.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (3, N'10-1', 3, N'Thực hành tính sai số trong phép đo. Ghi kết quả đo', N'10-1-3.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (4, N'10-2', 4, N'Độ dịch chuyển và quãng đường đi được', N'10-2-4.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (5, N'10-2', 5, N'Tốc độ và vận tốc', N'10-2-5.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (6, N'10-2', 6, N'Thực hành: Đo tốc độ của vật chuyển động', N'10-2-6.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (7, N'10-2', 7, N'Đồ thị độ dịch chuyển - thời gian', N'10-2-7.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (8, N'10-2', 8, N'Chuyển động biến đổi gia tốc', N'10-2-8.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (9, N'10-2', 9, N'Chuyển động thẳng biến đổi đều', N'10-2-9.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (10, N'10-2', 10, N'Sự rơi tự do', N'10-2-10.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (11, N'10-2', 11, N'Thực hành: Đo gia tốc rơi tự do', N'10-2-11.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (12, N'10-2', 12, N'Chuyển động ném', N'10-2-12.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (13, N'10-3', 13, N'Tổng hợp và phân tích lực. Cân bằng lực', N'10-3-13.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (14, N'10-3', 14, N'Định luật I Newton', N'10-3-14.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (15, N'10-3', 15, N'Định luật II Newton', N'10-3-15.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (16, N'10-3', 16, N'Định luật III Newton', N'10-3-16.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (17, N'10-3', 17, N'Trọng lực và lực căng', N'10-3-17.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (18, N'10-3', 18, N'Lực ma sát', N'10-3-18.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (19, N'10-3', 19, N'Lực cản và lực nâng', N'10-3-19.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (20, N'10-3', 20, N'Một số ví dụ về cách giải các bài toán thuộc phần động lực học', N'10-3-20.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (21, N'10-3', 21, N'Moment lực. Cân bằng của vật rắn', N'10-3-21.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (22, N'10-3', 22, N'Thực hành: Tổng hợp lực', N'10-3-22.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (23, N'10-4', 23, N'Năng lượng. Công cơ học', N'10-4-23.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (24, N'10-4', 24, N'Công suất', N'10-4-24.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (25, N'10-4', 25, N'Động năng. Thế năng', N'10-4-25.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (26, N'10-4', 26, N'Cơ năng và định luật bảo toàn cơ năng', N'10-4-26.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (27, N'10-4', 27, N'Hiệu suất', N'10-4-27.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (28, N'10-5', 28, N'Động lượng', N'10-5-28.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (29, N'10-5', 29, N'Định luật bảo toàn động lượng', N'10-5-29.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (30, N'10-5', 30, N'Thực hành: Xác định động lực của vật trước và sau va chạm', N'10-5-30.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (31, N'10-6', 31, N'Động học của chuyển động tròn đều', N'10-6-31.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (32, N'10-6', 32, N'Lực hướng tâm và gia tốc hướng tâm', N'10-6-32.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (33, N'10-7', 33, N'Biến dạng của vật rắn', N'10-7-33.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (34, N'11-1', 1, N'Dao động điều hòa', N'11-1-1.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (35, N'11-1', 2, N'Mô tả dao động điều hòa', N'11-1-2.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (36, N'11-1', 3, N'Vận tốc, gia tốc trong dao động điều hòa', N'11-1-3.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (37, N'11-1', 4, N'Bài tập về dao động điều hòa', N'11-1-4.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (38, N'11-1', 5, N'Động năng, thế năng. Sự chuyển hóa năng lượng trong dao động điều hòa', N'11-1-5.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (39, N'11-1', 6, N'Dao động tắt dần. Dao động cưỡng bức. hiện tượng cộng hưởng', N'11-1-6.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (40, N'11-1', 7, N'Bài tập về sự chuyển hóa năng lượng trong dao động điều hoà', N'11-1-7.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (41, N'11-2', 8, N'Mô tả sóng', N'11-2-8.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (42, N'11-2', 9, N'Sóng ngang, sóng dọc. Sự truyền năng lượng của sóng cơ', N'11-2-9.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (43, N'11-2', 10, N'Thực hành đo tần số của sóng âm', N'11-2-10.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (44, N'11-2', 11, N'Sóng điện từ', N'11-2-11.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (45, N'11-2', 12, N'Giao thoa sóng', N'11-2-12.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (46, N'11-2', 13, N'Sóng dừng', N'11-2-13.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (47, N'11-2', 14, N'Bài tập về sóng', N'11-2-14.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (48, N'11-2', 15, N'Thực hành đo tốc độ truyền âm', N'11-2-15.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (49, N'11-3', 16, N'Lực tương tác giữa hai điện tích', N'11-3-16.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (50, N'11-3', 17, N'Khái niệm điện trường', N'11-3-17.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (51, N'11-3', 18, N'Điện trường đều', N'11-3-18.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (52, N'11-3', 19, N'Thế năng điện', N'11-3-19.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (53, N'11-3', 20, N'Điện thế', N'11-3-20.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (54, N'11-3', 21, N'Tụ điện', N'11-3-21.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (55, N'11-4', 22, N'Cường độ dòng điện', N'11-4-22.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (56, N'11-4', 23, N'Điện trở. Định luật ôm', N'11-4-23.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (57, N'11-4', 24, N'Nguồn điện', N'11-4-24.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (58, N'11-4', 25, N'Năng lượng và công suất điện', N'11-4-25.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (59, N'11-4', 26, N'Thực hành đo suất điện động và điện trở trong của pin điều hòa', N'11-4-26.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (60, N'12-1', 1, N'Dao động điều hòa', N'12-1-1.pdf', N'12-1-1-KhaiNiem.pdf', N'12-1-1-CongThuc.pdf', N'12-1-1-BaiTap.pdf')
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (61, N'12-1', 2, N'Con lắc lò xo', N'12-1-2.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (62, N'12-1', 3, N'Con lắc đơn', N'12-1-3.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (63, N'12-1', 4, N'Dao động tắt dần. Dao động cưỡng bức', N'12-1-4.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (64, N'12-1', 5, N'Tổng hợp hai dao động điều hòa', N'12-1-5.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (65, N'12-1', 6, N'Thực hành', N'12-1-6.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (66, N'12-2', 7, N'Sóng cơ và sự truyền sóng sơ', N'12-2-7.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (67, N'12-2', 8, N'Giao thoa sóng', N'12-2-8.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (68, N'12-2', 9, N'Sóng dừng', N'12-2-9.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (69, N'12-2', 10, N'Đặc trưng vật lý của âm', N'12-2-10.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (70, N'12-2', 11, N'Đặc trưng sinh lý của âm', N'12-2-11.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (71, N'12-3', 12, N'Đại cương về dòng điện xoay chiều', N'12-3-12.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (72, N'12-3', 13, N'Các mạch điện xoay chiều', N'12-3-13.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (73, N'12-3', 14, N'Mạch có R, L, C mắc nối tiếp', N'12-3-14.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (74, N'12-3', 15, N'Công suất điện tiêu thụ của mạch điện xoay chiều', N'12-3-15.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (75, N'12-3', 16, N'Truyền tải điện năng. Máy biến áp', N'12-3-16.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (76, N'12-3', 17, N'Máy phát điện xoay chiều', N'12-3-17.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (77, N'12-3', 18, N'Động cơ không đồng bộ ba pha', N'12-3-18.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (78, N'12-3', 19, N'Thực hành', N'12-3-19.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (79, N'12-4', 20, N'Mạch dao động', N'12-4-20.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (80, N'12-4', 21, N'Điện từ trường', N'12-4-21.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (81, N'12-4', 22, N'Sóng điện từ', N'12-4-22.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (82, N'12-4', 23, N'Nguyên tắc thông tin liên lạc bằng sóng vô tuyến', N'12-4-23.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (83, N'12-5', 24, N'Tán sắc ánh sáng', N'12-5-24.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (84, N'12-5', 25, N'Giao thoa ánh sáng', N'12-5-25.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (85, N'12-5', 26, N'Các loại quang phổ', N'12-5-26.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (86, N'12-5', 27, N'Tia hồng ngoại và tia tử ngoại', N'12-5-27.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (87, N'12-5', 28, N'Tia X', N'12-5-28.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (88, N'12-5', 29, N'Thực hành', N'12-5-29.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (89, N'12-6', 30, N'Hiện tượng quang điện. Thuyết lượng tử ánh sáng', N'12-6-30.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (90, N'12-6', 31, N'Hiện tượng quang điện trong', N'12-6-31.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (91, N'12-6', 32, N'Hiện tượng quang - phát quang', N'12-6-32.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (92, N'12-6', 33, N'Mẫu nguyên tử Bo', N'12-6-33.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (93, N'12-6', 34, N'Sơ lược về Laze', N'12-6-34.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (94, N'12-7', 35, N'Tính chất và cấu tạo như hạt nhân', N'12-7-35.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (95, N'12-7', 36, N'Năng lượng liên kết của hạt nhân. Phản ứng hạt nhân', N'12-7-36.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (96, N'12-7', 37, N'Phóng xạ', N'12-7-37.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (97, N'12-7', 38, N'Phân hạch hạt nhân', N'12-7-38.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (98, N'12-7', 39, N'Phản ứng nhiệt hạch', N'12-7-39.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (99, N'12-8', 40, N'Các hạt sơ cấp', N'12-8-40.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[CayKienThuc] ([CayKienThuc_id], [Khoi_Chuong_id], [Bai_id], [TenKienThuc], [NoiDung], [KhaiNiem], [CongThuc], [BaiTap]) VALUES (100, N'12-8', 41, N'Cấu tạo vũ trụ', N'12-8-41.pdf', NULL, NULL, NULL)
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (8, N'Xác định vận tốc, quãng đường, thời gian trong chuyển động thẳng đều', N'10-2-DangBT1.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (9, N'Viết phương trình chuyển động thẳng đều', N'10-2-DangBT2.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (10, N'Xác định vận tốc, gia tốc, quãng đường trong chuyển động thẳng biến đổi đều', N'10-2-DangBT3.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (11, N'Tính quãng đường vật đi được trong giây thứ n, trong n giây cuối', N'10-2-DangBT4.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (12, N'Viết phương trình chuyển động thẳng biến đổi đều', N'10-2-DangBT5.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (13, N'Tính quãng đường, vận tốc trong rơi tự do', N'10-2-DangBT6.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (14, N'Xác định tốc độ trung bình, tốc độ dài, tốc độ góc trong chuyển động tròn', N'10-6-DangBT3.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (15, N'Tổng hợp, phân tích lực đồng quy theo quy tắc hình bình hành', N'10-3-DangBT1.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (16, N'Tính lực ma sát, hệ số ma sát', N'10-3-DangBT2.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (17, N'Tính quãng đường, thời gian đi được khi có lực ma sát', N'10-3-DangBT3.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (18, N'Tính lực kéo để xe chuyển động khi có ma sát', N'10-3-DangBT4.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (19, N'Tính vận tốc của vật ở chân mặt phẳng nghiêng có ma sát', N'10-3-DangBT5.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (20, N'Tính độ biến dạng của lò xo khi vật chuyển động tròn quanh 1 điểm cố định', N'10-7-DangBT1.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (21, N'Tính lực hướng tâm', N'10-6-DangBT1.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (22, N'Tính áp lực của vật tại điểm cao nhất của vòng cầu', N'10-6-DangBT2.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (23, N'Áp dụng định luật 1, 2 Newton', N'10-3-DangBT6.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (24, N'Áp dụng định luật 3 Newton', N'10-3-DangBT7.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (25, N'Xác định các đại lượng trong dao động điều hòa', N'12-1-DangBT1.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (26, N'Mối quan hệ giữa x, v, a, f trong dao động điều hòa', N'12-1-DangBT2.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (27, N'Viết phương trình dao động điều hòa', N'12-1-DangBT3.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (28, N'Tìm li độ của vật tại thời điểm t', N'12-1-DangBT4.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (29, N'Tìm quãng đường, quãng đường lớn nhất, nhỏ nhất (smax, smin) vật đi được', N'12-1-DangBT5.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (30, N'Tốc độ trung bình và vận tốc trung bình trong dao động điều hòa', N'12-1-DangBT6.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (31, N'Tìm thời gian ngắn nhất, lớn nhất vật đi qua li độ, vật có vận tốc, gia tốc', N'12-1-DangBT7.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (32, N'Bài toán Hai vật dao động điều hòa cùng tần số khác biên độ', N'12-1-DangBT8.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (33, N'Bài toán Hai vật dao động điều hòa khác tần số cùng biên độ', N'12-1-DangBT9.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (34, N'Tìm số lần vật đi qua vị trí có li độ x, có vận tốc v từ thời điểm t1 đến t2', N'12-1-DangBT10.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (35, N'Tính chu kì, tần số của Con lắc lò xo', N'12-1-DangBT11.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (36, N'Tính chiều dài con lắc lò xo, Lực đàn hồi, Lực phục hồi', N'12-1-DangBT12.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (37, N'Tính năng lượng của Con lắc lò xo', N'12-1-DangBT13.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (38, N'Viết phương trình dao động của Con lắc lò xo', N'12-1-DangBT14.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (39, N'Viết phương trình dao động của Con lắc đơn', N'12-1-DangBT15.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (40, N'Chu kì con lắc đơn thay đổi', N'12-1-DangBT16.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (41, N'Con lắc trùng phùng', N'12-1-DangBT17.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (42, N'Xác định các đại lượng đặc trưng của sóng', N'12-2-DangBT1.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (43, N'Cách viết phương trình sóng', N'12-2-DangBT2.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (44, N'Viết phương trình giao thoa sóng, Tìm biên độ sóng tại 1 điểm', N'12-2-DangBT3.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (45, N'Cách xác định số điểm dao động với biên độ cực đại, cực tiểu', N'12-2-DangBT4.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (46, N'Điểm M có tính chất đặc biệt trong Giao thoa sóng', N'12-2-DangBT5.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (47, N'Phương trình sóng dừng', N'12-2-DangBT6.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (48, N'Xác định từ thông và suất điện động', N'12-3-DangBT1.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (49, N'Xác định các đại lượng đặc trưng của dòng điện xoay chiều', N'12-3-DangBT2.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (50, N'Mối liên hệ giữa dòng điện xoay chiều và dao động điều hòa', N'12-3-DangBT3.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (51, N'Mạch điện xoay chiều có R thay đổi', N'12-3-DangBT4.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (52, N'Mạch điện xoay chiều có L thay đổi', N'12-3-DangBT5.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (53, N'Mạch điện xoay chiều có C thay đổi', N'12-3-DangBT6.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (54, N'Mạch điện xoay chiều chỉ có cuộn cảm thuần L', N'12-3-DangBT7.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (55, N'Mạch điện xoay chiều chỉ có cuộn cảm thuần R', N'12-3-DangBT8.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (56, N'Mạch điện xoay chiều chỉ có cuộn cảm thuần C', N'12-3-DangBT9.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (57, N'Mạch điện xoay chiều có f thay đổi', N'12-3-DangBT10.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (58, N'Lực tương tác giữa hai điện tích điểm', N'11-3-DangBT1.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (59, N'Lực điện tổng hợp tác dụng lên một điện tích', N'11-3-DangBT2.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (60, N'Sự cân bằng của một điện tích', N'11-3-DangBT3.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (61, N'Cách tính cường độ điện trường tại một điểm', N'11-3-DangBT4.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (62, N'Xác định véctơ cường độ điện trường tổng hợp tại điểm M', N'11-3-DangBT5.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (63, N'Xác định vị trí cường độ điện trường bằng 0', N'11-3-DangBT6.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (64, N'Cân bằng của điện tích trong điện trường', N'11-3-DangBT7.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (65, N'Tính công của lực điện trường, điện thế, hiệu điện thế giữa hai điểm', N'11-3-DangBT8.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (66, N'Quỹ đạo của electron trong điện trường', N'11-3-DangBT9.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (67, N'Cách tính điện dung, năng lượng của tụ điện', N'11-3-DangBT10.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (68, N'Tụ điện phẳng', N'11-3-DangBT11.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (69, N'Ghép tụ điện nối tiếp, song song', N'11-3-DangBT12.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (70, N'Từ trường của dây dẫn có hình dạng đặc biệt', N'11-3-DangBT13.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (71, N'Lực từ tác dụng lên đoạn dây dẫn thẳng', N'11-3-DangBT14.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (72, N'Lực từ tác dụng lên 2 dây dẫn song song', N'11-3-DangBT15.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (73, N'Lực từ tác dụng lên khung dây', N'11-3-DangBT16.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (74, N'Lực Lo-ren-xơ', N'11-3-DangBT17.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (75, N'Chiều dòng điện cảm ứng', N'11-3-DangBT18.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (76, N'Từ thông qua một khung dây kín', N'11-3-DangBT19.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (77, N'Suất điện động cảm ứng trong khung dây', N'11-3-DangBT20.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (78, N'Tự cảm, Suất điện động cảm ứng, Năng lượng', N'11-3-DangBT21.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (79, N'Dòng điện không đổi', N'11-4-DangBT1.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (80, N'Cách tính điện trở tương đương của đoạn mạch nối tiếp, mạch song song, mạch cầu', N'11-4-DangBT2.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (81, N'Cách tính điện trở tương đương của đoạn mạch nối tiếp, mạch song song, mạch cầu', N'11-4-DangBT3.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (82, N'Tìm số chỉ của Ampe kế và Vôn kế', N'11-4-DangBT4.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (83, N'Công và công suất của dòng điện không đổi', N'11-4-DangBT5.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (84, N'Công suất của Nguồn điện, Máy thu điện', N'11-4-DangBT6.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (85, N'Định luật Ôm cho mạch kín', N'11-4-DangBT7.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (86, N'Ghép các nguồn điện thành bộ', N'11-4-DangBT8.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (87, N'Định luật Ôm cho đoạn mạch chứa nguồn điện, máy thu', N'11-4-DangBT9.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (88, N'Cách tính điện trở của dây dẫn kim loại', N'11-4-DangBT10.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (89, N'Sự phụ thuộc của điện trở vào nhiệt độ', N'11-4-DangBT11.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (90, N'Hiện tượng nhiệt điện, Suất điện động nhiệt điện', N'11-4-DangBT12.pdf')
GO
INSERT [dbo].[DangBaiTap] ([DangBaiTap_id], [TenDangBaiTap], [NoiDung]) VALUES (91, N'Các dạng bài tập về dòng điện trong chất điện phân ', N'11-4-DangBT13.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (1, 9, N'Công thức', N'10-2-9-CongThuc.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (2, 10, N'Công thức', N'10-2-10-CongThuc.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (3, 60, N'Công thức', N'12-1-1-CongThuc.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (4, 60, N'KhaiNiem', N'12-1-1-KhaiNiem.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (5, 49, N'KhaiNiem', N'11-3-16-KhaiNiem.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (6, 58, N'Công thức', N'11-4-25-CongThuc.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (7, 55, N'Công thức', N'11-4-22-CongThuc.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (8, 52, N'KhaiNiem', N'11-3-19-KhaiNiem.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (9, 56, N'Công thức', N'11-4-23-CongThuc.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (10, 68, N'Công thưc', N'12-2-9-CongThuc.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (11, 73, N'Công thức', N'12-3-14-CongThuc.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (15, 5, N'Công thức', N'10-2-5-CongThuc.pdf')
GO
INSERT [dbo].[Definitions] ([Definition_id], [CayKienThuc_id], [Loai], [NoiDung]) VALUES (16, 8, N'Công thức', N'10-2-5-CongThuc.pdf')
GO
INSERT [dbo].[Khoi] ([Khoi_id], [TenKhoi]) VALUES (10, N'Lớp 10')
GO
INSERT [dbo].[Khoi] ([Khoi_id], [TenKhoi]) VALUES (11, N'Lớp 11')
GO
INSERT [dbo].[Khoi] ([Khoi_id], [TenKhoi]) VALUES (12, N'Lớp 12')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'10-1', 10, 1, N'Mở đầu')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'10-2', 10, 2, N'Động học')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'10-3', 10, 3, N'Động lực học')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'10-4', 10, 4, N'Năng lượng. Công, công suất')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'10-5', 10, 5, N'Động lượng')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'10-6', 10, 6, N'Chuyển động tròn')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'10-7', 10, 7, N'Biến dạng của vật rắn. Áp suất chất lỏng')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'11-1', 11, 1, N'Dao động')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'11-2', 11, 2, N'Sóng')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'11-3', 11, 3, N'Điện trường')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'11-4', 11, 4, N'Dòng điện. Mạch điện')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'12-1', 12, 1, N'Dao động cơ')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'12-2', 12, 2, N'Sóng cơ và sóng âm')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'12-3', 12, 3, N'Dòng điện xoay chiều')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'12-4', 12, 4, N'Dao động và sóng điện từ')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'12-5', 12, 5, N'Sóng ánh sáng')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'12-6', 12, 6, N'Lượng tử ánh sáng')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'12-7', 12, 7, N'Hạt nhân nguyên tử')
GO
INSERT [dbo].[Khoi_Chuong] ([Khoi_Chuong_id], [Khoi_id], [Chuong_id], [TenChuong]) VALUES (N'12-8', 12, 8, N'Từ vi mô đến vĩ mô')
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (23, 14)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (23, 15)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (24, 16)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (25, 60)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (26, 60)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (27, 60)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (28, 60)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (29, 60)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (30, 60)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (31, 60)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (32, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (32, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (32, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (33, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (33, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (33, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (34, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (34, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (34, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (35, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (35, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (35, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (36, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (36, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (36, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (37, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (37, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (37, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (38, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (38, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (38, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (39, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (39, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (39, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (40, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (40, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (40, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (41, 61)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (41, 62)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (41, 63)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (42, 66)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (42, 67)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (42, 68)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (43, 66)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (43, 67)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (43, 68)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (44, 66)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (44, 67)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (44, 68)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (45, 66)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (45, 67)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (45, 68)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (46, 66)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (46, 67)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (46, 68)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (47, 66)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (47, 67)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (47, 68)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (48, 71)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (48, 72)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (48, 73)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (62, 50)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (62, 51)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (63, 52)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (63, 53)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (63, 54)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (64, 52)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (64, 53)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (64, 54)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (63, 24)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (63, 27)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (64, 24)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (64, 27)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (67, 52)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (67, 53)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (67, 54)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (67, 71)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (67, 72)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (67, 73)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (67, 74)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (67, 75)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 71)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 72)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 73)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 74)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 75)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 60)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 53)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 54)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 55)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (50, 56)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (8, 5)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (8, 7)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (9, 10)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (10, 9)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (11, 9)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (12, 9)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (13, 10)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (11, 10)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (15, 13)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (16, 18)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (17, 18)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (18, 18)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (19, 18)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (20, 31)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (21, 31)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (21, 32)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (21, 33)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (22, 31)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (22, 32)
GO
INSERT [dbo].[Relation_DangBaiTap_CayKienThuc] ([DangBaiTap_id], [CayKienThuc_id]) VALUES (14, 31)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (1, 1)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (1, 2)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (2, 15)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (2, 16)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (2, 1)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (109, 6)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (110, 6)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (107, 6)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (113, 1)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (113, 2)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (114, 1)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (114, 2)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (115, 1)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (115, 2)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (116, 1)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (116, 2)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (117, 1)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (117, 2)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (118, 1)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (118, 2)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (107, 7)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (107, 8)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (107, 9)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (108, 7)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (108, 8)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (108, 9)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (109, 7)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (109, 8)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (109, 9)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (110, 7)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (110, 8)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (110, 9)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (60, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (61, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (62, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (63, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (64, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (65, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (66, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (67, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (68, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (69, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (70, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (71, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (72, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (73, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (74, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (75, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (76, 10)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (78, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (79, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (80, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (96, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (97, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (98, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (99, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (100, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (101, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (102, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (103, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (104, 11)
GO
INSERT [dbo].[Relation_Definitions_BaiTap] ([BaiTap_id], [Definition_id]) VALUES (105, 11)
GO
ALTER TABLE [dbo].[BaiTap]  WITH CHECK ADD  CONSTRAINT [FK_BaiTap_CayKienThuc] FOREIGN KEY([CayKienThuc_id])
REFERENCES [dbo].[CayKienThuc] ([CayKienThuc_id])
GO
ALTER TABLE [dbo].[BaiTap] CHECK CONSTRAINT [FK_BaiTap_CayKienThuc]
GO
ALTER TABLE [dbo].[BaiTap]  WITH CHECK ADD  CONSTRAINT [FK_BaiTap_DangBaiTap] FOREIGN KEY([DangBaiTap_id])
REFERENCES [dbo].[DangBaiTap] ([DangBaiTap_id])
GO
ALTER TABLE [dbo].[BaiTap] CHECK CONSTRAINT [FK_BaiTap_DangBaiTap]
GO
ALTER TABLE [dbo].[CayKienThuc]  WITH CHECK ADD  CONSTRAINT [FK_CayKienThuc_Khoi_Chuong] FOREIGN KEY([Khoi_Chuong_id])
REFERENCES [dbo].[Khoi_Chuong] ([Khoi_Chuong_id])
GO
ALTER TABLE [dbo].[CayKienThuc] CHECK CONSTRAINT [FK_CayKienThuc_Khoi_Chuong]
GO
ALTER TABLE [dbo].[Definitions]  WITH CHECK ADD  CONSTRAINT [FK_Definitions_CayKienThuc] FOREIGN KEY([CayKienThuc_id])
REFERENCES [dbo].[CayKienThuc] ([CayKienThuc_id])
GO
ALTER TABLE [dbo].[Definitions] CHECK CONSTRAINT [FK_Definitions_CayKienThuc]
GO
ALTER TABLE [dbo].[Khoi_Chuong]  WITH CHECK ADD  CONSTRAINT [FK_Khoi_Chuong_Khoi] FOREIGN KEY([Khoi_id])
REFERENCES [dbo].[Khoi] ([Khoi_id])
GO
ALTER TABLE [dbo].[Khoi_Chuong] CHECK CONSTRAINT [FK_Khoi_Chuong_Khoi]
GO
ALTER TABLE [dbo].[Relation_DangBaiTap_CayKienThuc]  WITH CHECK ADD  CONSTRAINT [FK_Relation_DangBaiTap_CayKienThuc_CayKienThuc] FOREIGN KEY([CayKienThuc_id])
REFERENCES [dbo].[CayKienThuc] ([CayKienThuc_id])
GO
ALTER TABLE [dbo].[Relation_DangBaiTap_CayKienThuc] CHECK CONSTRAINT [FK_Relation_DangBaiTap_CayKienThuc_CayKienThuc]
GO
ALTER TABLE [dbo].[Relation_DangBaiTap_CayKienThuc]  WITH CHECK ADD  CONSTRAINT [FK_Relation_DangBaiTap_CayKienThuc_DangBaiTap] FOREIGN KEY([DangBaiTap_id])
REFERENCES [dbo].[DangBaiTap] ([DangBaiTap_id])
GO
ALTER TABLE [dbo].[Relation_DangBaiTap_CayKienThuc] CHECK CONSTRAINT [FK_Relation_DangBaiTap_CayKienThuc_DangBaiTap]
GO
ALTER TABLE [dbo].[Relation_Definitions_BaiTap]  WITH CHECK ADD  CONSTRAINT [FK_Relation_Definitions_BaiTap_BaiTap] FOREIGN KEY([BaiTap_id])
REFERENCES [dbo].[BaiTap] ([BaiTap_id])
GO
ALTER TABLE [dbo].[Relation_Definitions_BaiTap] CHECK CONSTRAINT [FK_Relation_Definitions_BaiTap_BaiTap]
GO
ALTER TABLE [dbo].[Relation_Definitions_BaiTap]  WITH CHECK ADD  CONSTRAINT [FK_Relation_Definitions_BaiTap_Definitions] FOREIGN KEY([Definition_id])
REFERENCES [dbo].[Definitions] ([Definition_id])
GO
ALTER TABLE [dbo].[Relation_Definitions_BaiTap] CHECK CONSTRAINT [FK_Relation_Definitions_BaiTap_Definitions]
GO
USE [master]
GO
ALTER DATABASE [TraCuuVatLyTHPT] SET  READ_WRITE 
GO
