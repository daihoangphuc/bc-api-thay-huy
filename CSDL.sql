USE [HTSV]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/22/2025 10:57:33 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVus]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](max) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[NhiemKy] [nvarchar](max) NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_ChucVus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKys]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDangKyId] [int] NOT NULL,
	[HoatDongId] [int] NOT NULL,
	[ThoiGianDangKy] [datetime2](7) NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
	[TrangThai] [tinyint] NOT NULL,
 CONSTRAINT [PK_DangKys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiayKhens]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiayKhens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDungId] [int] NOT NULL,
	[TenGiayKhen] [nvarchar](max) NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayCap] [datetime2](7) NOT NULL,
	[LinkGiayKhen] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_GiayKhens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhs]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoatDongId] [int] NOT NULL,
	[TieuDe] [nvarchar](max) NOT NULL,
	[LinkHinhAnh] [nvarchar](max) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[NguoiDungId] [int] NOT NULL,
	[ThoiGianDang] [datetime2](7) NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_HinhAnhs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoatDongs]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoatDongs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenHoatDong] [nvarchar](max) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[ThoiGianBatDau] [datetime2](7) NOT NULL,
	[ThoiGianKetThuc] [datetime2](7) NOT NULL,
	[DiaDiem] [nvarchar](max) NOT NULL,
	[SoLuongToiDa] [int] NULL,
	[ToaDo] [geometry] NULL,
	[HocKy] [tinyint] NOT NULL,
	[NamHoc] [nvarchar](max) NOT NULL,
	[TrangThai] [tinyint] NOT NULL,
	[CongKhai] [bit] NOT NULL,
	[FileMinhChung] [nvarchar](max) NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_HoatDongs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaTruongs]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaTruongs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoaTruong] [nvarchar](max) NOT NULL,
	[MaKhoaTruong] [nvarchar](450) NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_KhoaTruongs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IP] [nvarchar](max) NULL,
	[NguoiDungId] [int] NULL,
	[HanhDong] [nvarchar](max) NULL,
	[ThoiGian] [datetime2](7) NOT NULL,
	[KetQua] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocs]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaLop] [nvarchar](450) NOT NULL,
	[TenLop] [nvarchar](max) NOT NULL,
	[KhoaTruongId] [int] NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_LopHocs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung_Quyen]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung_Quyen](
	[NguoiDungsId] [int] NOT NULL,
	[QuyensId] [int] NOT NULL,
 CONSTRAINT [PK_NguoiDung_Quyen] PRIMARY KEY CLUSTERED 
(
	[NguoiDungsId] ASC,
	[QuyensId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDungs]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDungs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaSoSinhVien] [nvarchar](450) NOT NULL,
	[Email] [nvarchar](450) NOT NULL,
	[MatKhau] [nvarchar](max) NOT NULL,
	[HoTen] [nvarchar](max) NOT NULL,
	[SoDienThoai] [nvarchar](max) NOT NULL,
	[LopHocId] [int] NOT NULL,
	[ChucVuId] [int] NULL,
	[AnhDaiDien] [nvarchar](max) NOT NULL,
	[LanTruyCapCuoi] [datetime2](7) NULL,
	[TrangThai] [bit] NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_NguoiDungs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhiemVus]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhiemVus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhiemVu] [nvarchar](max) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[NgayBatDau] [datetime2](7) NULL,
	[NgayKetThuc] [datetime2](7) NULL,
	[NguoiTaoId] [int] NOT NULL,
	[TrangThai] [tinyint] NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_NhiemVus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCongs]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCongs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDuocPhanCongId] [int] NOT NULL,
	[NhiemVuId] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_PhanCongs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHois]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHois](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDungId] [int] NOT NULL,
	[HoatDongId] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[ThoiGianPhanHoi] [datetime2](7) NOT NULL,
	[DaXem] [bit] NOT NULL,
	[PhanHoiLai] [nvarchar](max) NULL,
	[ThoiGianPhanHoiLai] [datetime2](7) NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_PhanHois] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyens]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](max) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_Quyens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiChinhs]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiChinhs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoaiGiaoDich] [tinyint] NOT NULL,
	[SoTien] [decimal](18, 2) NOT NULL,
	[NgayThucHien] [datetime2](7) NOT NULL,
	[NguoiThucHienId] [int] NOT NULL,
	[NguoiDongTienId] [int] NULL,
	[HoatDongId] [int] NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_TaiChinhs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThamGias]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NguoiThamGiaId] [int] NOT NULL,
	[HoatDongId] [int] NOT NULL,
	[TrangThai] [tinyint] NOT NULL,
	[ThoiGianDiemDanh] [datetime2](7) NULL,
	[HinhThucDiemDanh] [nvarchar](max) NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_ThamGias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTucs]    Script Date: 2/22/2025 10:57:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTucs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayDang] [datetime2](7) NOT NULL,
	[NguoiDangTinId] [int] NOT NULL,
	[FileDinhKem] [nvarchar](max) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
	[NgaySua] [datetime2](7) NULL,
	[NgayXoa] [datetime2](7) NULL,
 CONSTRAINT [PK_TinTucs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DangKys] ADD  DEFAULT (CONVERT([tinyint],(0))) FOR [TrangThai]
