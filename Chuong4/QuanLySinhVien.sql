USE [QuanLySinhVien]
GO
/****** Object:  Table [dbo].[DANGKYHOC]    Script Date: 07/07/2025 4:50:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGKYHOC](
	[MaSV] [varchar](10) NOT NULL,
	[MaMH] [varchar](6) NOT NULL,
 CONSTRAINT [PK_DANGKYHOC] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KETQUA]    Script Date: 07/07/2025 4:50:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KETQUA](
	[MaSV] [varchar](10) NOT NULL,
	[MaMH] [varchar](6) NOT NULL,
	[DiemQT] [float] NULL,
	[DiemGK] [float] NULL,
	[DiemCK] [float] NULL,
	[DiemHP] [float] NULL,
	[DiemChu] [varchar](2) NULL,
 CONSTRAINT [PK_KETQUA] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 07/07/2025 4:50:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MaKhoa] [varchar](5) NOT NULL,
	[TenKhoa] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 07/07/2025 4:50:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MaLop] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NOT NULL,
	[MaKhoa] [varchar](5) NOT NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 07/07/2025 4:50:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MaMH] [varchar](6) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[SoTC] [int] NOT NULL,
	[HocKy] [int] NOT NULL,
 CONSTRAINT [PK_MONHOC] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 07/07/2025 4:50:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MaSV] [varchar](10) NOT NULL,
	[CCCD] [char](12) NULL,
	[HoDem] [nvarchar](20) NULL,
	[Ten] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[MaLop] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SVNGOAITINH]    Script Date: 07/07/2025 4:50:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SVNGOAITINH](
	[MaSV] [varchar](10) NOT NULL,
	[HoDem] [nvarchar](20) NOT NULL,
	[Ten] [nvarchar](10) NOT NULL,
	[QueQuan] [nvarchar](50) NULL,
 CONSTRAINT [PK_SVNGOAITINH] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuoiSV]    Script Date: 07/07/2025 4:50:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuoiSV](
	[HoDem] [nvarchar](20) NOT NULL,
	[Ten] [nvarchar](10) NOT NULL,
	[tuoi] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030001', N'114099')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030001', N'172555')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030001', N'173081')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030001', N'174031')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030002', N'114099')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030002', N'174045')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030002', N'196055')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030003', N'159051')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030003', N'172555')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030003', N'173081')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030003', N'174041')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030004', N'172031')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030004', N'172075')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2361030004', N'196055')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2461130006', N'114099')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2461130006', N'172031')
INSERT [dbo].[DANGKYHOC] ([MaSV], [MaMH]) VALUES (N'2461130006', N'173081')
GO
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030001', N'114099', 9, 6, 8, 7.9, N'B+')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030001', N'172555', 4, 8, 7, 6.3, N'C+')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030001', N'173081', 5, 6, 7, 6.2, N'C+')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030002', N'114099', 7, 7, 6, 6.5, N'C+')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030002', N'196055', 2, 9, 8, 6.4, N'C+')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030003', N'159051', 9, 9, 9, 9, N'A')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030003', N'172555', 8, 7, 6, 6.8, N'C+')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030003', N'173081', 6, 8, 5, 5.9, N'C')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030004', N'172031', 8, 8, 8, 8, N'B+')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030004', N'172075', 7, 7, 7, 7, N'B')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2361030004', N'196055', 3, 5, 6, 4.9, N'D+')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2461130006', N'114099', 7, 5, 6, 6.1, N'C')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2461130006', N'172031', 7, 7, 7, 7, N'B')
INSERT [dbo].[KETQUA] ([MaSV], [MaMH], [DiemQT], [DiemGK], [DiemCK], [DiemHP], [DiemChu]) VALUES (N'2461130006', N'173081', 8, 7, 9, 8.3, N'B+')
GO
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [DiaChi]) VALUES (N'HDT01', N'Kỹ thuật công nghệ và truyền thông', N'Tòa nhà A3')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [DiaChi]) VALUES (N'HDT02', N'Kinh tế', N'Tòa nhà A2')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [DiaChi]) VALUES (N'HDT03', N'Khoa học xã hội', N'Tòa nhà A4')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [DiaChi]) VALUES (N'HDT04', N'Khoa học tự nhiên', N'Tòa nhà A4')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [DiaChi]) VALUES (N'HDT05', N'Ngoại Ngữ', N'Tòa nhà A7')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [DiaChi]) VALUES (N'HDT06', N'Nông Lâm', N'Tòa nhà A1')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [DiaChi]) VALUES (N'HDT07', N'Giáo dục', N'Tòa nhà A6')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [DiaChi]) VALUES (N'HDT08', N'Chính trị Luật', N'Tòa nhà A6')
GO
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'236103A', N'ĐH CNTT K26A', N'HDT01')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'236103B', N'ĐH CNTT K26B', N'HDT01')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'236110', N'ĐH Trồng trọt   K26', N'HDT06')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'236113A', N'ĐH SP Tin học K26', N'HDT01')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'236201', N'ĐH Kỹ thuật xây dựng K26', N'HDT01')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'236401', N'ĐH QTKD K26', N'HDT02')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'236402', N'ĐH Kế toán K26', N'HDT02')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'246103A', N'ĐH CNTT K27A', N'HDT01')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'246103B', N'ĐH CNTT K27B', N'HDT01')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'246113A', N'ĐH SP Tin học K27', N'HDT01')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'246123', N'ĐH Truyền thông ĐPT K27', N'HDT01')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'246609A', N'ĐH Tâm  lý K27A', N'HDT07')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'246609B', N'ĐH Tâm lý K27B', N'HDT07')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'246702A', N'ĐH Ngôn ngữ Anh K27A', N'HDT05')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoa]) VALUES (N'246702F', N'ĐH Ngôn ngữ Anh K27F', N'HDT05')
GO
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'114099', N'Toán cao cấp', 4, 1)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'159051', N'Vật lý kỹ thuật', 3, 2)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'172025', N'Kiến trúc máy tính', 3, 2)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'172031', N'Hệ điều hành', 2, 3)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'172034', N'Thiết kế Web', 2, 4)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'172050', N'Mạng máy tính', 3, 5)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'172075', N'Toán rời rạc', 3, 4)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'172555', N'Công nghệ số', 3, 2)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'173081', N'Lập trình cơ bản', 3, 1)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'173097', N'Lập trình nâng cao', 2, 2)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'174075', N'Hệ quản trị cơ sở dữ liệu', 3, 5)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'174097', N'Cơ sở dữ liệu', 2, 3)
INSERT [dbo].[MONHOC] ([MaMH], [TenMH], [SoTC], [HocKy]) VALUES (N'196055', N'Triết học Mác Lê Nin', 3, 1)
GO
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2361030001', N'038305235624', N'Ngô Thị', N'Anh', CAST(N'2005-09-08' AS Date), N'Nữ', N'Nghệ An', N'236103A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2361030002', N'038305267538', N'Trần Kim', N'Anh', CAST(N'2005-08-12' AS Date), N'Nữ', N'Ninh Bình', N'236103A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2361030003', N'038205374123', N'Nguyễn Việt', N'Bắc', CAST(N'2005-05-10' AS Date), N'Nam', N'Nghệ An', N'236103A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2361030004', N'038205674324', N'Nguyễn Văn', N'Bình', CAST(N'2005-12-03' AS Date), N'Nam', N'Thanh Hóa', N'236103A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2361030005', N'038205376825', N'Hồ Đăng ', N'Chiến', CAST(N'2005-10-05' AS Date), N'Nam', N'Thanh Hóa', N'236103A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2461130001', N'038506187223', N'Nguyễn An', N'Bình', CAST(N'2006-10-05' AS Date), N'Nữ', N'Thanh Hóa', N'246113A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2461130005', N'038406246785', N'Trần Văn', N'Dũng', CAST(N'2006-11-25' AS Date), N'Nam', N'Thanh Hóa', N'246113A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2461130006', N'038406345762', N'Lê Quang', N'Dương', CAST(N'2006-09-20' AS Date), N'Nam', N'Thanh Hóa', N'246113A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2461130010', N'038506864523', N'Hoàng Ngọc', N'Hằng', CAST(N'2006-04-10' AS Date), N'Nữ', N'Thanh Hóa', N'246113A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2461130030', N'038406246741', N'Nguyễn Đăng', N'Giang', CAST(N'2006-05-15' AS Date), N'Nam', N'Thanh Hóa', N'246113A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2467020001', N'038506356724', N'Nguyễn  Thiên', N'Ân', CAST(N'2006-06-28' AS Date), N'Nữ', N'Thanh Hóa', N'246702A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2467020010', N'038506876584', N'Đinh Hồng', N'Duyên', CAST(N'2006-07-10' AS Date), N'Nữ', N'Thanh Hóa', N'246702A')
INSERT [dbo].[SINHVIEN] ([MaSV], [CCCD], [HoDem], [Ten], [NgaySinh], [GioiTinh], [QueQuan], [MaLop]) VALUES (N'2467020045', N'038406476523', N'Nguyễn Minh', N'Hiếu', CAST(N'2006-03-27' AS Date), N'Nam', N'Ninh Bình', N'246702A')
GO
INSERT [dbo].[SVNGOAITINH] ([MaSV], [HoDem], [Ten], [QueQuan]) VALUES (N'2361030001', N'Ngô Thị', N'Anh', N'Nghệ An')
INSERT [dbo].[SVNGOAITINH] ([MaSV], [HoDem], [Ten], [QueQuan]) VALUES (N'2361030002', N'Trần Kim', N'Anh', N'Ninh Bình')
INSERT [dbo].[SVNGOAITINH] ([MaSV], [HoDem], [Ten], [QueQuan]) VALUES (N'2361030003', N'Nguyễn Việt', N'Bắc', N'Nghệ An')
INSERT [dbo].[SVNGOAITINH] ([MaSV], [HoDem], [Ten], [QueQuan]) VALUES (N'2467020045', N'Nguyễn Minh', N'Hiếu', N'Ninh Bình')
GO
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Ngô Thị', N'Anh', 20)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Trần Kim', N'Anh', 20)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Nguyễn Việt', N'Bắc', 20)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Nguyễn Văn', N'Bình', 20)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Hồ Đăng ', N'Chiến', 20)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Nguyễn An', N'Bình', 19)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Trần Văn', N'Dũng', 19)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Lê Quang', N'Dương', 19)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Hoàng Ngọc', N'Hằng', 19)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Nguyễn Đăng', N'Giang', 19)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Nguyễn  Thiên', N'Ân', 19)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Đinh Hồng', N'Duyên', 19)
INSERT [dbo].[TuoiSV] ([HoDem], [Ten], [tuoi]) VALUES (N'Nguyễn Minh', N'Hiếu', 19)
GO
ALTER TABLE [dbo].[SINHVIEN] ADD  CONSTRAINT [DF_SINHVIEN_Gioitinh]  DEFAULT ('M') FOR [GioiTinh]
GO
ALTER TABLE [dbo].[DANGKYHOC]  WITH CHECK ADD  CONSTRAINT [FK_DANGKYHOC_SINHVIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SINHVIEN] ([MaSV])
GO
ALTER TABLE [dbo].[DANGKYHOC] CHECK CONSTRAINT [FK_DANGKYHOC_SINHVIEN]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_KETQUA_MONHOC] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MONHOC] ([MaMH])
GO
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK_KETQUA_MONHOC]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_KETQUA_SINHVIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SINHVIEN] ([MaSV])
GO
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK_KETQUA_SINHVIEN]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_KHOA] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_KHOA]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINHVIEN_LOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_LOP]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [CK_SINHVIEN] CHECK  (([CCCD] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [CK_SINHVIEN]
GO
