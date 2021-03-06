USE [master]
GO
/****** Object:  Database [Assignment3_HuynhAnhVu]    Script Date: 3/7/2021 6:38:34 PM ******/
CREATE DATABASE [Assignment3_HuynhAnhVu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment3_HuynhAnhVu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment3_HuynhAnhVu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment3_HuynhAnhVu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment3_HuynhAnhVu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment3_HuynhAnhVu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET QUERY_STORE = OFF
GO
USE [Assignment3_HuynhAnhVu]
GO
/****** Object:  Table [dbo].[tblCars]    Script Date: 3/7/2021 6:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCars](
	[carID] [int] IDENTITY(1,1) NOT NULL,
	[categoryID] [int] NOT NULL,
	[carName] [varchar](100) NOT NULL,
	[color] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[img] [varchar](max) NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[carID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategorys]    Script Date: 3/7/2021 6:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategorys](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [varchar](100) NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiscounts]    Script Date: 3/7/2021 6:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiscounts](
	[discountCode] [varchar](10) NOT NULL,
	[beginDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
	[value] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[discountCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFeedbacks]    Script Date: 3/7/2021 6:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFeedbacks](
	[feedbackID] [int] IDENTITY(1,1) NOT NULL,
	[orderDetailID] [int] NULL,
	[value] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 3/7/2021 6:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[orderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NOT NULL,
	[carID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[checkIn] [date] NOT NULL,
	[checkOut] [date] NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 3/7/2021 6:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[bookingDate] [date] NOT NULL,
	[price] [float] NOT NULL,
	[discountCode] [varchar](10) NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 3/7/2021 6:38:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[email] [varchar](100) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[address] [varchar](500) NOT NULL,
	[createDate] [date] NOT NULL,
	[verificationCode] [int] NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCars] ON 

INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (1, 1, N'WIGO 5MT', N'Red', 2021, 100, 4, N'https://www.toyota.com.vn/data/news/6232/_color/R40_RED-2.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (4, 1, N'VIOS 1.5E MT', N'Red', 2021, 200, 5, N'https://www.toyota.com.vn/data/news/8221/_color/VE-(3R3)-1.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (5, 1, N'CAMRY 2.0G', N'Sivler', 2020, 150, 7, N'https://www.toyota.com.vn/data/news/4676/_color/B%E1%BA%A1c-(1D4)-G-2.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (6, 2, N'KIA Rondo', N'Sivler', 2020, 100, 12, N'https://kiamotorsvietnam.com.vn//storage/rondo/exterior-2.jpg', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (9, 3, N'Honda City', N'Red', 2021, 100, 11, N'https://cdn.honda.com.vn/automobiles/October2020/do9qi3pykphR7qLxaGnC.png', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (10, 1, N'LAND CRUISER PRADO VX', N'Silver', 2020, 99.9, 11, N'https://www.toyota.com.vn/data/news/7961/_color/Bac-1F7-2.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (11, 1, N'LAND CRUISER', N'Silver', 2019, 300, 20, N'https://www.toyota.com.vn/data/news/5459/_color/Toyota_LC200_Silver1f7_600x249px.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (12, 1, N'ALPHARD LUXURY', N'Silver', 2021, 400, 12, N'https://www.toyota.com.vn/data/news/8066/_color/Toyota_Alphard_Silver_4x1_600x249px.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (13, 1, N'RUSH S 1.5AT', N'Silver', 2020, 100, 5, N'https://www.toyota.com.vn/data/news/3961/_color/Bac-2.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (15, 1, N'INNOVA E 2.0MT', N'Silver', 2021, 150, 12, N'https://www.toyota.com.vn/data/news/6603/_color/1D6_SILVER-1.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (16, 1, N'AVANZA MT', N'Silver', 2021, 170, 7, N'https://www.toyota.com.vn/data/news/3960/_color/Bac-1E7-MT.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (17, 1, N'HIACE', N'Silver', 2019, 200, 10, N'https://www.toyota.com.vn/data/news/1873/_color/X%C3%A1m%201E7-600x249%20px.jpg?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (18, 1, N'GRANVIA PREMIUM PACKAGE', N'Back', 2018, 120, 11, N'https://www.toyota.com.vn/data/news/5903/_color/Toyota_Granvia_202_600x249px.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (19, 1, N'COROLLA CROSS 1.8G', N'Back', 2019, 20, 11, N'https://www.toyota.com.vn/data/news/6267/_color/ZSG10L-DHXEK_218_(600x249).jpg?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (21, 1, N'COROLLA ALTIS 1.8E CVT', N'rED', 2021, 110, 8, N'https://www.toyota.com.vn/data/news/6299/_color/%C4%90%E1%BB%8F-3R3-2.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (22, 1, N'HILUX 2.4L 4X2 MT', N'Orange', 2019, 150, 8, N'https://www.toyota.com.vn/data/news/6374/_color/Car-4R8-2.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (23, 1, N'FORTUNER 2.4MT 4X2', N'White', 2021, 200, 2, N'https://www.toyota.com.vn/data/news/6497/_color/01%202.4MT%204x2(600x249)px_Trang.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (24, 1, N'YARIS 1.5G CVT', N'Blue', 2021, 120, 5, N'https://www.toyota.com.vn/data/news/6622/_color/8W9_CYAN-METALLIC-1.png?width=600', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (26, 2, N'KIA Morning', N'White', 2021, 110, 11, N'https://kiamotorsvietnam.com.vn//storage/soluto/exterior-front.jpg', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (27, 2, N'KIA All-New Cerato', N'Red', 2021, 110, 10, N'https://kiamotorsvietnam.com.vn//storage/kiacerato/bd-exterior-side.jpg', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (28, 2, N'KIA Optima', N'White', 2021, 90, 7, N'https://kiamotorsvietnam.com.vn//storage/kiaoptima/exterior-side-2.jpg', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (30, 2, N'KIA Rondo', N'White', 2021, 150, 8, N'https://kiamotorsvietnam.com.vn//storage/rondo/kiarondo-1.png', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (32, 4, N'ECOSPORT 1.0L AT TITANIUM', N'Blue', 2021, 110, 7, N'https://www.ford.com.vn/content/dam/Ford/website-assets/ap/vn/nameplate/new-ecosport/ecosport_1_0l_at_titanium/thumbnails/ecosport_1_0l_at_titanium.jpg', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (34, 4, N'RANGER WILDTRAK 2.0L AT 4X4', N'White', 2021, 400, 4, N'https://www.ford.com.vn/content/dam/Ford/website-assets/ap/vn/nameplate/ranger-new-2018/models/Wildtrak-2-0-l-at-4-4/thumbnail/wildtrak-2-0-l-at-4-4.png', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (35, 4, N'Ford Ranger XLS 2.2L 4X2 AT', N'White', 2021, 300, 12, N'https://www.ford.com.vn/content/dam/Ford/website-assets/ap/vn/nameplate/ranger-new-2018/models/Ranger-xls-2-2l-4X2-at/thumbnail/xls-4-2-at.png', 1)
INSERT [dbo].[tblCars] ([carID], [categoryID], [carName], [color], [year], [price], [quantity], [img], [status]) VALUES (36, 4, N'Ford Explorer', N'White', 2021, 300, 11, N'https://www.ford.com.vn/content/dam/Ford/website-assets/ap/vn/nameplate/explorer-new/model/explorer_updated_image.jpg', 1)
SET IDENTITY_INSERT [dbo].[tblCars] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategorys] ON 

INSERT [dbo].[tblCategorys] ([categoryID], [categoryName], [status]) VALUES (1, N'Toyota', 1)
INSERT [dbo].[tblCategorys] ([categoryID], [categoryName], [status]) VALUES (2, N'KIA', 1)
INSERT [dbo].[tblCategorys] ([categoryID], [categoryName], [status]) VALUES (3, N'Honda', 1)
INSERT [dbo].[tblCategorys] ([categoryID], [categoryName], [status]) VALUES (4, N'Ford', 1)
SET IDENTITY_INSERT [dbo].[tblCategorys] OFF
GO
INSERT [dbo].[tblDiscounts] ([discountCode], [beginDate], [endDate], [value]) VALUES (N'KM01', CAST(N'2021-03-07' AS Date), CAST(N'2021-03-08' AS Date), 10)
INSERT [dbo].[tblDiscounts] ([discountCode], [beginDate], [endDate], [value]) VALUES (N'KM02', CAST(N'2021-03-07' AS Date), CAST(N'2021-03-12' AS Date), 20)
INSERT [dbo].[tblDiscounts] ([discountCode], [beginDate], [endDate], [value]) VALUES (N'N/A', CAST(N'1999-01-01' AS Date), CAST(N'1999-01-01' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[tblFeedbacks] ON 

INSERT [dbo].[tblFeedbacks] ([feedbackID], [orderDetailID], [value]) VALUES (1, 7, 9)
INSERT [dbo].[tblFeedbacks] ([feedbackID], [orderDetailID], [value]) VALUES (4, 6, 1)
INSERT [dbo].[tblFeedbacks] ([feedbackID], [orderDetailID], [value]) VALUES (5, 2, 1)
INSERT [dbo].[tblFeedbacks] ([feedbackID], [orderDetailID], [value]) VALUES (6, 3, 2)
SET IDENTITY_INSERT [dbo].[tblFeedbacks] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrderDetail] ON 

INSERT [dbo].[tblOrderDetail] ([orderDetailID], [orderID], [carID], [quantity], [price], [checkIn], [checkOut], [status]) VALUES (1, 1, 1, 1, 100, CAST(N'2021-03-07' AS Date), CAST(N'2021-03-08' AS Date), 1)
INSERT [dbo].[tblOrderDetail] ([orderDetailID], [orderID], [carID], [quantity], [price], [checkIn], [checkOut], [status]) VALUES (2, 2, 4, 1, 200, CAST(N'2021-03-07' AS Date), CAST(N'2021-03-08' AS Date), 0)
INSERT [dbo].[tblOrderDetail] ([orderDetailID], [orderID], [carID], [quantity], [price], [checkIn], [checkOut], [status]) VALUES (3, 3, 1, 1, 100, CAST(N'2021-03-07' AS Date), CAST(N'2021-03-08' AS Date), 0)
INSERT [dbo].[tblOrderDetail] ([orderDetailID], [orderID], [carID], [quantity], [price], [checkIn], [checkOut], [status]) VALUES (4, 4, 4, 1, 200, CAST(N'2021-03-07' AS Date), CAST(N'2021-03-08' AS Date), 1)
INSERT [dbo].[tblOrderDetail] ([orderDetailID], [orderID], [carID], [quantity], [price], [checkIn], [checkOut], [status]) VALUES (5, 5, 4, 1, 200, CAST(N'2021-03-07' AS Date), CAST(N'2021-03-08' AS Date), 1)
INSERT [dbo].[tblOrderDetail] ([orderDetailID], [orderID], [carID], [quantity], [price], [checkIn], [checkOut], [status]) VALUES (6, 6, 5, 1, 150, CAST(N'2021-03-07' AS Date), CAST(N'2021-03-08' AS Date), 0)
INSERT [dbo].[tblOrderDetail] ([orderDetailID], [orderID], [carID], [quantity], [price], [checkIn], [checkOut], [status]) VALUES (7, 7, 9, 1, 100, CAST(N'2021-03-07' AS Date), CAST(N'2021-03-08' AS Date), 0)
INSERT [dbo].[tblOrderDetail] ([orderDetailID], [orderID], [carID], [quantity], [price], [checkIn], [checkOut], [status]) VALUES (8, 8, 4, 1, 200, CAST(N'2021-03-08' AS Date), CAST(N'2021-03-09' AS Date), 1)
INSERT [dbo].[tblOrderDetail] ([orderDetailID], [orderID], [carID], [quantity], [price], [checkIn], [checkOut], [status]) VALUES (9, 9, 1, 1, 700, CAST(N'2021-03-10' AS Date), CAST(N'2021-03-17' AS Date), 1)
SET IDENTITY_INSERT [dbo].[tblOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrders] ON 

INSERT [dbo].[tblOrders] ([orderID], [email], [bookingDate], [price], [discountCode], [status]) VALUES (1, N'hanhvu0978@gmail.com', CAST(N'2021-03-07' AS Date), 100, N'N/A', 0)
INSERT [dbo].[tblOrders] ([orderID], [email], [bookingDate], [price], [discountCode], [status]) VALUES (2, N'hanhvu0978@gmail.com', CAST(N'2021-03-07' AS Date), 200, N'N/A', 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [bookingDate], [price], [discountCode], [status]) VALUES (3, N'hanhvu0978@gmail.com', CAST(N'2021-03-07' AS Date), 100, N'N/A', 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [bookingDate], [price], [discountCode], [status]) VALUES (4, N'hanhvu0978@gmail.com', CAST(N'2021-03-07' AS Date), 200, N'N/A', 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [bookingDate], [price], [discountCode], [status]) VALUES (5, N'hanhvu0978@gmail.com', CAST(N'2021-03-07' AS Date), 200, N'N/A', 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [bookingDate], [price], [discountCode], [status]) VALUES (6, N'hanhvu0978@gmail.com', CAST(N'2021-03-07' AS Date), 150, N'N/A', 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [bookingDate], [price], [discountCode], [status]) VALUES (7, N'hanhvu0978@gmail.com', CAST(N'2021-03-07' AS Date), 100, N'N/A', 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [bookingDate], [price], [discountCode], [status]) VALUES (8, N'hanhvu0978@gmail.com', CAST(N'2021-03-07' AS Date), 200, N'N/A', 0)
INSERT [dbo].[tblOrders] ([orderID], [email], [bookingDate], [price], [discountCode], [status]) VALUES (9, N'hanhvu0978@gmail.com', CAST(N'2021-03-07' AS Date), 630, N'KM01', 1)
SET IDENTITY_INSERT [dbo].[tblOrders] OFF
GO
INSERT [dbo].[tblUsers] ([email], [password], [name], [phone], [address], [createDate], [verificationCode], [status]) VALUES (N'hanhvu0978@gmail.com', N'1', N'Anh Vu', N'12345567890', N'Ho Chi Minh', CAST(N'2021-03-07' AS Date), 3979, 1)
INSERT [dbo].[tblUsers] ([email], [password], [name], [phone], [address], [createDate], [verificationCode], [status]) VALUES (N'huynhvu0966@gmail.com', N'123456', N'Anh Vu', N'1231123112', N'Ho Chi Minh', CAST(N'2021-03-07' AS Date), 2437, 0)
GO
ALTER TABLE [dbo].[tblCars]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategorys] ([categoryID])
GO
ALTER TABLE [dbo].[tblFeedbacks]  WITH CHECK ADD FOREIGN KEY([orderDetailID])
REFERENCES [dbo].[tblOrderDetail] ([orderDetailID])
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD FOREIGN KEY([carID])
REFERENCES [dbo].[tblCars] ([carID])
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[tblOrders] ([orderID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([discountCode])
REFERENCES [dbo].[tblDiscounts] ([discountCode])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[tblUsers] ([email])
GO
USE [master]
GO
ALTER DATABASE [Assignment3_HuynhAnhVu] SET  READ_WRITE 
GO
