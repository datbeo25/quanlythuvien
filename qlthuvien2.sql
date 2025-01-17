USE [master]
GO
/****** Object:  Database [qlthuvien2]    Script Date: 12/22/2023 12:01:25 AM ******/
CREATE DATABASE [qlthuvien2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlthuvien2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\qlthuvien2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlthuvien2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\qlthuvien2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [qlthuvien2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlthuvien2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlthuvien2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlthuvien2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlthuvien2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlthuvien2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlthuvien2] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlthuvien2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [qlthuvien2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlthuvien2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlthuvien2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlthuvien2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlthuvien2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlthuvien2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlthuvien2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlthuvien2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlthuvien2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlthuvien2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlthuvien2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlthuvien2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlthuvien2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlthuvien2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlthuvien2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlthuvien2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlthuvien2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlthuvien2] SET  MULTI_USER 
GO
ALTER DATABASE [qlthuvien2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlthuvien2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlthuvien2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlthuvien2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlthuvien2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlthuvien2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [qlthuvien2] SET QUERY_STORE = ON
GO
ALTER DATABASE [qlthuvien2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [qlthuvien2]
GO
/****** Object:  Table [dbo].[Docgia]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docgia](
	[Madocgia] [int] IDENTITY(1,1) NOT NULL,
	[Tendocgia] [nvarchar](100) NULL,
	[Namsinh] [int] NULL,
	[Sodienthoai] [int] NULL,
	[Gioitinh] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Madocgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[Manhanvien] [int] IDENTITY(1,1) NOT NULL,
	[Tennhanvien] [nvarchar](100) NULL,
	[Sdtnhanvien] [int] NULL,
	[Email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phieumuonsach]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieumuonsach](
	[Maphieumuon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaymuon] [date] NULL,
	[Ngayhethan] [date] NULL,
	[Ngaytra] [date] NULL,
	[Trangthai] [bit] NULL,
	[Mathedocgia] [int] NULL,
	[Maphieuphat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Maphieumuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phieumuonsach_sach]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieumuonsach_sach](
	[Maphieumuon] [int] NULL,
	[Masach] [int] NULL,
	[Maphieumuonsach_sach] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Maphieumuonsach_sach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phieuphat]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieuphat](
	[Maphieuphat] [int] IDENTITY(1,1) NOT NULL,
	[Sotienphat] [int] NULL,
	[Ghichu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maphieuphat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[Masach] [int] IDENTITY(1,1) NOT NULL,
	[Tensach] [nvarchar](100) NULL,
	[Nhaxuatban] [nvarchar](100) NULL,
	[Giathue] [int] NULL,
	[Namxuatban] [int] NULL,
	[Soluong] [int] NULL,
	[Soluongconlai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach_Theloaisach]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach_Theloaisach](
	[Masach] [int] NULL,
	[Matheloai] [int] NULL,
	[ids_tl] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ids_tl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taikhoan]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoan](
	[Tendangnhap] [varchar](100) NOT NULL,
	[Matkhau] [varchar](100) NULL,
	[Quyen] [int] NULL,
	[Manhanvien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Tendangnhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thedocgia]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thedocgia](
	[Mathedocgia] [int] IDENTITY(1,1) NOT NULL,
	[Ngaycap] [date] NULL,
	[Ngayhethan] [date] NULL,
	[Madocgia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mathedocgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theloaisach]    Script Date: 12/22/2023 12:01:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theloaisach](
	[Matheloai] [int] IDENTITY(1,1) NOT NULL,
	[Tentheloai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Matheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Docgia] ON 

INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (1, N'Trần Thị Minh Phương', 1990, 123456789, N'0')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (2, N'Trần Văn Bảo Ngọc', 1995, 987654321, N'1')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (3, N'Lê Thị Ánh Dương', 1988, 365987412, N'0')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (4, N'Phạm Văn Minh Tuấn', 1992, 369871245, N'1')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (5, N'Hoàng Thị Mai Anh', 1993, 987123456, N'0')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (6, N'Đặng Văn Thành Đạt', 1994, 912345678, N'1')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (7, N'Vũ Thị Hồng Linh', 1995, 398765432, N'0')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (8, N'Ngô Văn Minh Tuấn', 1988, 777123456, N'1')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (9, N'Mai Thị Phương Anh', 1991, 918234567, N'0')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (10, N'Trần Thị Thanh Thảo', 1992, 365987123, N'0')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (11, N'Phan Văn Huy Hoàng', 1996, 567123498, N'1')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (12, N'Lê Thị Thu Hà', 1997, 912456789, N'0')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (13, N'Nguyễn Văn Minh Hiếu', 1998, 356123789, N'1')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (14, N'Lê Thị Kim Anh', 1990, 123654789, N'0')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (15, N'Trần Văn Hoàng Anh', 1993, 987123675, N'1')
INSERT [dbo].[Docgia] ([Madocgia], [Tendocgia], [Namsinh], [Sodienthoai], [Gioitinh]) VALUES (16, N'Minh Đạt', 2003, 3283992, N'Nam')
SET IDENTITY_INSERT [dbo].[Docgia] OFF
GO
SET IDENTITY_INSERT [dbo].[Nhanvien] ON 

INSERT [dbo].[Nhanvien] ([Manhanvien], [Tennhanvien], [Sdtnhanvien], [Email]) VALUES (1, N'Nguyễn Văn Dũng', 123456789, N'nguyenvandung@email.com')
INSERT [dbo].[Nhanvien] ([Manhanvien], [Tennhanvien], [Sdtnhanvien], [Email]) VALUES (2, N'Kiều Viết Tiến', 987654321, N'kieuviettien@email.com')
INSERT [dbo].[Nhanvien] ([Manhanvien], [Tennhanvien], [Sdtnhanvien], [Email]) VALUES (3, N'Lê Thanh Bình', 909090909, N'lethanbinh@email.com')
INSERT [dbo].[Nhanvien] ([Manhanvien], [Tennhanvien], [Sdtnhanvien], [Email]) VALUES (4, N'Nguyễn Minh Đạt', 888123456, N'nguyenminhdat@email.com')
INSERT [dbo].[Nhanvien] ([Manhanvien], [Tennhanvien], [Sdtnhanvien], [Email]) VALUES (5, N'Vũ Đức Thắng', 777123456, N'vuducthang@email.com')
SET IDENTITY_INSERT [dbo].[Nhanvien] OFF
GO
SET IDENTITY_INSERT [dbo].[Phieumuonsach] ON 

INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (1, CAST(N'2023-12-10' AS Date), CAST(N'2023-12-20' AS Date), CAST(N'2023-12-15' AS Date), 1, 1, NULL)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (2, CAST(N'2023-12-02' AS Date), CAST(N'2023-12-12' AS Date), CAST(N'2023-12-15' AS Date), 1, 4, 1)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (3, CAST(N'2023-12-04' AS Date), CAST(N'2023-12-14' AS Date), CAST(N'2023-12-16' AS Date), 1, 2, 4)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (4, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-22' AS Date), CAST(N'2023-11-20' AS Date), 1, 1, 2)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (5, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-22' AS Date), NULL, 0, 4, NULL)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (6, CAST(N'2023-12-14' AS Date), CAST(N'2023-11-24' AS Date), CAST(N'2023-12-20' AS Date), 1, 1, 3)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (7, CAST(N'2023-12-15' AS Date), CAST(N'2023-12-25' AS Date), NULL, 0, 2, NULL)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (8, CAST(N'2023-12-16' AS Date), CAST(N'2023-12-26' AS Date), NULL, 0, 3, NULL)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (9, CAST(N'2023-12-17' AS Date), CAST(N'2023-12-27' AS Date), NULL, 0, 2, NULL)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (10, CAST(N'2023-12-17' AS Date), CAST(N'2023-12-27' AS Date), CAST(N'2023-12-28' AS Date), 1, 1, 5)
INSERT [dbo].[Phieumuonsach] ([Maphieumuon], [Ngaymuon], [Ngayhethan], [Ngaytra], [Trangthai], [Mathedocgia], [Maphieuphat]) VALUES (11, CAST(N'2023-12-07' AS Date), CAST(N'2023-12-27' AS Date), NULL, 0, 4, NULL)
SET IDENTITY_INSERT [dbo].[Phieumuonsach] OFF
GO
SET IDENTITY_INSERT [dbo].[Phieumuonsach_sach] ON 

INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (1, 1, 1)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (1, 13, 2)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (2, 3, 3)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (2, 14, 4)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (3, 4, 5)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (4, 2, 6)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (4, 6, 7)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (5, 3, 8)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (6, 10, 9)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (9, 2, 10)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (9, 1, 11)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (10, 14, 12)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (10, 2, 13)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (10, 3, 14)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (11, 11, 15)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (11, 10, 16)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (11, 16, 17)
INSERT [dbo].[Phieumuonsach_sach] ([Maphieumuon], [Masach], [Maphieumuonsach_sach]) VALUES (11, 5, 18)
SET IDENTITY_INSERT [dbo].[Phieumuonsach_sach] OFF
GO
SET IDENTITY_INSERT [dbo].[Phieuphat] ON 

INSERT [dbo].[Phieuphat] ([Maphieuphat], [Sotienphat], [Ghichu]) VALUES (1, 60000, N'Muộn 3 ngày')
INSERT [dbo].[Phieuphat] ([Maphieuphat], [Sotienphat], [Ghichu]) VALUES (2, 75000, N'Phạt mất sách')
INSERT [dbo].[Phieuphat] ([Maphieuphat], [Sotienphat], [Ghichu]) VALUES (3, 54000, N'Phạt hỏng sách.')
INSERT [dbo].[Phieuphat] ([Maphieuphat], [Sotienphat], [Ghichu]) VALUES (4, 40000, N'trả muộn 2 day')
INSERT [dbo].[Phieuphat] ([Maphieuphat], [Sotienphat], [Ghichu]) VALUES (5, 20000, N'trả muộn 1 ngày')
SET IDENTITY_INSERT [dbo].[Phieuphat] OFF
GO
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (1, N'Tiếng Chim Hót Trong Bụi Mận Gai', N'NXB Văn Học', 50000, 2010, 20, 15)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (2, N'Đắc Nhân Tâm', N'NXB Trẻ', 80000, 1936, 15, 12)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (3, N'Tiểu thuyết Jane Eyre', N'NXB Thế giới', 70000, 1847, 25, 23)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (4, N'Bố Già', N'NXB Văn Học', 90000, 1969, 30, 28)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (5, N'Cây Cam Ngọt Của Tôi', N'NXB Kim Đồng', 55000, 2020, 40, 36)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (6, N'Nghìn Lẻ Một Đêm', N'NXB Văn Học', 85000, 1704, 18, 17)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (7, N'Cuốn Theo Chiều Gió', N'NXB Văn Học', 60000, 1936, 22, 20)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (8, N'Trăng non', N'NXB Văn Học', 45000, 1998, 28, 25)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (9, N'Người Mẹ Tốt Hơn Là Một Người Nhà Thuê', N'NXB Văn Học', 75000, 2013, 35, 32)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (10, N'Cô Bé Quàng Khăn Đỏ', N'NXB Trẻ', 70000, 1888, 19, 17)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (11, N'The Great Gatsby', N'NXB Charles Scribner''s Sons', 95000, 1925, 21, 18)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (12, N'Tiểu thuyết Moby-Dick', N'NXB Văn Học', 80000, 1851, 27, 24)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (13, N'Tiểu thuyết To Kill a Mockingbird', N'NXB J. B. Lippincott & Co.', 85000, 1960, 33, 30)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (14, N'The Catcher in the Rye', N'NXB Little, Brown and Company', 90000, 1951, 29, 25)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (15, N'Anna Karenina', N'NXB Văn Học', 95000, 1878, 24, 21)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (16, N'Nàng bạch tuyết và 7 chú lùn', N'NXB Kim đồng', 3000, 2002, 5, NULL)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (17, N'Nàng bạch tuyết', N'NXB KIm đồng', 2000, 2005, 4, NULL)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (18, N'Nàng bt', N'NXB Kim đồng', 3000, 2003, 5, NULL)
INSERT [dbo].[Sach] ([Masach], [Tensach], [Nhaxuatban], [Giathue], [Namxuatban], [Soluong], [Soluongconlai]) VALUES (20, N'Thái nnn', N'Kim Đồng', 2003, 500, 2, 2)
SET IDENTITY_INSERT [dbo].[Sach] OFF
GO
SET IDENTITY_INSERT [dbo].[Sach_Theloaisach] ON 

INSERT [dbo].[Sach_Theloaisach] ([Masach], [Matheloai], [ids_tl]) VALUES (1, 3, 1)
INSERT [dbo].[Sach_Theloaisach] ([Masach], [Matheloai], [ids_tl]) VALUES (1, 4, 2)
INSERT [dbo].[Sach_Theloaisach] ([Masach], [Matheloai], [ids_tl]) VALUES (2, 1, 3)
INSERT [dbo].[Sach_Theloaisach] ([Masach], [Matheloai], [ids_tl]) VALUES (2, 2, 4)
INSERT [dbo].[Sach_Theloaisach] ([Masach], [Matheloai], [ids_tl]) VALUES (3, 1, 5)
INSERT [dbo].[Sach_Theloaisach] ([Masach], [Matheloai], [ids_tl]) VALUES (18, 2, 6)
INSERT [dbo].[Sach_Theloaisach] ([Masach], [Matheloai], [ids_tl]) VALUES (18, 4, 7)
INSERT [dbo].[Sach_Theloaisach] ([Masach], [Matheloai], [ids_tl]) VALUES (20, 2, 10)
INSERT [dbo].[Sach_Theloaisach] ([Masach], [Matheloai], [ids_tl]) VALUES (20, 3, 11)
SET IDENTITY_INSERT [dbo].[Sach_Theloaisach] OFF
GO
INSERT [dbo].[Taikhoan] ([Tendangnhap], [Matkhau], [Quyen], [Manhanvien]) VALUES (N'Admin', N'Admin', 1, NULL)
INSERT [dbo].[Taikhoan] ([Tendangnhap], [Matkhau], [Quyen], [Manhanvien]) VALUES (N'Kieuviettien', N'abc1', 0, NULL)
INSERT [dbo].[Taikhoan] ([Tendangnhap], [Matkhau], [Quyen], [Manhanvien]) VALUES (N'Lethanhbinh', N'123a', 0, NULL)
INSERT [dbo].[Taikhoan] ([Tendangnhap], [Matkhau], [Quyen], [Manhanvien]) VALUES (N'Nguyenminhdat', N'abcd1', 0, NULL)
INSERT [dbo].[Taikhoan] ([Tendangnhap], [Matkhau], [Quyen], [Manhanvien]) VALUES (N'Nguyenvandung', N'DP2022', 0, NULL)
INSERT [dbo].[Taikhoan] ([Tendangnhap], [Matkhau], [Quyen], [Manhanvien]) VALUES (N'Vuducthang', N'12345a', 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Thedocgia] ON 

INSERT [dbo].[Thedocgia] ([Mathedocgia], [Ngaycap], [Ngayhethan], [Madocgia]) VALUES (1, CAST(N'2023-11-20' AS Date), CAST(N'2023-12-20' AS Date), 1)
INSERT [dbo].[Thedocgia] ([Mathedocgia], [Ngaycap], [Ngayhethan], [Madocgia]) VALUES (2, CAST(N'2023-11-20' AS Date), CAST(N'2023-12-20' AS Date), 2)
INSERT [dbo].[Thedocgia] ([Mathedocgia], [Ngaycap], [Ngayhethan], [Madocgia]) VALUES (3, CAST(N'2023-11-21' AS Date), CAST(N'2023-12-21' AS Date), 3)
INSERT [dbo].[Thedocgia] ([Mathedocgia], [Ngaycap], [Ngayhethan], [Madocgia]) VALUES (4, CAST(N'2023-12-12' AS Date), CAST(N'2023-12-20' AS Date), 4)
SET IDENTITY_INSERT [dbo].[Thedocgia] OFF
GO
SET IDENTITY_INSERT [dbo].[Theloaisach] ON 

INSERT [dbo].[Theloaisach] ([Matheloai], [Tentheloai]) VALUES (1, N'Tiểu thuyết')
INSERT [dbo].[Theloaisach] ([Matheloai], [Tentheloai]) VALUES (2, N'Kỹ năng sống')
INSERT [dbo].[Theloaisach] ([Matheloai], [Tentheloai]) VALUES (3, N'Trinh thám')
INSERT [dbo].[Theloaisach] ([Matheloai], [Tentheloai]) VALUES (4, N'Cổ tích')
SET IDENTITY_INSERT [dbo].[Theloaisach] OFF
GO
ALTER TABLE [dbo].[Phieumuonsach]  WITH CHECK ADD FOREIGN KEY([Maphieuphat])
REFERENCES [dbo].[Phieuphat] ([Maphieuphat])
GO
ALTER TABLE [dbo].[Phieumuonsach]  WITH CHECK ADD FOREIGN KEY([Mathedocgia])
REFERENCES [dbo].[Thedocgia] ([Mathedocgia])
GO
ALTER TABLE [dbo].[Phieumuonsach_sach]  WITH CHECK ADD FOREIGN KEY([Maphieumuon])
REFERENCES [dbo].[Phieumuonsach] ([Maphieumuon])
GO
ALTER TABLE [dbo].[Phieumuonsach_sach]  WITH CHECK ADD FOREIGN KEY([Masach])
REFERENCES [dbo].[Sach] ([Masach])
GO
ALTER TABLE [dbo].[Sach_Theloaisach]  WITH CHECK ADD FOREIGN KEY([Masach])
REFERENCES [dbo].[Sach] ([Masach])
GO
ALTER TABLE [dbo].[Sach_Theloaisach]  WITH CHECK ADD FOREIGN KEY([Matheloai])
REFERENCES [dbo].[Theloaisach] ([Matheloai])
GO
ALTER TABLE [dbo].[Thedocgia]  WITH CHECK ADD FOREIGN KEY([Madocgia])
REFERENCES [dbo].[Docgia] ([Madocgia])
GO
ALTER TABLE [dbo].[Docgia]  WITH CHECK ADD CHECK  (([NamSinh]>(0)))
GO
ALTER TABLE [dbo].[Docgia]  WITH CHECK ADD CHECK  (([Sodienthoai]>(0)))
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD CHECK  (([Namxuatban]>(0)))
GO
USE [master]
GO
ALTER DATABASE [qlthuvien2] SET  READ_WRITE 
GO
