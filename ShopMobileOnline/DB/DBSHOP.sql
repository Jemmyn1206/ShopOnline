USE [master]
GO
/****** Object:  Database [ShopOnilne]    Script Date: 22/05/2022 12:07:58 CH ******/
CREATE DATABASE [ShopOnilne]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopOnilne', FILENAME = N'D:\SQL\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopOnilne.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopOnilne_log', FILENAME = N'D:\SQL\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopOnilne_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopOnilne] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOnilne].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOnilne] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOnilne] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOnilne] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOnilne] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOnilne] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOnilne] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopOnilne] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOnilne] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnilne] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOnilne] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOnilne] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOnilne] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOnilne] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOnilne] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOnilne] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopOnilne] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOnilne] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOnilne] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOnilne] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOnilne] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOnilne] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopOnilne] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOnilne] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopOnilne] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOnilne] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOnilne] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOnilne] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOnilne] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopOnilne] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopOnilne] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopOnilne] SET QUERY_STORE = OFF
GO
USE [ShopOnilne]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 22/05/2022 12:07:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](10) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 22/05/2022 12:07:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 22/05/2022 12:07:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](10) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'Cao Cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'Trung Bình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP03', N'Sang Chảnh')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX01', N'Iphone')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX02', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX03', N'Oppo')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX04', N'Xiaomi')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01', N'Iphone 7 Plus 256GB', N'cxd', N'1.png', NULL, NULL, NULL, NULL, 24990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'LSP01', N'NSX01', N'Iphone 6', N'cxd', N'2.png', NULL, NULL, NULL, NULL, 24990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'LSP01', N'NSX01', N'Iphone 8', N'cxd', N'3.png', NULL, NULL, NULL, NULL, 24990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP04', N'LSP01', N'NSX01', N'Iphone 9', N'cxd', N'4.png', NULL, NULL, NULL, NULL, 24990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP05', N'LSP01', N'NSX02', N'SamSung1', N'cxd', N'5.png', NULL, NULL, NULL, NULL, 17000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP06', N'LSP02', N'NSX02', N'SamSung2', N'cxd', N'6.png', NULL, NULL, NULL, NULL, 17000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP07', N'LSP02', N'NSX02', N'SamSung3', N'cxd', N'7.png', NULL, NULL, NULL, NULL, 17000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP08', N'LSP02', N'NSX02', N'SamSung4', N'cxd', N'8.png', NULL, NULL, NULL, NULL, 17000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP09', N'LSP02', N'NSX03', N'Oppo1', N'cxd', N'9.png', NULL, NULL, NULL, NULL, 19900000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP10', N'LSP01', N'NSX03', N'Oppo2', N'cxd', N'10.png', NULL, NULL, NULL, NULL, 19900000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP11', N'LSP01', N'NSX03', N'Oppo3', N'cxd', N'11.png', NULL, NULL, NULL, NULL, 19900000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [LuotView], [TinhTrang]) VALUES (N'SP12', N'LSP03', N'NSX03', N'Oppo4', N'cxd', N'12.png', NULL, NULL, NULL, NULL, 19900000, 0, 0, N'0         ')
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongBan]  DEFAULT ((0)) FOR [SoLuongBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
USE [master]
GO
ALTER DATABASE [ShopOnilne] SET  READ_WRITE 
GO
