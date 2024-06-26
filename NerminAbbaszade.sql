USE [AmazonDB]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[city] [nvarchar](100) NULL,
	[country] [nvarchar](100) NULL,
	[postal_code] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLines]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[OrderDate] [datetime2](7) NULL,
	[Amount] [real] NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[ProductId] [int] NULL,
	[ShippingId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[PaymentDate] [datetime2](7) NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[PaidAmount] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[Price] [real] NULL,
	[CategoryId] [int] NULL,
	[StockQuantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[UserId] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[Rating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sellers]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sellers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SellerName] [nvarchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Rating] [real] NULL,
	[ProductId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ShippingAddress] [nvarchar](255) NULL,
	[ShippingDate] [datetime2](7) NULL,
	[DeliveryStatus] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[SubscriptionType] [nvarchar](100) NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[IsActive] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Password_] [nvarchar](255) NULL,
	[RegistrationDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlists]    Script Date: 4/22/2024 11:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

INSERT [dbo].[Addresses] ([Id], [UserId], [city], [country], [postal_code]) VALUES (1, 1, N'Baku', N'Azerbaijan', N'10001')
INSERT [dbo].[Addresses] ([Id], [UserId], [city], [country], [postal_code]) VALUES (2, 2, N'Istanbul', N'Turkey', N'329382')
INSERT [dbo].[Addresses] ([Id], [UserId], [city], [country], [postal_code]) VALUES (3, 3, N'Berlin', N'Germany', N'10115')
INSERT [dbo].[Addresses] ([Id], [UserId], [city], [country], [postal_code]) VALUES (4, 4, N'Paris', N'France', N'75001')
INSERT [dbo].[Addresses] ([Id], [UserId], [city], [country], [postal_code]) VALUES (5, 5, N'Sumgayit', N'Azerbaijan', N'10002')
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName], [Description]) VALUES (1, N'Electronics', N'Electronic devices')
INSERT [dbo].[Categories] ([Id], [CategoryName], [Description]) VALUES (2, N'Clothing', N'Clothing items')
INSERT [dbo].[Categories] ([Id], [CategoryName], [Description]) VALUES (3, N'Home', N'Home appliances and furniture')
INSERT [dbo].[Categories] ([Id], [CategoryName], [Description]) VALUES (4, N'Books', N'Reading materials')
INSERT [dbo].[Categories] ([Id], [CategoryName], [Description]) VALUES (5, N'Sports', N'Sports equipment and accessories')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderLines] ON 

INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price]) VALUES (1, 1, 1, 999.99)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price]) VALUES (2, 1, 2, 39.98)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price]) VALUES (3, 2, 1, 499.99)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price]) VALUES (4, 3, 3, 38.97)
INSERT [dbo].[OrderLines] ([Id], [OrderId], [Quantity], [Price]) VALUES (5, 4, 1, 29.99)
SET IDENTITY_INSERT [dbo].[OrderLines] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Amount], [PaymentStatus], [ProductId], [ShippingId]) VALUES (1, 1, CAST(N'2024-02-12T00:00:00.0000000' AS DateTime2), 99.99, N'Paid', 3, 1)
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Amount], [PaymentStatus], [ProductId], [ShippingId]) VALUES (2, 2, CAST(N'2021-04-15T00:00:00.0000000' AS DateTime2), 50, N'Pending', 1, 2)
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Amount], [PaymentStatus], [ProductId], [ShippingId]) VALUES (3, 3, CAST(N'2024-02-22T00:00:00.0000000' AS DateTime2), 199.99, N'Paid', 2, 4)
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Amount], [PaymentStatus], [ProductId], [ShippingId]) VALUES (4, 4, CAST(N'2024-04-20T00:00:00.0000000' AS DateTime2), 29.34, N'Paid', 4, 3)
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [Amount], [PaymentStatus], [ProductId], [ShippingId]) VALUES (5, 5, CAST(N'2024-08-20T00:00:00.0000000' AS DateTime2), 755, N'Pending', 5, 5)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [PaymentMethod], [PaidAmount]) VALUES (1, 1, CAST(N'2024-04-02T00:00:00.0000000' AS DateTime2), N'Credit Card', 1230)
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [PaymentMethod], [PaidAmount]) VALUES (2, 2, CAST(N'2024-04-20T00:00:00.0000000' AS DateTime2), N'PayPal', 49.5)
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [PaymentMethod], [PaidAmount]) VALUES (3, 3, CAST(N'2022-02-22T00:00:00.0000000' AS DateTime2), N'Credit Card', 199.99)
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [PaymentMethod], [PaidAmount]) VALUES (4, 4, CAST(N'2018-04-30T00:00:00.0000000' AS DateTime2), N'Debit Card', 30)
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [PaymentMethod], [PaidAmount]) VALUES (5, 5, CAST(N'2023-11-20T00:00:00.0000000' AS DateTime2), N'Cash', 149.99)
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName], [Price], [CategoryId], [StockQuantity]) VALUES (1, N'Laptop', 1230.67, 1, 23)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [CategoryId], [StockQuantity]) VALUES (2, N'Skirt', 19.99, 2, 39)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [CategoryId], [StockQuantity]) VALUES (3, N'Sofa', 500, 3, 10)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [CategoryId], [StockQuantity]) VALUES (4, N'Pen', 1.2, 4, 150)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [CategoryId], [StockQuantity]) VALUES (5, N'Ball', 29, 5, 50)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Description], [Rating]) VALUES (1, 1, 2, N'Great laptop', 5)
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Description], [Rating]) VALUES (2, 2, 3, N'Nice fabric', 4)
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Description], [Rating]) VALUES (3, 3, 4, N'very comfortable', 5)
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Description], [Rating]) VALUES (4, 4, 5, N'sharp enough', 4)
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Description], [Rating]) VALUES (5, 5, 1, N'bad quality', 1)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Sellers] ON 

INSERT [dbo].[Sellers] ([Id], [SellerName], [Email], [Rating], [ProductId]) VALUES (1, N'Irshad', N'irshad@gmail.com', 4.5, 1)
INSERT [dbo].[Sellers] ([Id], [SellerName], [Email], [Rating], [ProductId]) VALUES (2, N'Gucci', N'gucci@example.com', 4.2, 2)
INSERT [dbo].[Sellers] ([Id], [SellerName], [Email], [Rating], [ProductId]) VALUES (3, N'Yatash', N'yatash@example.com', 2.8, 3)
INSERT [dbo].[Sellers] ([Id], [SellerName], [Email], [Rating], [ProductId]) VALUES (4, N'Ali&Nino', N'alinino@example.com', 4.4, 4)
INSERT [dbo].[Sellers] ([Id], [SellerName], [Email], [Rating], [ProductId]) VALUES (5, N'Puma', N'puma@example.com', 4.6, 5)
SET IDENTITY_INSERT [dbo].[Sellers] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([Id], [OrderId], [ShippingAddress], [ShippingDate], [DeliveryStatus]) VALUES (1, 1, N'Baku', CAST(N'2024-04-20T09:30:00.0000000' AS DateTime2), N'Shipped')
INSERT [dbo].[Shipping] ([Id], [OrderId], [ShippingAddress], [ShippingDate], [DeliveryStatus]) VALUES (2, 2, N'London', CAST(N'2024-04-20T11:00:00.0000000' AS DateTime2), N'Processing')
INSERT [dbo].[Shipping] ([Id], [OrderId], [ShippingAddress], [ShippingDate], [DeliveryStatus]) VALUES (3, 3, N'Istanbul', CAST(N'2024-04-20T12:00:00.0000000' AS DateTime2), N'Shipped')
INSERT [dbo].[Shipping] ([Id], [OrderId], [ShippingAddress], [ShippingDate], [DeliveryStatus]) VALUES (4, 4, N'Sumgayit', CAST(N'2024-04-20T13:45:00.0000000' AS DateTime2), N'Delivered')
INSERT [dbo].[Shipping] ([Id], [OrderId], [ShippingAddress], [ShippingDate], [DeliveryStatus]) VALUES (5, 5, N'Tokyo', CAST(N'2024-04-20T15:30:00.0000000' AS DateTime2), N'Processing')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscriptions] ON 

