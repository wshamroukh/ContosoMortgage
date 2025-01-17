/****** Object:  Table [dbo].[CartItems]    Script Date: 8/3/2019 12:27:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[ItemId] [nvarchar](128) NOT NULL,
	[CartId] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CartItems] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/3/2019 12:27:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/3/2019 12:27:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Rate] [float] NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/3/2019 12:27:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[FirstName] [nvarchar](160) NOT NULL,
	[LastName] [nvarchar](160) NOT NULL,
	[Address] [nvarchar](70) NOT NULL,
	[City] [nvarchar](40) NOT NULL,
	[State] [nvarchar](40) NOT NULL,
	[PostalCode] [nvarchar](10) NOT NULL,
	[Country] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
	[SMSOptIn] [bit] NOT NULL,
	[SMSStatus] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[ReceiptUrl] [nvarchar](max) NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[UserId] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/3/2019 12:27:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Rate] [float] NULL,
	[APR] [float] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/3/2019 12:27:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](128) NULL,
	[LastName] [nvarchar](128) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CartItems] ([ItemId], [CartId], [Quantity], [DateCreated], [ProductId]) VALUES (N'942345c2-2a62-4e11-9d83-c63f6c055419', N'7e6748df-ff70-4f96-ae3d-87f3a814a625', 1, CAST(N'2019-07-30T09:17:07.560' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Mortgage Rates', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Bank CD Rates', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (1, 1, NULL, 7, 1, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (2, 5, N'jadams@contosofinance.com', 5, 1, 1.65)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (3, 5, N'jadams@contosofinance.com', 1, 1, 3.25)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (4, 6, N'jadams@contosofinance.com', 5, 1, 1.65)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (5, 6, N'jadams@contosofinance.com', 1, 1, 3.25)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (6, 7, N'jadams@contosofinance.com', 5, 1, 1.65)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (7, 7, N'jadams@contosofinance.com', 1, 1, 3.25)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (8, 8, N'jadams@contosofinance.com', 5, 1, 1.65)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (9, 8, N'jadams@contosofinance.com', 1, 1, 3.25)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (10, 9, N'jadams@contosofinance.com', 5, 1, 1.65)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (11, 9, N'jadams@contosofinance.com', 1, 1, 3.25)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (12, 10, N'jadams@contosofinance.com', 5, 1, 1.65)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (13, 10, N'jadams@contosofinance.com', 1, 1, 3.25)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (14, 11, N'jadams@contosofinance.com', 3, 2, 3.5)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (15, 12, N'jadams@contosofinance.com', 7, 1, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (16, 13, N'jclark@clancy.com', 4, 1, 3.75)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [Email], [ProductId], [Quantity], [Rate]) VALUES (17, 14, N'jharley@aa.net', 4, 1, 3.75)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (1, CAST(N'2019-07-28T06:57:48.507' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'2146766419', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(2.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (2, CAST(N'2019-07-29T14:06:56.393' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'donotcallme', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(1.65 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (3, CAST(N'2019-07-29T14:08:21.837' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'ui', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(4.90 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (4, CAST(N'2019-07-29T14:13:24.633' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'ul', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(4.90 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (5, CAST(N'2019-07-29T14:47:22.527' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'TEST', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(4.90 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (6, CAST(N'2019-07-29T15:13:47.330' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'test', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(4.90 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (7, CAST(N'2019-07-29T15:17:42.597' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'ed', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(4.90 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (8, CAST(N'2019-07-29T15:20:56.103' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'ef', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(4.90 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (9, CAST(N'2019-07-29T15:24:04.723' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'er', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(4.90 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (10, CAST(N'2019-07-29T15:28:50.717' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'ed', 1, NULL, N'jadams@contosofinance.com', NULL, CAST(4.90 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (11, CAST(N'2019-07-29T16:07:16.783' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'we', 1, N'', N'jadams@contosofinance.com', N'', CAST(7.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (12, CAST(N'2019-07-30T08:43:45.570' AS DateTime), N'John', N'Adams', N'1701 Shoal Creek', N'Highland Village', N'TX', N'75077', N'United States', N'500-DONOTCALL', 1, N'', N'jadams@contosofinance.com', N'', CAST(2.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (13, CAST(N'2019-07-30T11:12:34.747' AS DateTime), N'John', N'Clark', N'add', N'add', N'add', N'add', N'add', N'add', 0, N'', N'jclark@clancy.com', N'', CAST(3.75 AS Decimal(18, 2)), N'be1a94e9-c0c8-44b2-94dc-46703c3a2df2')
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [SMSOptIn], [SMSStatus], [Email], [ReceiptUrl], [Total], [UserId]) VALUES (14, CAST(N'2019-07-30T11:36:38.220' AS DateTime), N'Jess', N'Harley', N'add', N'add', N'add', N'add', N'add', N'add', 0, N'', N'jharley@aa.net', N'', CAST(3.75 AS Decimal(18, 2)), N'4830afbc-fbe9-4f4f-95c6-8460538f1750')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Rate], [APR], [CategoryID]) VALUES (1, N'10 Year Fixed', 3.25, 3.51, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Rate], [APR], [CategoryID]) VALUES (2, N'15 Year Fixed', 3.25, 3.429, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Rate], [APR], [CategoryID]) VALUES (3, N'20 Year Fixed', 3.5, 3.642, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Rate], [APR], [CategoryID]) VALUES (4, N'30 Year Fixed', 3.75, 3.854, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Rate], [APR], [CategoryID]) VALUES (5, N'1 Year CD', 1.65, 1.65, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Rate], [APR], [CategoryID]) VALUES (6, N'2 Year CD', 1.75, 1.75, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Rate], [APR], [CategoryID]) VALUES (7, N'3 Year CD', 2, 2, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Rate], [APR], [CategoryID]) VALUES (8, N'5 Year CD', 2.45, 2.45, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'01ebd897-7adf-41e2-a9fc-a4a4979be053', N'Jozsef', N'Hribich')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'1941b161-6f1e-40cb-99dd-7af9160293bb', N'Test', N'Test')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'3159feec-80bb-4eb4-93c4-fce8cfa1a014', N'Test', N'Test')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'3aabbcaa-da9a-474f-a714-3db1c2fa10f1', N'TESTR', N'test')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'4830afbc-fbe9-4f4f-95c6-8460538f1750', N'Jess', N'Harley')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'4a06d195-3d0f-488e-822c-0fc38c4ff9d5', N'John', N'Dusk')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'527d7750-1f35-4a14-96bb-0cf8a1b0aad0', N'Test', N'Test')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'7e6748df-ff70-4f96-ae3d-87f3a814a625', N'Michael', N'Washam')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'9e1aafea-6a7c-460d-bee7-6dd3cd5e09c2', N'Test', N'user')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'b8174e49-b5dc-4d39-b4e9-e45036b6f74f', N'Test', N'Test')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'be1a94e9-c0c8-44b2-94dc-46703c3a2df2', N'John', N'Clark')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (N'fa3a75da-426e-44b9-bc41-5f2dc6d1368a', N'Test', N'Test')
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CartItems_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_dbo.CartItems_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryID]
GO