GO
ALTER TABLE [dbo].[DangKys]  WITH CHECK ADD  CONSTRAINT [FK_DangKys_HoatDongs_HoatDongId] FOREIGN KEY([HoatDongId])
REFERENCES [dbo].[HoatDongs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DangKys] CHECK CONSTRAINT [FK_DangKys_HoatDongs_HoatDongId]
GO
ALTER TABLE [dbo].[DangKys]  WITH CHECK ADD  CONSTRAINT [FK_DangKys_NguoiDungs_NguoiDangKyId] FOREIGN KEY([NguoiDangKyId])
REFERENCES [dbo].[NguoiDungs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DangKys] CHECK CONSTRAINT [FK_DangKys_NguoiDungs_NguoiDangKyId]
GO
ALTER TABLE [dbo].[GiayKhens]  WITH CHECK ADD  CONSTRAINT [FK_GiayKhens_NguoiDungs_NguoiDungId] FOREIGN KEY([NguoiDungId])
REFERENCES [dbo].[NguoiDungs] ([Id])
GO
ALTER TABLE [dbo].[GiayKhens] CHECK CONSTRAINT [FK_GiayKhens_NguoiDungs_NguoiDungId]
GO
ALTER TABLE [dbo].[HinhAnhs]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnhs_HoatDongs_HoatDongId] FOREIGN KEY([HoatDongId])
REFERENCES [dbo].[HoatDongs] ([Id])
GO
ALTER TABLE [dbo].[HinhAnhs] CHECK CONSTRAINT [FK_HinhAnhs_HoatDongs_HoatDongId]
GO
ALTER TABLE [dbo].[HinhAnhs]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnhs_NguoiDungs_NguoiDungId] FOREIGN KEY([NguoiDungId])
REFERENCES [dbo].[NguoiDungs] ([Id])
GO
ALTER TABLE [dbo].[HinhAnhs] CHECK CONSTRAINT [FK_HinhAnhs_NguoiDungs_NguoiDungId]
GO
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_NguoiDungs_NguoiDungId] FOREIGN KEY([NguoiDungId])
REFERENCES [dbo].[NguoiDungs] ([Id])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_NguoiDungs_NguoiDungId]
GO
ALTER TABLE [dbo].[LopHocs]  WITH CHECK ADD  CONSTRAINT [FK_LopHocs_KhoaTruongs_KhoaTruongId] FOREIGN KEY([KhoaTruongId])
REFERENCES [dbo].[KhoaTruongs] ([Id])
GO
ALTER TABLE [dbo].[LopHocs] CHECK CONSTRAINT [FK_LopHocs_KhoaTruongs_KhoaTruongId]
GO
ALTER TABLE [dbo].[NguoiDung_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_Quyen_NguoiDungs_NguoiDungsId] FOREIGN KEY([NguoiDungsId])
REFERENCES [dbo].[NguoiDungs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NguoiDung_Quyen] CHECK CONSTRAINT [FK_NguoiDung_Quyen_NguoiDungs_NguoiDungsId]
GO
ALTER TABLE [dbo].[NguoiDung_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_Quyen_Quyens_QuyensId] FOREIGN KEY([QuyensId])
REFERENCES [dbo].[Quyens] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NguoiDung_Quyen] CHECK CONSTRAINT [FK_NguoiDung_Quyen_Quyens_QuyensId]
GO
ALTER TABLE [dbo].[NguoiDungs]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDungs_ChucVus_ChucVuId] FOREIGN KEY([ChucVuId])
REFERENCES [dbo].[ChucVus] ([Id])
GO
ALTER TABLE [dbo].[NguoiDungs] CHECK CONSTRAINT [FK_NguoiDungs_ChucVus_ChucVuId]
GO
ALTER TABLE [dbo].[NguoiDungs]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDungs_LopHocs_LopHocId] FOREIGN KEY([LopHocId])
REFERENCES [dbo].[LopHocs] ([Id])
GO
ALTER TABLE [dbo].[NguoiDungs] CHECK CONSTRAINT [FK_NguoiDungs_LopHocs_LopHocId]
GO
ALTER TABLE [dbo].[NhiemVus]  WITH CHECK ADD  CONSTRAINT [FK_NhiemVus_NguoiDungs_NguoiTaoId] FOREIGN KEY([NguoiTaoId])
REFERENCES [dbo].[NguoiDungs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhiemVus] CHECK CONSTRAINT [FK_NhiemVus_NguoiDungs_NguoiTaoId]
GO
ALTER TABLE [dbo].[PhanCongs]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongs_NguoiDungs_NguoiDuocPhanCongId] FOREIGN KEY([NguoiDuocPhanCongId])
REFERENCES [dbo].[NguoiDungs] ([Id])
GO
ALTER TABLE [dbo].[PhanCongs] CHECK CONSTRAINT [FK_PhanCongs_NguoiDungs_NguoiDuocPhanCongId]
GO
ALTER TABLE [dbo].[PhanCongs]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongs_NhiemVus_NhiemVuId] FOREIGN KEY([NhiemVuId])
REFERENCES [dbo].[NhiemVus] ([Id])
GO
ALTER TABLE [dbo].[PhanCongs] CHECK CONSTRAINT [FK_PhanCongs_NhiemVus_NhiemVuId]
GO
ALTER TABLE [dbo].[PhanHois]  WITH CHECK ADD  CONSTRAINT [FK_PhanHois_HoatDongs_HoatDongId] FOREIGN KEY([HoatDongId])
REFERENCES [dbo].[HoatDongs] ([Id])
GO
ALTER TABLE [dbo].[PhanHois] CHECK CONSTRAINT [FK_PhanHois_HoatDongs_HoatDongId]
GO
ALTER TABLE [dbo].[PhanHois]  WITH CHECK ADD  CONSTRAINT [FK_PhanHois_NguoiDungs_NguoiDungId] FOREIGN KEY([NguoiDungId])
REFERENCES [dbo].[NguoiDungs] ([Id])
GO
ALTER TABLE [dbo].[PhanHois] CHECK CONSTRAINT [FK_PhanHois_NguoiDungs_NguoiDungId]
GO
ALTER TABLE [dbo].[TaiChinhs]  WITH CHECK ADD  CONSTRAINT [FK_TaiChinhs_HoatDongs_HoatDongId] FOREIGN KEY([HoatDongId])
REFERENCES [dbo].[HoatDongs] ([Id])
GO
ALTER TABLE [dbo].[TaiChinhs] CHECK CONSTRAINT [FK_TaiChinhs_HoatDongs_HoatDongId]
GO
ALTER TABLE [dbo].[TaiChinhs]  WITH CHECK ADD  CONSTRAINT [FK_TaiChinhs_NguoiDungs_NguoiDongTienId] FOREIGN KEY([NguoiDongTienId])
REFERENCES [dbo].[NguoiDungs] ([Id])
GO
ALTER TABLE [dbo].[TaiChinhs] CHECK CONSTRAINT [FK_TaiChinhs_NguoiDungs_NguoiDongTienId]
GO
ALTER TABLE [dbo].[TaiChinhs]  WITH CHECK ADD  CONSTRAINT [FK_TaiChinhs_NguoiDungs_NguoiThucHienId] FOREIGN KEY([NguoiThucHienId])
REFERENCES [dbo].[NguoiDungs] ([Id])
GO
ALTER TABLE [dbo].[TaiChinhs] CHECK CONSTRAINT [FK_TaiChinhs_NguoiDungs_NguoiThucHienId]
GO
ALTER TABLE [dbo].[ThamGias]  WITH CHECK ADD  CONSTRAINT [FK_ThamGias_HoatDongs_HoatDongId] FOREIGN KEY([HoatDongId])
REFERENCES [dbo].[HoatDongs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThamGias] CHECK CONSTRAINT [FK_ThamGias_HoatDongs_HoatDongId]
GO
ALTER TABLE [dbo].[ThamGias]  WITH CHECK ADD  CONSTRAINT [FK_ThamGias_NguoiDungs_NguoiThamGiaId] FOREIGN KEY([NguoiThamGiaId])
REFERENCES [dbo].[NguoiDungs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThamGias] CHECK CONSTRAINT [FK_ThamGias_NguoiDungs_NguoiThamGiaId]
GO
ALTER TABLE [dbo].[TinTucs]  WITH CHECK ADD  CONSTRAINT [FK_TinTucs_NguoiDungs_NguoiDangTinId] FOREIGN KEY([NguoiDangTinId])
REFERENCES [dbo].[NguoiDungs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TinTucs] CHECK CONSTRAINT [FK_TinTucs_NguoiDungs_NguoiDangTinId]
GO