INSERT [dbo].[Subscriptions] ([Id], [UserId], [SubscriptionType], [StartDate], [EndDate], [IsActive]) VALUES (1, 1, N'Premium', CAST(N'2024-04-20T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-20T00:00:00.0000000' AS DateTime2), N'Yes')
INSERT [dbo].[Subscriptions] ([Id], [UserId], [SubscriptionType], [StartDate], [EndDate], [IsActive]) VALUES (2, 2, N'Basic', CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-20T00:00:00.0000000' AS DateTime2), N'No')
INSERT [dbo].[Subscriptions] ([Id], [UserId], [SubscriptionType], [StartDate], [EndDate], [IsActive]) VALUES (3, 3, N'Premium', CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), CAST(N'2022-05-19T00:00:00.0000000' AS DateTime2), N'No')
INSERT [dbo].[Subscriptions] ([Id], [UserId], [SubscriptionType], [StartDate], [EndDate], [IsActive]) VALUES (4, 4, N'Basic', CAST(N'2024-03-22T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-22T00:00:00.0000000' AS DateTime2), N'Yes')
INSERT [dbo].[Subscriptions] ([Id], [UserId], [SubscriptionType], [StartDate], [EndDate], [IsActive]) VALUES (5, 5, N'Premium', CAST(N'2024-01-13T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-13T00:00:00.0000000' AS DateTime2), N'Yes')
SET IDENTITY_INSERT [dbo].[Subscriptions] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Email], [Password_], [RegistrationDate]) VALUES (1, N'nermin_a', N'nermin.a@gmail.com', N'password123', CAST(N'2024-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Users] ([Id], [Username], [Email], [Password_], [RegistrationDate]) VALUES (2, N'nezrin_123', N'nezrinn@gmail.com', N'password456', CAST(N'2024-04-15T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Users] ([Id], [Username], [Email], [Password_], [RegistrationDate]) VALUES (3, N'cavid_hajili', N'cavid.hajili@gmail.com', N'alma123', CAST(N'2022-12-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Users] ([Id], [Username], [Email], [Password_], [RegistrationDate]) VALUES (4, N'ulduzz.nazarli', N'n.ulduz@gmail.com', N'qazzaq123', CAST(N'2021-10-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Users] ([Id], [Username], [Email], [Password_], [RegistrationDate]) VALUES (5, N'nijatmmdli', N'nijatmammadli@gmail.com', N'12345678', CAST(N'2024-04-23T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Wishlists] ON 

INSERT [dbo].[Wishlists] ([Id], [UserId], [ProductId]) VALUES (1, 1, 2)
INSERT [dbo].[Wishlists] ([Id], [UserId], [ProductId]) VALUES (2, 2, 3)
INSERT [dbo].[Wishlists] ([Id], [UserId], [ProductId]) VALUES (3, 3, 4)
INSERT [dbo].[Wishlists] ([Id], [UserId], [ProductId]) VALUES (4, 4, 5)
INSERT [dbo].[Wishlists] ([Id], [UserId], [ProductId]) VALUES (5, 5, 1)
SET IDENTITY_INSERT [dbo].[Wishlists] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Categori__8517B2E0D41159F8]    Script Date: 4/22/2024 11:39:53 PM ******/
ALTER TABLE [dbo].[Categories] ADD UNIQUE NONCLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Products__DD5A978A9878ED1F]    Script Date: 4/22/2024 11:39:53 PM ******/
ALTER TABLE [dbo].[Products] ADD UNIQUE NONCLUSTERED 
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Reviews__4EBBBAC9B81C3B84]    Script Date: 4/22/2024 11:39:53 PM ******/
ALTER TABLE [dbo].[Reviews] ADD UNIQUE NONCLUSTERED 
(
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Sellers__030470FA8160DC9A]    Script Date: 4/22/2024 11:39:53 PM ******/
ALTER TABLE [dbo].[Sellers] ADD UNIQUE NONCLUSTERED 
(
	[SellerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__536C85E45A63C94F]    Script Date: 4/22/2024 11:39:53 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[OrderLines]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_ShippingId] FOREIGN KEY([ShippingId])
REFERENCES [dbo].[Shipping] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_ShippingId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Sellers]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Shipping]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Wishlists]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Wishlists]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
