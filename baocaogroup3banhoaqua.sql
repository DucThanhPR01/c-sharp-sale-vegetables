USE [QLBanHoaQua]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Categorys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Flag] [int] NOT NULL,
	[Reply] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Links]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[TableId] [int] NULL,
 CONSTRAINT [PK_dbo.Links] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menus]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[TableId] [int] NULL,
	[ParentId] [int] NULL,
	[Position] [nvarchar](max) NULL,
	[Orders] [int] NOT NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CustemerId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ExportDate] [datetime] NULL,
	[DeliveryAddress] [nvarchar](max) NULL,
	[DeliveryName] [nvarchar](max) NULL,
	[DeliveryPhone] [nvarchar](max) NULL,
	[DeliveryEmail] [nvarchar](max) NULL,
	[Updated_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Status] [int] NULL,
	[Trash] [int] NULL,
	[DeliveryPaymentMethod] [nvarchar](max) NULL,
	[StatusPayment] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topid] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Created_At] [datetime] NOT NULL,
	[Created_By] [int] NULL,
	[Updated_At] [datetime] NOT NULL,
	[Updated_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductRate]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Rate] [float] NOT NULL CONSTRAINT [DF_ProductRate_Rate]  DEFAULT ((0)),
	[Comment] [nvarchar](max) NOT NULL,
	[UName] [nvarchar](50) NULL,
	[CreateAt] [datetime] NULL,
 CONSTRAINT [PK_ProductRate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[CateID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[NewPromotion] [nvarchar](max) NULL,
	[Installment] [int] NOT NULL,
	[Discount] [int] NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProPrice] [float] NOT NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
	[ProRate] [float] NULL DEFAULT ((0)),
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Orders] [int] NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Topics]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Topics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/07/2021 8:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Phone] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Access] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Trái cây nhập khẩu', N'trai-cay-nhap-khau', 0, NULL, N'traicaynhapkhau', N'traicaynhapkhau', CAST(N'2021-07-09 14:48:37.377' AS DateTime), 30, CAST(N'2021-07-09 14:48:37.377' AS DateTime), 30, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (27, N'Trái cây xuất khẩu', N'trai-cay-xuat-khau', 0, NULL, N'traicayxuatkhau', N'Trái cây xuất khẩu', CAST(N'2021-07-09 14:49:35.327' AS DateTime), 30, CAST(N'2021-07-09 14:49:35.327' AS DateTime), 30, 1)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (1, N'nguyen duy duc', N'covid19@gmail.com', 983487921, N'San pham ni loi', N'san pham bi loi yeu cau doi hang', 1, N'chungs tooi sex lienen heej toi ban', CAST(N'2021-05-08 21:26:53.000' AS DateTime), CAST(N'2021-05-28 06:51:41.033' AS DateTime), 20, 1)
INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (6, N'Nguyễn Duy Đức', N'ducvyathanh@gmail.com', 392905996, N'Giao hàng nhanh quá', N'Cảm ơn các bạn!!! Thái độ tuyệt vời, giao hàng siêu nhanh', 1, N'Shop gửi lời cảm ơn đến bạn vì những đóng góp dành cho shop
', CAST(N'2021-07-10 00:04:10.000' AS DateTime), CAST(N'2021-07-10 00:29:43.763' AS DateTime), 30, 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET IDENTITY_INSERT [dbo].[Links] ON 

INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (3, N'Trái cây nhập khẩu', N'trai-cay-nhap-khau', N'category', 2)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (27, N'Thông tin web', N'thong-tin-web', N'topic', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (32, N'Tin tức', N'tin-tuc', N'topic', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (37, N'Trái cây xuất khẩu', N'trai-cay-xuat-khau', N'category', 27)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (41, N'Giới thiệu', N'gioi-thieu', N'topic', 8)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (42, N'Giới thiệu', N'gioi-thieu', N'topic', 9)
SET IDENTITY_INSERT [dbo].[Links] OFF
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Liên hệ', N'lien-he', N'page', NULL, 0, N'mainmenu', 1, CAST(N'2021-02-14 09:56:13.000' AS DateTime), NULL, CAST(N'2021-02-18 17:38:08.937' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Tin tức', N'tin-tuc', N'custom', NULL, 0, N'mainmenu', 1, CAST(N'2021-02-15 09:23:14.240' AS DateTime), NULL, CAST(N'2021-02-15 09:23:16.033' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Giới thiệu', N'gioi-thieu', N'page', NULL, 0, N'mainmenu', 1, CAST(N'2021-02-15 09:32:52.000' AS DateTime), NULL, CAST(N'2021-07-09 17:06:27.213' AS DateTime), 30, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (7, N'Thông tin web', N'thong-tin-web', N'topic', 5, 0, N'mainmenu', 1, CAST(N'2021-07-09 17:11:55.913' AS DateTime), NULL, CAST(N'2021-07-09 17:12:04.530' AS DateTime), 30, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (9, N'Giới thiệu', N'gioi-thieu', N'page', 27, 0, N'mainmenu', 1, CAST(N'2021-07-09 22:59:44.000' AS DateTime), NULL, CAST(N'2021-07-09 23:18:08.060' AS DateTime), 30, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (10, N'Giới thiệu', N'gioi-thieu', N'topic', 8, 0, N'mainmenu', 1, CAST(N'2021-07-09 23:23:47.093' AS DateTime), NULL, CAST(N'2021-07-09 23:29:37.673' AS DateTime), 30, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (11, N'Giới Thiệu', N'gioi-thieu', N'custom', NULL, 0, N'mainmenu', 1, CAST(N'2021-07-09 23:53:42.520' AS DateTime), NULL, CAST(N'2021-07-09 23:54:00.487' AS DateTime), 30, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (12, N'Giới Thiệu', N'gioi-thieu', N'custom', NULL, 0, N'mainmenu', 1, CAST(N'2021-07-09 23:54:27.310' AS DateTime), NULL, CAST(N'2021-07-10 00:00:10.173' AS DateTime), 30, 0)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (13, N'Giới thiệu', N'gioi-thieu', N'topic', 9, 0, N'mainmenu', 1, CAST(N'2021-07-10 00:00:22.863' AS DateTime), NULL, CAST(N'2021-07-10 00:00:26.990' AS DateTime), 30, 1)
SET IDENTITY_INSERT [dbo].[Menus] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (23, 16, 61, 28500, 4, 114000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (24, 17, 62, 14500, 1, 14500)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (25, 18, 61, 28500, 4, 114000)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (14, N'20210709010718', 30, CAST(N'2021-07-09 13:53:18.503' AS DateTime), NULL, N'Ha Noi', N'Nguyen Duy Duc', N'0392905996', N'ducvyathanh@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (15, N'20210709010712', 30, CAST(N'2021-07-09 13:54:12.790' AS DateTime), NULL, N'Ha Noi', N'Nguyen Duy Duc', N'0392905996', N'ducvyathanh@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (16, N'20210709030738', 30, CAST(N'2021-07-09 15:24:38.423' AS DateTime), CAST(N'2021-07-10 00:30:01.850' AS DateTime), N'Ha Noi', N'Nguyen Duy Duc', N'0392905996', N'ducvyathanh@gmail.com', 30, CAST(N'2021-07-10 00:30:01.850' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (17, N'20210709040706', 30, CAST(N'2021-07-09 16:35:06.040' AS DateTime), CAST(N'2021-07-09 23:51:41.120' AS DateTime), N'Ha Noi', N'Nguyen Duy Duc', N'0392905996', N'ducvyathanh@gmail.com', 30, CAST(N'2021-07-09 23:51:41.120' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (18, N'20210709110718', 32, CAST(N'2021-07-09 23:51:18.613' AS DateTime), CAST(N'2021-07-09 23:51:36.977' AS DateTime), N'ha nam', N'bui trung duc', N'0399999999', N'trungduc@gmail.com', 30, CAST(N'2021-07-09 23:51:36.977' AS DateTime), 3, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (12, 6, N'Vải thiều năm nay rất thành công', N'vai-thieu-nam-nay-rat-thanh-cong', N'<p>Nhờ kịch bản chi tiết n&ecirc;n d&ugrave; gặp kh&oacute; khăn do dịch Covid-19 sản lượng ti&ecirc;u thụ vải vẫn đột ph&aacute;, theo &ocirc;ng Nguyễn Quốc Toản, Cục trưởng Cục chế biến v&agrave; Ph&aacute;t triển thị trường n&ocirc;ng sản.</p>
', N'vai-thieu-nam-nay-rat-thanh-cong.jpg', N'post', N'vaithieu', N'vaithieu', CAST(N'2021-07-09 15:47:55.110' AS DateTime), 30, CAST(N'2021-07-09 15:47:55.110' AS DateTime), 30, 1)
INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (13, 6, N'Nông dân tự xây dựng thương hiệu nông sản trên chợ online', N'nong-dan-tu-xay-dung-thuong-hieu-nong-san-tren-cho-online', N'<p>Tham gia &quot;Phi&ecirc;n chợ n&ocirc;ng sản&quot; Sendo, n&ocirc;ng d&acirc;n sẽ trực tiếp giới thiệu tới người d&ugrave;ng sản phẩm của m&igrave;nh m&agrave; kh&ocirc;ng qua thương l&aacute;i, si&ecirc;u thị ph&acirc;n phối.</p>

<p>Từ ng&agrave;y 21/6 đến 26/6, n&ocirc;ng d&acirc;n Bắc Giang, Hải Dương, Vĩnh Long, Đắk Lắk v&agrave; Sơn La sẽ đồng loạt đưa n&ocirc;ng sản đặc sản địa phương l&ecirc;n b&aacute;n tr&ecirc;n s&agrave;n thương mại điện tử Sendo qua &quot;Phi&ecirc;n chợ n&ocirc;ng sản&quot;.</p>

<p>Theo đ&oacute;, dưới sự hướng dẫn của c&aacute;c nh&acirc;n vi&ecirc;n Sendo, n&ocirc;ng d&acirc;n sẽ tự x&acirc;y dựng sản phẩm mang thương hiệu c&aacute; nh&acirc;n, tự giới thiệu tới kh&aacute;ch h&agrave;ng tr&ecirc;n ứng dụng di động v&agrave; Fanpage của Sendo. Từng bao b&igrave; sản phẩm khi đến tay người mua h&agrave;ng tại c&aacute;c tỉnh th&agrave;nh sẽ được đ&oacute;ng dấu thương hiệu v&agrave; h&igrave;nh ảnh của ch&iacute;nh người b&aacute;n.</p>

<p>Đ&acirc;y l&agrave; dịp để người ti&ecirc;u d&ugrave;ng khắp cả nước c&oacute; thể mua n&ocirc;ng sản tận gốc như vải thiều Lục Ngạn, vải Hải Dương, bơ Đắk Lắk, mận hậu Sơn La, khoai t&iacute;m Vĩnh Long.</p>

<p><img alt="Anh Trần Văn Tiến, xã Tân Thành, tỉnh Vĩnh Long - một trong những nông dân tham gia chương trình Phiên chợ nông sản. Sendo đang có 7.000 mã giảm giá đến 50.000 đồng một đơn hàng khi thanh toán bqua Zalopay. Ảnh: Sendo" src="https://i1-kinhdoanh.vnecdn.net/2021/06/21/Image-112596376-ExtractWord-0-7119-5570-1624243947.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=CrZmjzDzRA6QZdVD4Sg-_g" /></p>

<p>Anh Trần Văn Tiến, x&atilde; T&acirc;n Th&agrave;nh, tỉnh Vĩnh Long - một trong những n&ocirc;ng d&acirc;n tham gia chương tr&igrave;nh &quot;Phi&ecirc;n chợ n&ocirc;ng sản&quot;. Sendo đang c&oacute; 7.000 m&atilde; giảm gi&aacute; đến 50.000 đồng một đơn h&agrave;ng khi thanh to&aacute;n qua Zalopay. Ảnh:&nbsp;<em>Sendo</em></p>

<p>Với phương ch&acirc;m &quot;Từ vườn đến b&agrave;n ăn&quot;, n&ocirc;ng sản sau khi được kh&aacute;ch h&agrave;ng chốt đơn tr&ecirc;n s&agrave;n, sẽ được n&ocirc;ng d&acirc;n thu hoạch từ v&ugrave;ng trồng, đ&oacute;ng g&oacute;i theo đ&uacute;ng quy c&aacute;ch v&agrave; được Tổng C&ocirc;ng ty Bưu Điện Việt Nam VNPost vận chuyển đến tay người mua.</p>

<p>&quot;Nhờ kh&ocirc;ng phải qua c&aacute;c kh&acirc;u trung gian n&ecirc;n sản phẩm vừa c&oacute; gi&aacute; hấp dẫn vừa đảm bảo độ tươi ngon&quot;, đại diện Sendo cho biết.</p>

<p>Theo đại diện s&agrave;n thương mại điện tử Sendo, hoạt động n&agrave;y tạo cơ hội để b&agrave; con chủ động b&aacute;n n&ocirc;ng sản l&acirc;u d&agrave;i qua k&ecirc;nh trực tuyến. Đ&acirc;y l&agrave; c&aacute;ch l&agrave;m thương hiệu đa k&ecirc;nh độc đ&aacute;o lần đầu được &aacute;p dụng v&agrave;o n&ocirc;ng nghiệp số.</p>

<p>&quot;Thương hiệu c&aacute; nh&acirc;n đang l&agrave; k&ecirc;nh b&aacute;n h&agrave;ng trực tuyến c&oacute; hiệu quả cao. Việc tạo điều kiện để người b&aacute;n tự đứng ra l&agrave;m đại diện cho ch&iacute;nh sản phẩm m&igrave;nh trồng được vừa gi&uacute;p b&agrave; con b&aacute;n nhiều h&agrave;ng hơn, vừa tạo cơ hội kết nối với người mua, từ đ&oacute; kinh doanh l&acirc;u d&agrave;i tr&ecirc;n Sendo&quot;, &ocirc;ng Nguyễn Đắc Việt Dũng, Chủ tịch s&agrave;n thương mại điện tử Sendo giải th&iacute;ch th&ecirc;m.</p>

<p><img alt="Nông dân Bắc Giang tập livestream bán hàng trên Sendo trong chương trình đầu tháng 6. Ảnh: Sendo" src="https://i1-kinhdoanh.vnecdn.net/2021/06/21/Image-494398930-ExtractWord-1-7242-9938-1624243948.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=PywM5sBLGVEe3Xz4vyjtrA" /></p>

<p>N&ocirc;ng d&acirc;n Bắc Giang tập livestream b&aacute;n h&agrave;ng tr&ecirc;n Sendo trong chương tr&igrave;nh đầu th&aacute;ng 6. Ảnh:&nbsp;<em>Sendo</em></p>

<p>&quot;<a href="https://www.sendo.vn/su-kien/nong-san-sach" target="_blank">Phi&ecirc;n chợ n&ocirc;ng sản</a>&quot; l&agrave; chương tr&igrave;nh tiếp nối sự kiện &quot;Chung tay hỗ trợ vải thiều Lục Ngạn, Bắc Giang&quot; diễn ra tr&ecirc;n Sendo hồi đầu th&aacute;ng 6. Th&ocirc;ng qua h&igrave;nh thức livestream, chương tr&igrave;nh gi&uacute;p n&ocirc;ng d&acirc;n Bắc Giang ti&ecirc;u thụ hơn 130 tấn vải thiều.</p>

<p>Nguồn:&nbsp;vnexpress.net</p>
', N'nong-dan-tu-xay-dung-thuong-hieu-nong-san-tren-cho-online.png', N'post', N'thuonghieunongsan', N'thuonghieunongsan', CAST(N'2021-07-09 15:50:11.910' AS DateTime), 30, CAST(N'2021-07-09 15:50:11.910' AS DateTime), 30, 1)
INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (14, 5, N'Vải thiều Việt giá nửa triệu một kg khi lần đầu sang Hà Lan', N'vai-thieu-viet-gia-nua-trieu-mot-kg-khi-lan-dau-sang-ha-lan', N'<p>Sau Ph&aacute;p, lần đầu vải thiều Việt được nhập khẩu ch&iacute;nh ngạch sang H&agrave; Lan với tem truy xuất nguồn gốc, b&aacute;n 18 euro (hơn 500.000 đồng) một kg.</p>

<p>L&ocirc; vải thiều Thanh H&agrave; (Hải Dương) thuộc l&ocirc; h&agrave;ng một tấn vải hạ c&aacute;nh s&acirc;n bay Schipol, H&agrave; Lan ng&agrave;y 17/6 để ph&acirc;n phối cho c&aacute;c si&ecirc;u thị &Aacute; Ch&acirc;u tại H&agrave; Lan, Ph&aacute;p, Đức. Hai ng&agrave;y trước đ&oacute;, sản phẩm mẫu đ&atilde; được gửi tới c&aacute;c si&ecirc;u thị &Aacute; Ch&acirc;u tại H&agrave; Lan v&agrave; nhận được phản hồi t&iacute;ch cực từ chủ c&aacute;c si&ecirc;u thị.</p>

<p>Si&ecirc;u thị Thanh H&ugrave;ng của chị V&acirc;n Anh (th&agrave;nh phố Spijkenisse, Nam H&agrave; Lan) đ&atilde; b&aacute;n vải Trung Quốc từ nhiều năm nay. Với chất lượng kh&ocirc;ng bằng vải Việt Nam v&agrave; c&oacute; mức gi&aacute; khoảng 22-25 euro một kg nhưng mặt h&agrave;ng n&agrave;y vẫn c&oacute; người mua. Do đ&oacute;, theo chị V&acirc;n Anh, quả vải tươi Việt Nam được giới thiệu lần n&agrave;y với gi&aacute; 18 euro một kg chắc chắn sẽ &quot;h&uacute;t&quot; kh&aacute;ch h&agrave;ng.</p>

<p>B&agrave; chủ si&ecirc;u thị n&agrave;y mong muốn c&oacute; nguồn h&agrave;ng ổn định, chất lượng đồng đều mỗi vụ vải h&agrave;ng năm để duy tr&igrave; kinh doanh mặt h&agrave;ng n&agrave;y tại H&agrave; Lan.</p>

<p>Ngo&agrave;i k&ecirc;nh b&aacute;n truyền thống tại si&ecirc;u thị, c&aacute;c trang web b&aacute;n h&agrave;ng online của H&agrave; Lan v&agrave; Ph&aacute;p cũng đ&atilde; nhanh ch&oacute;ng nhận c&aacute;c đơn đặt mua vải thiều Việt Nam do LTP nhập khẩu v&agrave; ph&acirc;n phối.</p>

<p><img alt="Vải thiều Việt Nam được bày bán và giới thiệu tới người tiêu dùng Hà Lan. Ảnh: Thương vụ Việt Nam tại Hà Lan" src="https://i1-kinhdoanh.vnecdn.net/2021/06/20/vai-thieu-o-Ha-Lan2-jpeg-6952-1624160726.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=8yqVhntpJJerlxk62NQgvQ" /></p>

<p>&nbsp;</p>

<p>Vải thiều Việt Nam được b&agrave;y b&aacute;n v&agrave; giới thiệu ở H&agrave; Lan.&nbsp;<em>Ảnh: Thương vụ Việt Nam tại H&agrave; Lan.</em></p>

<p>Trước phản hồi t&iacute;ch cực từ người ti&ecirc;u d&ugrave;ng H&agrave; Lan, những l&ocirc; h&agrave;ng tiếp theo sẽ được doanh nghiệp xuất khẩu sang H&agrave; Lan v&agrave; c&aacute;c nước l&acirc;n cận thuộc EU trong 1-2 tuần tới bằng đường h&agrave;ng kh&ocirc;ng.</p>

<p>B&agrave; V&otilde; Thị Ngọc Diệp - Tham t&aacute;n thương mại Việt Nam tại H&agrave; Lan cho biết, việc đưa quả vải thiều Việt Nam sang H&agrave; Lan gặp kh&ocirc;ng &iacute;t kh&oacute; khăn, đ&ograve;i hỏi nỗ lực lớn từ c&aacute;c doanh nghiệp xuất khẩu lẫn nhập khẩu. Tại H&agrave; Lan, C&ocirc;ng ty LTP đ&atilde; l&ecirc;n kế hoạch từ trước nhưng đến khi thực hiện đơn h&agrave;ng lại gặp nhiều trở ngại như kh&ocirc;ng c&oacute; h&agrave;ng mẫu để ch&agrave;o tới c&aacute;c si&ecirc;u thị, nhận đơn h&agrave;ng sớm từ th&aacute;ng 5 rồi phải hủy v&igrave; h&agrave;ng chưa đ&aacute;p ứng ti&ecirc;u chuẩn nhập khẩu v&agrave;o H&agrave; Lan.</p>

<p>&quot;C&aacute;i kh&oacute; của doanh nghiệp nhập khẩu l&agrave; phải tận dụng cơ hội để sớm giới thiệu quả vải tươi của Việt Nam đến người ti&ecirc;u d&ugrave;ng trước khi vải Trung Quốc ch&iacute;nh vụ vẫn xuất sang thị trường n&agrave;y h&agrave;ng năm&quot;, b&agrave; Diệp chia sẻ.</p>

<p>Điểm cộng cho l&ocirc; h&agrave;ng vải nhập khẩu từ Việt Nam lần n&agrave;y l&agrave; c&oacute; gắn tem truy xuất nguồn gốc do Cục X&uacute;c tiến thương mại, Bộ C&ocirc;ng Thương ph&aacute;t triển l&agrave;m tăng thương hiệu cho quả vải Việt Nam.</p>

<p>Trước H&agrave; Lan, quả vải Việt gắn tem truy xuất nguồn gốc cũng được xuất ch&iacute;nh ngạch sang Ph&aacute;p với gi&aacute; b&aacute;n hơn 500.000 đồng một kg v&agrave; được ti&ecirc;u thụ nhanh ch&oacute;ng.</p>

<p>Năm 2021, Hải Dương c&oacute; 9.000 ha vải thiều, ri&ecirc;ng huyện Thanh H&agrave; c&oacute; tr&ecirc;n 3.300 ha, với tổng sản lượng khoảng 55.000 tấn. Đến nay, tỉnh n&agrave;y c&oacute; 1.000 ha được cấp chứng nhận VietGAP, GlobalGAP v&agrave; 8.000 ha được cấp m&atilde; số v&ugrave;ng trồng xuất khẩu.</p>

<p>Nguồn: vnexpress</p>
', N'vai-thieu-viet-gia-nua-trieu-mot-kg-khi-lan-dau-sang-ha-lan.jpg', N'post', N'vaithieuhalan', N'vaithieuhalan', CAST(N'2021-07-09 15:51:49.170' AS DateTime), 30, CAST(N'2021-07-09 15:51:49.170' AS DateTime), 30, 1)
INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (34, 9, N'Giới Thiệu Công Ty', N'gioi-thieu-cong-ty', N'<p>adfasdfasdfasdf</p>
', N'gioi-thieu-cong-ty.jpg', N'post', N'gioi-thieu', N'gioi-thieu', CAST(N'2021-07-09 23:58:35.000' AS DateTime), 30, CAST(N'2021-07-10 00:00:01.220' AS DateTime), 30, 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
SET IDENTITY_INSERT [dbo].[ProductRate] ON 

INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (27, 62, 30, 5, N'', N'Nguyen Duy Duc', CAST(N'2021-07-10 00:10:11.013' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductRate] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (60, N'Táo Gala Newzealand size 100-125 1kg', N'tao-gala-newzealand-size-100-125-1kg', 2, N'tao-gala-newzealand-size-100-125-1kg.jpeg', N'Táo Gala Newzealand size 100-125 1kg', 2, 1, N'<p>T&igrave;nh trạng sản phẩm</p>

<p>C&ograve;n h&agrave;ng</p>

<p>Vận chuyển</p>

<p>K&iacute;nh gửi: Qu&yacute; kh&aacute;ch h&agrave;ng: Hiện nhu cầu mua sắm tại VinMart đang tăng cao, đơn h&agrave;ng Qu&yacute; kh&aacute;ch đặt online sẽ giao chậm hơn so với dự kiến, mong kh&aacute;ch h&agrave;ng th&ocirc;ng cảm. VinMart lu&ocirc;n cố gắng phục vụ qu&yacute; kh&aacute;ch h&agrave;ng một c&aacute;ch tốt nhất. Li&ecirc;n hệ hỗ trợ : 024 71066866</p>
', N'<p><strong>T&aacute;o Gala Newzealand size 100-125 1kg</strong>&nbsp;được nh&acirc;p khẩu trực tiếp 100% từ New Zealand,&nbsp;l&agrave; giống t&aacute;o c&oacute; vỏ đỏ chấm v&agrave;ng kem, cứng tr&aacute;i, ngọt thanh v&agrave; hương thơm tự nhi&ecirc;n.</p>

<p><strong>T&aacute;o Gala Newzealand size 100-125 1kg</strong>&nbsp;c&oacute; h&agrave;m lượng Axit thấp, l&agrave; một lựa chọn tốt cho trẻ em v&agrave; người gi&agrave; v&igrave; dễ ti&ecirc;u h&oacute;a. Cũng giống như c&aacute;c loại t&aacute;o nữ ho&agrave;ng, xanh mỹ,... chứa nhiều chất pectin, đồng thời c&oacute; nhiều chất xơ h&ograve;a tan l&agrave;m giảm Cholestorol v&agrave; chất chống oxi h&oacute;a đ&acirc;y l&agrave; hai chất rất tốt cho việc ph&ograve;ng ngừa bệnh tim mạch.</p>

<p>Trong&nbsp;<strong>T&aacute;o Gala Newzealand size 100-125 1kg</strong>&nbsp;chứa h&agrave;m lượng chất chống oxy h&oacute;a cao ngăn ngừa c&aacute;c gốc tự do g&acirc;y ra ung thư v&agrave; chống lại qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a tự nhi&ecirc;n. C&ugrave;ng với Vitamin A, C dồi d&agrave;o gi&uacute;p tăng cường hệ miễn dịch trong cơ thể, ph&ograve;ng chống lại c&aacute;c bệnh l&acirc;y nhiễm qua đường h&ocirc; hấp.</p>

<p><strong>Lưu &yacute;:</strong></p>

<p><strong>- Hạn sử dụng thực tế qu&yacute; kh&aacute;ch vui l&ograve;ng xem tr&ecirc;n bao b&igrave;.</strong></p>

<p><strong>- H&igrave;nh sản phẩm chỉ mang t&iacute;nh chất minh họa, h&igrave;nh bao b&igrave; của sản phẩm t&ugrave;y thời điểm sẽ kh&aacute;c so với thực tế.</strong></p>
', N'1', 65000, 10, 65000, N'taogala', N'taogala', 1, CAST(N'2021-07-09 15:11:06.000' AS DateTime), 30, CAST(N'2021-07-09 23:50:07.937' AS DateTime), 30, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (61, N'Dừa xiêm tiện lợi', N'dua-xiem-tien-loi', 27, N'dua-xiem-tien-loi.jpg', N'Dừa xiêm tiện lợi', 1, 1, N'<p>T&igrave;nh trạng sản phẩm</p>

<p>C&ograve;n h&agrave;ng</p>

<p>Vận chuyển</p>

<p>K&iacute;nh gửi: Qu&yacute; kh&aacute;ch h&agrave;ng: Hiện nhu cầu mua sắm tại VinMart đang tăng cao, đơn h&agrave;ng Qu&yacute; kh&aacute;ch đặt online sẽ giao chậm hơn so với dự kiến, mong kh&aacute;ch h&agrave;ng th&ocirc;ng cảm. VinMart lu&ocirc;n cố gắng phục vụ qu&yacute; kh&aacute;ch h&agrave;ng một c&aacute;ch tốt nhất. Li&ecirc;n hệ hỗ trợ : 024 71066866</p>
', N'<p><strong>Dừa xi&ecirc;m tiện lợi</strong>&nbsp;được lựa chọn từ những tr&aacute;i dừa tươi ngon, được kiểm so&aacute;t chất lượng theo ti&ecirc;u chuẩn quốc tế. C&ugrave;ng với c&aacute;c c&ocirc;ng nghệ, m&aacute;y m&oacute;c thiết bị ti&ecirc;n tiến nhất đem tới những tr&aacute;i dừa thơm ngon đặc biệt nhất tới tay người ti&ecirc;u d&ugrave;ng.</p>

<p>Người d&ugrave;ng c&oacute; thể thưởng thức hương vị dừa thơm m&aacute;t, ngọt dịu tự nhi&ecirc;n như vừa được h&aacute;i từ c&acirc;y xuống. Đặc biệt nước dừa gi&agrave;u kaki v&agrave; c&aacute;c kho&aacute;ng chất, gi&uacute;p điều h&ograve;a dịch nội bộ, bổ sung nước cho cơ thể, th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất, điều h&ograve;a tốt lượng đường trong m&aacute;u, l&agrave;m đẹp da, cung cấp nước v&agrave; kho&aacute;ng chất cho cơ thể, c&oacute; lợi cho hệ ti&ecirc;u h&oacute;a, giảm c&acirc;n, sức khỏe tim mạch,....</p>

<p><strong>Lưu &yacute;:</strong></p>

<p><strong>- Hạn sử dụng thực tế qu&yacute; kh&aacute;ch vui l&ograve;ng xem tr&ecirc;n bao b&igrave;.</strong></p>

<p><strong>- H&igrave;nh sản phẩm chỉ mang t&iacute;nh chất minh họa, h&igrave;nh bao b&igrave; của sản phẩm t&ugrave;y thời điểm sẽ kh&aacute;c so với thực tế.</strong></p>

<hr />
<p>TH&Ocirc;NG SỐ</p>

<p>Thương hiệu</p>

<p>Tr&aacute;i c&acirc;y nội địa</p>

<p>Xuất xứ</p>

<p>Việt Nam</p>

<p>Th&agrave;nh phần</p>

<p>Dừa xi&ecirc;m</p>

<p>Hướng dẫn sử dụng</p>

<p>D&ugrave;ng uống trực tiếp</p>

<p>Bảo quản</p>

<p>Dừa n&ecirc;n được bảo quản trong tủ lạnh&nbsp;</p>
', N'2', 32900, 100, 28500, N'duaxiemtienloi', N'duaxiemtienloi', 1, CAST(N'2021-07-09 15:14:13.000' AS DateTime), 30, CAST(N'2021-07-09 23:49:44.487' AS DateTime), 30, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (62, N'Dưa chuột (dưa leo) L1 VinEco 500g', N'dua-chuot-(dua-leo)-l1-vineco-500g', 27, N'dua-chuot-(dua-leo)-l1-vineco-500g.jpg', N'Dưa chuột (dưa leo) L1 VinEco 500g', 2, 1, N'<p>T&igrave;nh trạng sản phẩm</p>

<p>C&ograve;n h&agrave;ng</p>

<p>Vận chuyển</p>

<p>K&iacute;nh gửi: Qu&yacute; kh&aacute;ch h&agrave;ng: Hiện nhu cầu mua sắm tại VinMart đang tăng cao, đơn h&agrave;ng Qu&yacute; kh&aacute;ch đặt online sẽ giao chậm hơn so với dự kiến, mong kh&aacute;ch h&agrave;ng th&ocirc;ng cảm. VinMart lu&ocirc;n cố gắng phục vụ qu&yacute; kh&aacute;ch h&agrave;ng một c&aacute;ch tốt nhất. Li&ecirc;n hệ hỗ trợ : 024 71066866</p>
', N'<h2><strong>Giới thiệu tổng quan về Dưa chuột (dưa leo) L1 Vineco</strong></h2>

<p><strong>Dưa chuột (dưa leo) L1 Vineco&nbsp;</strong>được chế biến v&agrave; sản xuất bởi h&atilde;ng&nbsp;<strong>Vineco</strong>&nbsp;- c&ograve;n c&oacute; t&ecirc;n gọi l&agrave;&nbsp;<strong>C&ocirc;ng ty TNHH Đầu tư Ph&aacute;t triển Sản xuất N&ocirc;ng nghiệp VinEco</strong>&nbsp;- một th&agrave;nh vi&ecirc;n của Tập Đo&agrave;n Vingroup - đ&atilde; ch&iacute;nh thức tham gia v&agrave;o lĩnh vực n&ocirc;ng nghiệp ng&agrave;y 19 th&aacute;ng 3 năm 2015.&nbsp;VinEco l&agrave; đơn vị ti&ecirc;n phong đưa c&ocirc;ng nghệ v&agrave; kĩ thuật n&ocirc;ng nghiệp ti&ecirc;n tiến h&agrave;ng đầu thế giới về Việt Nam. To&agrave;n bộ 14 n&ocirc;ng trường sản xuất theo ti&ecirc;u chuẩn VietGAP v&agrave; đang chuyển dần sang ti&ecirc;u chuẩn Global GAP. Ri&ecirc;ng VinEco Măng đen (Kon Tum) sẽ đi theo hướng sản xuất n&ocirc;ng nghiệp hữu cơ.&nbsp;VinEco được x&atilde; hội ghi nhận v&agrave; ủng hộ, từ ch&iacute;nh phủ, c&aacute;c bộ ng&agrave;nh tới người ti&ecirc;u d&ugrave;ng khi li&ecirc;n tục nhận danh hiệu &ldquo;H&agrave;ng Việt Nam chất lượng cao năm 2017, 2018&rdquo; &ndash; một chứng chỉ chất lượng được ch&iacute;nh người ti&ecirc;u d&ugrave;ng Việt b&igrave;nh chọn v&agrave; đ&aacute;nh gi&aacute;.</p>

<p><img alt="Dưa chuột (dưa leo) DL L1 Vineco_2" src="https://tmp.phongvu.vn/wp-content/uploads/2020/03/D%C6%B0a-chu%E1%BB%99t-d%C6%B0a-leo-DL-L1-Vineco_2-e1584685543246.jpg" /></p>

<p><strong>Dưa chuột (dưa leo) L1 Vineco&nbsp;</strong>l&agrave; thực phẩm d&acirc;n d&atilde;, từ l&acirc;u đ&atilde; được biết tới với nhiều c&ocirc;ng dụng tốt cho sức khỏe. Dưa chuột kh&ocirc;ng chứa calo n&ecirc;n l&agrave; bữa ăn nhẹ rất tốt trong m&ugrave;a h&egrave;. Kh&ocirc;ng chỉ c&oacute; lợi cho l&agrave;n da m&agrave; n&oacute; c&ograve;n l&agrave;m tăng h&agrave;m lượng nước v&agrave; chất xơ trong cơ thể. Hơn thế nữa, l&yacute; do dưa chuột được coi l&agrave; loại thực phẩm m&ugrave;a h&egrave; tuyệt vời v&igrave; n&oacute; c&oacute; t&aacute;c dụng l&agrave;m giảm nhiệt v&agrave; kh&aacute;ng vi&ecirc;m.</p>

<p><strong>Dưa chuột (dưa leo) L1 Vineco</strong>&nbsp;được trồng theo quy tr&igrave;nh đạt ti&ecirc;u chuẩn VietGAP tại c&aacute;c n&ocirc;ng trại lớn v&agrave; được chăm s&oacute;c tỉ mỉ để thu được những sản phẩm chất lượng nhất. Sản phẩm kh&ocirc;ng chứa c&aacute;c h&oacute;a chất, chất k&iacute;ch th&iacute;ch tăng trưởng g&acirc;y hại, đảm bảo an to&agrave;n cho sức khỏe người ti&ecirc;u d&ugrave;ng. Do đ&oacute;, bạn ho&agrave;n to&agrave;n c&oacute; thể an t&acirc;m khi lựa chọn sản phẩm n&agrave;y trong mỗi bữa ăn của gia đ&igrave;nh m&igrave;nh, gi&uacute;p bữa ăn trở n&ecirc;n ngon miệng hơn.</p>

<p><img alt="Dưa chuột (dưa leo) DL L1 Vineco_1" src="https://tmp.phongvu.vn/wp-content/uploads/2020/03/D%C6%B0a-chu%E1%BB%99t-d%C6%B0a-leo-DL-L1-Vineco_1-e1584685551595.jpg" /></p>

<p>Dưa chuột (Dưa leo) l&agrave; một m&oacute;n ăn d&acirc;n d&atilde; n&ecirc;n được ứng dụng rất nhiều trong c&aacute;c m&oacute;n ăn kh&aacute;c nhau do t&iacute;nh thanh đạm, tươi m&aacute;t của quả. Người d&ugrave;ng c&oacute; thể sử dụng dưa chuột để chế biết c&aacute;c m&oacute;n như nộm, salad, hay sử dụng như một phụ gia cho c&aacute;c m&oacute;n thịt.</p>

<p><strong>Lưu &yacute;:</strong></p>

<p><strong>- Hạn sử dụng thực tế qu&yacute; kh&aacute;ch vui l&ograve;ng xem tr&ecirc;n bao b&igrave;.</strong></p>

<p><strong>- H&igrave;nh sản phẩm chỉ mang t&iacute;nh chất minh họa, h&igrave;nh bao b&igrave; của sản phẩm t&ugrave;y thời điểm sẽ kh&aacute;c so với thực tế.</strong></p>
', N'3', 14500, 100, 14000, N'duachuot', N'duachuot', 1, CAST(N'2021-07-09 15:18:40.000' AS DateTime), 30, CAST(N'2021-07-09 23:50:15.977' AS DateTime), 30, 5)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (63, N'Việt quất Mỹ hộp 125g', N'viet-quat-my-hop-125g', 2, N'viet-quat-my-hop-125g.jpg', N'Việt quất Mỹ hộp 125g', 1, 1, N'<p>T&igrave;nh trạng sản phẩm</p>

<p>C&ograve;n h&agrave;ng</p>

<p>Vận chuyển</p>

<p>K&iacute;nh gửi: Qu&yacute; kh&aacute;ch h&agrave;ng: Hiện nhu cầu mua sắm tại VinMart đang tăng cao, đơn h&agrave;ng Qu&yacute; kh&aacute;ch đặt online sẽ giao chậm hơn so với dự kiến, mong kh&aacute;ch h&agrave;ng th&ocirc;ng cảm. VinMart lu&ocirc;n cố gắng phục vụ qu&yacute; kh&aacute;ch h&agrave;ng một c&aacute;ch tốt nhất. Li&ecirc;n hệ hỗ trợ : 024 71066866</p>
', N'<p><strong>Việt quất Mỹ hộp 125g</strong>&nbsp;l&agrave; loại tr&aacute;i c&acirc;y lu&ocirc;n được ưa chuộng trong những m&ugrave;a h&egrave; n&oacute;ng bức do c&oacute; vị ngọt, mọng nước, nhiều chất dinh dưỡng. Kh&ocirc;ng những thế, bạn c&ograve;n c&oacute; thể kết hợp ch&uacute;ng với những thực phẩm kh&aacute;c để chế biến những m&oacute;n ăn bổ dưỡng.</p>

<p>Quả việt quất gi&agrave;u c&aacute;c chất chống oxy h&oacute;a kh&aacute;c nhau, c&ugrave;ng với c&aacute;c vitamin như vitamin C, B2, B6, E v&agrave; K, chất xơ, đồng, mangan, lutein, gallic acide,.. C&oacute; c&ocirc;ng dụng hỗ trợ tăng cường chức năng của n&atilde;o, bộ nhớ v&agrave; chức năng vận động của cơ.</p>

<p>Đồng thời, quả việt quất c&ograve;n l&agrave; một loại thực phẩm ho&agrave;n hảo để sử dụng trong chế độ giảm c&acirc;n do h&agrave;m lượng calo thấp. Chất xơ trong đ&oacute; c&oacute; thể l&agrave;m tăng cảm gi&aacute;c no, khiến bạn cảm thấy no hơn v&agrave; ăn &iacute;t hơn, đồng thời cho bạn năng lượng để thực hiện c&aacute;c hoạt động thể chất nhằm giảm c&acirc;n dễ d&agrave;ng.</p>

<p>Hơn nữa, Loại quả n&agrave;y c&ograve;n c&oacute; nhiều chất chống oxy ho&aacute; v&agrave; chất dinh dưỡng, đem lại&nbsp;khả năng ph&ograve;ng ngừa c&aacute;c bệnh như đục thủy tinh thể, tăng nh&atilde;n &aacute;p, ung thư, lo&eacute;t, tiểu đường, vi&ecirc;m khớp.</p>

<p>Ngo&agrave;i ra, với h&agrave;m lượng chất xơ cao trong quả việt quất l&agrave;m cho ch&uacute;ng trở th&agrave;nh một lựa chọn tuyệt vời để hỗ trợ ti&ecirc;u h&oacute;a khỏe mạnh.</p>

<p><strong>Hướng dẫn sử dụng:</strong></p>

<ul>
	<li>Rửa nhẹ nh&agrave;ng việt quất với nước sạch để loại bỏ phần phấn trắng tr&ecirc;n vỏ.</li>
	<li>Giữ lạnh việt quất gi&uacute;p bảo quản l&acirc;u hơn.</li>
	<li>Bạn n&ecirc;n giữ việt quất trong hộp đựng ban đầu v&agrave; l&agrave;m lạnh c&agrave;ng sớm c&agrave;ng tốt.</li>
	<li>Kh&ocirc;ng rửa trước khi cho v&agrave;o tủ lạnh.</li>
</ul>

<p><strong>Lưu &yacute;:</strong></p>

<p><strong>- Hạn sử dụng thực tế qu&yacute; kh&aacute;ch vui l&ograve;ng xem tr&ecirc;n bao b&igrave;.</strong></p>

<p><strong>- H&igrave;nh sản phẩm chỉ mang t&iacute;nh chất minh họa, h&igrave;nh bao b&igrave; của sản phẩm t&ugrave;y thời điểm sẽ kh&aacute;c so với thực tế.</strong></p>
', N'4', 89000, 100, 69000, N'vietquatmy', N'vietquatmy', 1, CAST(N'2021-07-09 22:08:59.000' AS DateTime), 30, CAST(N'2021-07-10 09:06:09.847' AS DateTime), 30, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (65, N'Kiwi vàng New Zealand 400g', N'kiwi-vang-new-zealand-400g', 27, N'kiwi-vang-new-zealand-400g.jpg', N'Kiwi vàng New Zealand 400g', 2, 2, N'<p>T&igrave;nh trạng sản phẩm</p>

<p>C&ograve;n h&agrave;ng</p>

<p>Vận chuyển</p>

<p>K&iacute;nh gửi: Qu&yacute; kh&aacute;ch h&agrave;ng: Hiện nhu cầu mua sắm tại VinMart đang tăng cao, đơn h&agrave;ng Qu&yacute; kh&aacute;ch đặt online sẽ giao chậm hơn so với dự kiến, mong kh&aacute;ch h&agrave;ng th&ocirc;ng cảm. VinMart lu&ocirc;n cố gắng phục vụ qu&yacute; kh&aacute;ch h&agrave;ng một c&aacute;ch tốt nhất. Li&ecirc;n hệ hỗ trợ : 024 71066866</p>
', N'<p><strong>Kiwi v&agrave;ng New Zealand&nbsp;</strong>l&agrave; loại quả ngon số 1 thế giới, với quy tr&igrave;nh từ trồng, chăm b&oacute;n đến thu, h&aacute;i, vận chuyển được ch&iacute;nh phủ New Zealand kiểm so&aacute;t rất chặt chẽ để đảm bảo quả kiwi lu&ocirc;n đồng đều v&agrave; đạt ti&ecirc;u chuẩn cao nhất.</p>

<p><strong>Kiwi v&agrave;ng New Zealand&nbsp;</strong>rất gi&agrave;u dinh dưỡng v&agrave; vitamin E. Do đ&oacute;, chỉ cần hai quả kiwi l&agrave; bạn đ&atilde; c&oacute; thể cung cấp được 1/3 năng lượng cần cho một ng&agrave;y. Ngo&agrave;i ra, Kiwi c&ograve;n tăng hiệu quả giảm c&acirc;n nhờ chứa &iacute;t chất b&eacute;o, &iacute;t calorie v&agrave; kh&ocirc;ng chứa cholesterol, gi&uacute;p giảm thiểu nguy cơ bệnh l&iacute; ung thư v&agrave; tim mạch, c&oacute; lợi cho ti&ecirc;u h&oacute;a, c&aacute;c bệnh h&ocirc; hấp (nhất l&agrave; ở trẻ em), kiểm so&aacute;t huyết &aacute;p...</p>

<p>Hơn nữa, trong Kiwi c&ograve;n c&oacute; chất gi&uacute;p tẩy trắng răng, trị t&agrave;n nhang v&agrave; ức chế qu&aacute; tr&igrave;nh oxy h&oacute;a l&agrave;n da, đ&agrave;o thải c&aacute;c sắc tố đen gi&uacute;p da s&aacute;ng trắng, hồng h&agrave;o v&agrave; mịn m&agrave;ng. C&aacute;c b&agrave; bầu ăn Kiwi khi đang mang thai cũng sẽ gi&uacute;p cho l&agrave;n da đẹp hơn.</p>

<p>Đặc biệt,&nbsp;<strong>Kiwi v&agrave;ng New Zealand&nbsp;</strong>c&ograve;n c&oacute; t&aacute;c dụng hỗ trợ cho người giảm c&acirc;n m&agrave; kh&ocirc;ng g&acirc;y ảnh hưởng xấu tới sức khỏe, bảo vệ ADN kh&ocirc;ng bị đột biến, cung cấp h&agrave;m lượng chất chống &ocirc;xy h&oacute;a cho cơ thể.</p>

<p><strong>Lưu &yacute;:</strong></p>

<p><strong>- Hạn sử dụng thực tế qu&yacute; kh&aacute;ch vui l&ograve;ng xem tr&ecirc;n bao b&igrave;.</strong></p>

<p><strong>- H&igrave;nh sản phẩm chỉ mang t&iacute;nh chất minh họa, h&igrave;nh bao b&igrave; của sản phẩm t&ugrave;y thời điểm sẽ kh&aacute;c so với thực tế.</strong></p>
', N'màu vàng', 72760, 100, 72760, N'kiwivang', N'kiwivang', 1, CAST(N'2021-07-10 08:55:15.000' AS DateTime), 30, CAST(N'2021-07-10 08:56:46.040' AS DateTime), 30, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Cay canh slider', N'cay-canh-slider', N'slideshow', N'cay-canh-slider.jpg', 1, CAST(N'2021-03-02 13:39:32.093' AS DateTime), 20, CAST(N'2021-03-31 16:38:27.623' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'slider cay canh 2', N'slider-cay-canh-2', N'slideshow', N'slider-cay-canh-2.jpg', 1, CAST(N'2021-03-02 13:43:37.430' AS DateTime), 20, CAST(N'2021-03-31 16:38:28.820' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (4, N'slider cay canh 3', N'slider-cay-canh-3', N'slideshow', N'slider-cay-canh-3.jpg', 1, CAST(N'2021-03-02 13:43:53.777' AS DateTime), 20, CAST(N'2021-03-31 16:38:30.197' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'slider watch site', N'slider-watch-site', N'slideshow', N'slider-watch-site.jpg', 2, CAST(N'2021-03-31 15:46:15.663' AS DateTime), 21, CAST(N'2021-06-04 21:03:18.247' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (6, N'banner 2', N'banner-2', N'slideshow', N'banner-2.jpg', 5, CAST(N'2021-03-31 16:38:46.437' AS DateTime), 21, CAST(N'2021-06-04 21:03:19.723' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (7, N'banner 3', N'banner-3', N'slideshow', N'banner-3.jpg', 5, CAST(N'2021-03-31 16:38:57.000' AS DateTime), 21, CAST(N'2021-06-04 21:03:20.723' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (8, N'1', N'1', N'slideshow', N'1.jpg', 8, CAST(N'2021-06-04 21:03:28.000' AS DateTime), 20, CAST(N'2021-07-09 10:37:11.877' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (9, N'2', N'2', N'slideshow', N'2.jpg', 8, CAST(N'2021-06-04 21:03:36.863' AS DateTime), 20, CAST(N'2021-07-09 10:37:59.837' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (10, N'3', N'3', N'slideshow', N'3.jpg', 8, CAST(N'2021-06-04 21:03:46.083' AS DateTime), 20, CAST(N'2021-07-09 10:37:58.863' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (11, N'1', N'1', N'slideshow', N'1.jpg', 9, CAST(N'2021-07-09 10:37:28.733' AS DateTime), 20, CAST(N'2021-07-09 10:37:57.730' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (12, N'nguyen duy duc', N'nguyen-duy-duc', N'slideshow', N'nguyen-duy-duc.jpg', 9, CAST(N'2021-07-09 10:37:48.927' AS DateTime), 20, CAST(N'2021-07-09 10:37:48.927' AS DateTime), 20, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (13, N'4', N'4', N'slideshow', N'4.jpg', 12, CAST(N'2021-07-09 10:38:30.750' AS DateTime), 20, CAST(N'2021-07-09 14:04:52.840' AS DateTime), 30, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (14, N'5', N'5', N'slideshow', N'5.jpg', 12, CAST(N'2021-07-09 10:39:07.000' AS DateTime), 20, CAST(N'2021-07-09 10:39:19.523' AS DateTime), 20, 1)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
SET IDENTITY_INSERT [dbo].[Topics] ON 

INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'Thông tin web', N'thong-tin-web', 0, NULL, N'Về chúng tôi', N'Thông tin web', CAST(N'2021-04-14 17:50:17.140' AS DateTime), 27, CAST(N'2021-04-14 17:50:17.140' AS DateTime), 27, 1)
INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (6, N'Tin tức', N'tin-tuc', 0, NULL, N'Tin tức', N'Tin tức', CAST(N'2021-05-27 16:21:44.650' AS DateTime), 20, CAST(N'2021-05-27 16:21:44.650' AS DateTime), 20, 1)
INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (9, N'Giới thiệu', N'gioi-thieu', 0, NULL, N'gioi-thieu', N'gioi-thieu', CAST(N'2021-07-09 23:59:43.103' AS DateTime), 30, CAST(N'2021-07-09 23:59:43.103' AS DateTime), 30, 1)
SET IDENTITY_INSERT [dbo].[Topics] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (20, N'Nguyễn Ngọc Huyền', N'admins', N'xMpCOKC5I4INzFCab3WEmw==', N'colennhe102@gmail.com', 1, 983487921, N'Lập Thạch_ Vĩnh Phúc', N'ngochuyen.png', 0, 0, CAST(N'2021-07-09 11:05:51.263' AS DateTime), 1, CAST(N'2021-07-09 11:05:51.263' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (21, N'Phương Nam', N'phuongnam', N'ICy5YqxZB1uWSwcVLSNLcA==', N'phuongnam@gmail.com', 1, 385699755, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'', 1, 0, CAST(N'2021-07-09 10:33:58.173' AS DateTime), 1, CAST(N'2021-07-09 10:33:58.173' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (22, N'Minh Hương', N'minhhuong', N'ICy5YqxZB1uWSwcVLSNLcA==', N'minhhuong@gmail.com', 1, 92470975, N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'', 1, 0, CAST(N'2021-07-09 10:33:59.797' AS DateTime), 1, CAST(N'2021-07-09 10:33:59.797' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (23, N'Ngọc Huyền', N'ngochuyen', N'ICy5YqxZB1uWSwcVLSNLcA==', N'ngochuyen@gmail.com', 1, 983487921, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'', 1, 0, CAST(N'2021-07-09 10:34:01.163' AS DateTime), 1, CAST(N'2021-07-09 10:34:01.163' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (24, N'Hương Lan', N'huonglan', N'ICy5YqxZB1uWSwcVLSNLcA==', N'huonglan@gmail.com', 1, 297565016, N'Trung cư Timecity 1 Hà Nội', N'', 1, 0, CAST(N'2021-07-09 10:34:04.763' AS DateTime), 1, CAST(N'2021-07-09 10:34:04.763' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (25, N'Nguyễn Ngọc Huyền', N'huyen2901', N'ICy5YqxZB1uWSwcVLSNLcA==', N'colennhe102@gmail.com', 2, 983487444, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'nguyen-ngoc-huyen.jpg', 0, 0, CAST(N'2021-07-09 11:05:49.350' AS DateTime), 20, CAST(N'2021-07-09 11:05:49.350' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (26, N'Vy Vy', N'vyvy', N'ICy5YqxZB1uWSwcVLSNLcA==', N'vyvy@gmail.com', 1, 28445551, N'Số 10 Hoàng Mai Hà Nội', N'', 1, 0, CAST(N'2021-07-09 10:34:06.643' AS DateTime), 1, CAST(N'2021-07-09 10:34:06.643' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (27, N'Tuấn Anh', N'anh', N'ICy5YqxZB1uWSwcVLSNLcA==', N'anh@gmail.com', 1, 983487765, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'', 1, 0, CAST(N'2021-07-09 10:34:09.780' AS DateTime), 1, CAST(N'2021-07-09 10:34:09.780' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (28, N'Tuấn Anh', N'anh', N'ICy5YqxZB1uWSwcVLSNLcA==', N'anh27@gmail.com', 1, 83255622, N'11 ngõ 25 Văn trì, minh khai,bắc từ liêm ,hà nội', N'', 1, 0, CAST(N'2021-07-09 10:34:11.057' AS DateTime), 1, CAST(N'2021-07-09 10:34:11.057' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (29, N'Minh Ánh', N'minhanh', N'ICy5YqxZB1uWSwcVLSNLcA==', N'minhanh@gmail.com', 1, 19375573, N'Vĩnh Phúc Lập Thạch', N'', 1, 0, CAST(N'2021-07-09 10:34:12.427' AS DateTime), 1, CAST(N'2021-07-09 10:34:12.427' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (30, N'Nguyen Duy Duc', N'ducthanhpr', N'4QrcOUm6Wau+VuBX8g+IPg==', N'ducvyathanh@gmail.com', 1, 392905996, N'Ha Noi', NULL, 0, 1, CAST(N'2021-07-09 11:05:41.923' AS DateTime), 20, CAST(N'2021-07-09 11:05:41.923' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (31, N'Ngo Duy Khanh', N'admin', N'4QrcOUm6Wau+VuBX8g+IPg==', N'ducthanhpr.us@gmail.com', 1, 999999999, N'Hai Duong', NULL, 0, 1, CAST(N'2021-07-09 11:07:12.977' AS DateTime), 20, CAST(N'2021-07-09 11:07:12.977' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (32, N'bui trung duc', N'trungduc', N'4QrcOUm6Wau+VuBX8g+IPg==', N'trungduc@gmail.com', 1, 399999999, N'ha nam', N'', 1, 1, CAST(N'2021-07-09 23:47:21.647' AS DateTime), 1, CAST(N'2021-07-09 23:47:21.647' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_orderDetails_order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_orderDetails_order]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_orders_users_ID] FOREIGN KEY([CustemerId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_orders_users_ID]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [fk_poste_topicc] FOREIGN KEY([Topid])
REFERENCES [dbo].[Topics] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [fk_poste_topicc]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Categorys] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_create] FOREIGN KEY([Created_by])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_create]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_update] FOREIGN KEY([Updated_by])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_update]
GO
