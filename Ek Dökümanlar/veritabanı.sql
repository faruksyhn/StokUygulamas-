USE [ProjeOdevi]
GO
/****** Object:  Table [dbo].[Tbl_Bolum]    Script Date: 27.12.2018 19:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Bolum](
	[BolumId] [int] IDENTITY(1,1) NOT NULL,
	[BolumAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Bolum] PRIMARY KEY CLUSTERED 
(
	[BolumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Firma]    Script Date: 27.12.2018 19:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Firma](
	[FirmaId] [int] IDENTITY(1,1) NOT NULL,
	[FirmaAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Firma] PRIMARY KEY CLUSTERED 
(
	[FirmaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_HazirPcParcalari]    Script Date: 27.12.2018 19:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HazirPcParcalari](
	[HazirPcParcalariId] [int] IDENTITY(1,1) NOT NULL,
	[ParcaAdi] [nvarchar](50) NULL,
	[UrunID] [int] NULL,
	[KategoriID] [int] NULL,
	[BarkotNo] [int] NULL,
 CONSTRAINT [PK_Tbl_HazirPcParcalari] PRIMARY KEY CLUSTERED 
(
	[HazirPcParcalariId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Kategori]    Script Date: 27.12.2018 19:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kategori](
	[KategoriId] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Kullanici]    Script Date: 27.12.2018 19:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kullanici](
	[KullaniciId] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[RolID] [int] NULL,
	[BolumID] [int] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Kulla] PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Rol]    Script Date: 27.12.2018 19:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Rol](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Rol] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Stok]    Script Date: 27.12.2018 19:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Stok](
	[StokId] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
 CONSTRAINT [PK_Tbl_Stok] PRIMARY KEY CLUSTERED 
(
	[StokId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Urun]    Script Date: 27.12.2018 19:40:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Urun](
	[UrunId] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[BarkotNo] [int] NULL,
	[KategoriID] [int] NULL,
	[BirimFiyat] [decimal](18, 2) NULL,
	[ToptanFiyat] [decimal](18, 2) NULL,
	[SatinAlmaTarihi] [datetime] NULL CONSTRAINT [DF_Tbl_Urun_SatinAlmaTarihi]  DEFAULT (getdate()),
	[ZimmetDurumu] [bit] NULL CONSTRAINT [DF_Tbl_Urun_ArizaliMi]  DEFAULT ((0)),
	[FirmaID] [int] NULL,
	[HazirPcMi] [bit] NULL,
	[ParcaEklendiMi] [bit] NULL,
	[Adet] [int] NULL,
 CONSTRAINT [PK_Tbl_SatinAlma] PRIMARY KEY CLUSTERED 
(
	[UrunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Zimmet]    Script Date: 27.12.2018 19:40:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Zimmet](
	[ZimmetId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[UrunID] [int] NULL,
	[ArizaDurmu] [bit] NULL,
	[HazirPcParcalariID] [int] NULL,
 CONSTRAINT [PK_Tbl_Zimmet] PRIMARY KEY CLUSTERED 
(
	[ZimmetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Tbl_Bolum] ON 

INSERT [dbo].[Tbl_Bolum] ([BolumId], [BolumAdi]) VALUES (1, N'Bilgi islem')
INSERT [dbo].[Tbl_Bolum] ([BolumId], [BolumAdi]) VALUES (2, N'Muhasebe')
INSERT [dbo].[Tbl_Bolum] ([BolumId], [BolumAdi]) VALUES (3, N'Pazarlama')
SET IDENTITY_INSERT [dbo].[Tbl_Bolum] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Firma] ON 

INSERT [dbo].[Tbl_Firma] ([FirmaId], [FirmaAdi]) VALUES (1, N'A firması')
INSERT [dbo].[Tbl_Firma] ([FirmaId], [FirmaAdi]) VALUES (2, N'B firması')
INSERT [dbo].[Tbl_Firma] ([FirmaId], [FirmaAdi]) VALUES (3, N'C firması')
SET IDENTITY_INSERT [dbo].[Tbl_Firma] OFF
SET IDENTITY_INSERT [dbo].[Tbl_HazirPcParcalari] ON 

INSERT [dbo].[Tbl_HazirPcParcalari] ([HazirPcParcalariId], [ParcaAdi], [UrunID], [KategoriID], [BarkotNo]) VALUES (16, N'asus ram', 7, 2, 55555)
INSERT [dbo].[Tbl_HazirPcParcalari] ([HazirPcParcalariId], [ParcaAdi], [UrunID], [KategoriID], [BarkotNo]) VALUES (17, N'asus harddisk', 7, 3, 55555)
INSERT [dbo].[Tbl_HazirPcParcalari] ([HazirPcParcalariId], [ParcaAdi], [UrunID], [KategoriID], [BarkotNo]) VALUES (18, N'asus ekran kartı', 7, 4, 55555)
INSERT [dbo].[Tbl_HazirPcParcalari] ([HazirPcParcalariId], [ParcaAdi], [UrunID], [KategoriID], [BarkotNo]) VALUES (19, N'asus anakart', 7, 5, 55555)
INSERT [dbo].[Tbl_HazirPcParcalari] ([HazirPcParcalariId], [ParcaAdi], [UrunID], [KategoriID], [BarkotNo]) VALUES (20, N'acer ram', 9, 2, 66666)
INSERT [dbo].[Tbl_HazirPcParcalari] ([HazirPcParcalariId], [ParcaAdi], [UrunID], [KategoriID], [BarkotNo]) VALUES (21, N'acer harddisk', 9, 3, 66666)
INSERT [dbo].[Tbl_HazirPcParcalari] ([HazirPcParcalariId], [ParcaAdi], [UrunID], [KategoriID], [BarkotNo]) VALUES (22, N'acer ekran kartı', 9, 4, 66666)
INSERT [dbo].[Tbl_HazirPcParcalari] ([HazirPcParcalariId], [ParcaAdi], [UrunID], [KategoriID], [BarkotNo]) VALUES (23, N'acer anakart', 9, 5, 66666)
SET IDENTITY_INSERT [dbo].[Tbl_HazirPcParcalari] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Kategori] ON 

INSERT [dbo].[Tbl_Kategori] ([KategoriId], [Adi]) VALUES (1, N'Hazır Pc')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [Adi]) VALUES (2, N'Ram')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [Adi]) VALUES (3, N'Hard Disk')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [Adi]) VALUES (4, N'Ekran Kartı')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [Adi]) VALUES (5, N'Ana Kart')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [Adi]) VALUES (6, N'Fare')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [Adi]) VALUES (7, N'Klavye')
INSERT [dbo].[Tbl_Kategori] ([KategoriId], [Adi]) VALUES (8, N'Kulaklık')
SET IDENTITY_INSERT [dbo].[Tbl_Kategori] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Kullanici] ON 

INSERT [dbo].[Tbl_Kullanici] ([KullaniciId], [Adi], [Soyadi], [KullaniciAdi], [Sifre], [RolID], [BolumID], [Durum]) VALUES (2, N'faruk', N'seyhan', N'faruksyhn', N'12345', 1, 1, NULL)
INSERT [dbo].[Tbl_Kullanici] ([KullaniciId], [Adi], [Soyadi], [KullaniciAdi], [Sifre], [RolID], [BolumID], [Durum]) VALUES (3, N'Emre', N'Bocek', N'Emrebocek', N'12345', 2, 3, NULL)
INSERT [dbo].[Tbl_Kullanici] ([KullaniciId], [Adi], [Soyadi], [KullaniciAdi], [Sifre], [RolID], [BolumID], [Durum]) VALUES (4, N'Furkan', N'kan', N'furknkn', N'12345', 3, 3, NULL)
INSERT [dbo].[Tbl_Kullanici] ([KullaniciId], [Adi], [Soyadi], [KullaniciAdi], [Sifre], [RolID], [BolumID], [Durum]) VALUES (5, N'Umut', N'Ağırtaş', N'UmutAgırtas', N'12345', 4, 3, NULL)
INSERT [dbo].[Tbl_Kullanici] ([KullaniciId], [Adi], [Soyadi], [KullaniciAdi], [Sifre], [RolID], [BolumID], [Durum]) VALUES (6, N'Bilal', N'Aksal', N'Bilalaksal', N'12345', 4, 2, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kullanici] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Rol] ON 

INSERT [dbo].[Tbl_Rol] ([RolId], [RolAdi]) VALUES (1, N'Admin')
INSERT [dbo].[Tbl_Rol] ([RolId], [RolAdi]) VALUES (2, N'SatisYetkilisi')
INSERT [dbo].[Tbl_Rol] ([RolId], [RolAdi]) VALUES (3, N'BolumYetkilisi')
INSERT [dbo].[Tbl_Rol] ([RolId], [RolAdi]) VALUES (4, N'Personel')
SET IDENTITY_INSERT [dbo].[Tbl_Rol] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Urun] ON 

INSERT [dbo].[Tbl_Urun] ([UrunId], [Adi], [BarkotNo], [KategoriID], [BirimFiyat], [ToptanFiyat], [SatinAlmaTarihi], [ZimmetDurumu], [FirmaID], [HazirPcMi], [ParcaEklendiMi], [Adet]) VALUES (2, N'Logitect', 22222, 6, CAST(50.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(N'2018-12-19 14:11:27.380' AS DateTime), 0, 1, 0, NULL, 2)
INSERT [dbo].[Tbl_Urun] ([UrunId], [Adi], [BarkotNo], [KategoriID], [BirimFiyat], [ToptanFiyat], [SatinAlmaTarihi], [ZimmetDurumu], [FirmaID], [HazirPcMi], [ParcaEklendiMi], [Adet]) VALUES (7, N'asus', 55555, 1, CAST(1200.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), CAST(N'2018-12-22 15:14:37.807' AS DateTime), 1, 1, 1, 1, 0)
INSERT [dbo].[Tbl_Urun] ([UrunId], [Adi], [BarkotNo], [KategoriID], [BirimFiyat], [ToptanFiyat], [SatinAlmaTarihi], [ZimmetDurumu], [FirmaID], [HazirPcMi], [ParcaEklendiMi], [Adet]) VALUES (9, N'Acer', 66666, 1, CAST(1500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), CAST(N'2018-12-22 16:54:58.470' AS DateTime), 1, 1, 1, 1, 0)
INSERT [dbo].[Tbl_Urun] ([UrunId], [Adi], [BarkotNo], [KategoriID], [BirimFiyat], [ToptanFiyat], [SatinAlmaTarihi], [ZimmetDurumu], [FirmaID], [HazirPcMi], [ParcaEklendiMi], [Adet]) VALUES (10, N'ACL', 96312, 8, CAST(10.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(N'2018-12-27 12:11:33.513' AS DateTime), 1, 2, 0, NULL, 0)
INSERT [dbo].[Tbl_Urun] ([UrunId], [Adi], [BarkotNo], [KategoriID], [BirimFiyat], [ToptanFiyat], [SatinAlmaTarihi], [ZimmetDurumu], [FirmaID], [HazirPcMi], [ParcaEklendiMi], [Adet]) VALUES (11, N'dsa', 2321, 4, CAST(0.65 AS Decimal(18, 2)), CAST(20.35 AS Decimal(18, 2)), CAST(N'2018-12-27 13:05:46.737' AS DateTime), 0, 2, 0, NULL, 31)
INSERT [dbo].[Tbl_Urun] ([UrunId], [Adi], [BarkotNo], [KategoriID], [BirimFiyat], [ToptanFiyat], [SatinAlmaTarihi], [ZimmetDurumu], [FirmaID], [HazirPcMi], [ParcaEklendiMi], [Adet]) VALUES (13, N'DDR4', 123, 2, CAST(1.00 AS Decimal(18, 2)), CAST(98.00 AS Decimal(18, 2)), CAST(N'2018-12-27 14:23:45.840' AS DateTime), 0, 1, 0, NULL, 98)
SET IDENTITY_INSERT [dbo].[Tbl_Urun] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Zimmet] ON 

INSERT [dbo].[Tbl_Zimmet] ([ZimmetId], [KullaniciID], [UrunID], [ArizaDurmu], [HazirPcParcalariID]) VALUES (1, 2, 2, 0, NULL)
INSERT [dbo].[Tbl_Zimmet] ([ZimmetId], [KullaniciID], [UrunID], [ArizaDurmu], [HazirPcParcalariID]) VALUES (2, 2, 2, 1, NULL)
INSERT [dbo].[Tbl_Zimmet] ([ZimmetId], [KullaniciID], [UrunID], [ArizaDurmu], [HazirPcParcalariID]) VALUES (3, 2, 7, 1, 16)
INSERT [dbo].[Tbl_Zimmet] ([ZimmetId], [KullaniciID], [UrunID], [ArizaDurmu], [HazirPcParcalariID]) VALUES (4, 2, 7, 1, 17)
INSERT [dbo].[Tbl_Zimmet] ([ZimmetId], [KullaniciID], [UrunID], [ArizaDurmu], [HazirPcParcalariID]) VALUES (5, 2, 7, 1, 18)
INSERT [dbo].[Tbl_Zimmet] ([ZimmetId], [KullaniciID], [UrunID], [ArizaDurmu], [HazirPcParcalariID]) VALUES (6, 2, 7, 1, 19)
INSERT [dbo].[Tbl_Zimmet] ([ZimmetId], [KullaniciID], [UrunID], [ArizaDurmu], [HazirPcParcalariID]) VALUES (14, 2, 2, 0, NULL)
INSERT [dbo].[Tbl_Zimmet] ([ZimmetId], [KullaniciID], [UrunID], [ArizaDurmu], [HazirPcParcalariID]) VALUES (16, 4, 13, 0, NULL)
INSERT [dbo].[Tbl_Zimmet] ([ZimmetId], [KullaniciID], [UrunID], [ArizaDurmu], [HazirPcParcalariID]) VALUES (17, 4, 13, 1, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Zimmet] OFF
ALTER TABLE [dbo].[Tbl_HazirPcParcalari]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HazirPcParcalari_Tbl_Kategori] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Tbl_Kategori] ([KategoriId])
GO
ALTER TABLE [dbo].[Tbl_HazirPcParcalari] CHECK CONSTRAINT [FK_Tbl_HazirPcParcalari_Tbl_Kategori]
GO
ALTER TABLE [dbo].[Tbl_HazirPcParcalari]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HazirPcParcalari_Tbl_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Tbl_Urun] ([UrunId])
GO
ALTER TABLE [dbo].[Tbl_HazirPcParcalari] CHECK CONSTRAINT [FK_Tbl_HazirPcParcalari_Tbl_Urun]
GO
ALTER TABLE [dbo].[Tbl_Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Kulla_Tbl_Bolum] FOREIGN KEY([BolumID])
REFERENCES [dbo].[Tbl_Bolum] ([BolumId])
GO
ALTER TABLE [dbo].[Tbl_Kullanici] CHECK CONSTRAINT [FK_Tbl_Kulla_Tbl_Bolum]
GO
ALTER TABLE [dbo].[Tbl_Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Kullanici_Tbl_Rol] FOREIGN KEY([RolID])
REFERENCES [dbo].[Tbl_Rol] ([RolId])
GO
ALTER TABLE [dbo].[Tbl_Kullanici] CHECK CONSTRAINT [FK_Tbl_Kullanici_Tbl_Rol]
GO
ALTER TABLE [dbo].[Tbl_Stok]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Stok_Tbl_SatınAlma] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Tbl_Urun] ([UrunId])
GO
ALTER TABLE [dbo].[Tbl_Stok] CHECK CONSTRAINT [FK_Tbl_Stok_Tbl_SatınAlma]
GO
ALTER TABLE [dbo].[Tbl_Urun]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_SatınAlma_Tbl_Firma] FOREIGN KEY([FirmaID])
REFERENCES [dbo].[Tbl_Firma] ([FirmaId])
GO
ALTER TABLE [dbo].[Tbl_Urun] CHECK CONSTRAINT [FK_Tbl_SatınAlma_Tbl_Firma]
GO
ALTER TABLE [dbo].[Tbl_Urun]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_SatınAlma_Tbl_Kategori] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Tbl_Kategori] ([KategoriId])
GO
ALTER TABLE [dbo].[Tbl_Urun] CHECK CONSTRAINT [FK_Tbl_SatınAlma_Tbl_Kategori]
GO
ALTER TABLE [dbo].[Tbl_Zimmet]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Zimmet_Tbl_HazirPcParcalari] FOREIGN KEY([HazirPcParcalariID])
REFERENCES [dbo].[Tbl_HazirPcParcalari] ([HazirPcParcalariId])
GO
ALTER TABLE [dbo].[Tbl_Zimmet] CHECK CONSTRAINT [FK_Tbl_Zimmet_Tbl_HazirPcParcalari]
GO
ALTER TABLE [dbo].[Tbl_Zimmet]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Zimmet_Tbl_Kulla] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Tbl_Kullanici] ([KullaniciId])
GO
ALTER TABLE [dbo].[Tbl_Zimmet] CHECK CONSTRAINT [FK_Tbl_Zimmet_Tbl_Kulla]
GO
ALTER TABLE [dbo].[Tbl_Zimmet]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Zimmet_Tbl_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Tbl_Urun] ([UrunId])
GO
ALTER TABLE [dbo].[Tbl_Zimmet] CHECK CONSTRAINT [FK_Tbl_Zimmet_Tbl_Urun]
GO
