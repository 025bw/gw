USE [zeal]
GO
/****** Object:  Table [dbo].[account]    Script Date: 12/24/2020 5:43:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 12/24/2020 5:43:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[item_id] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/24/2020 5:43:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 12/24/2020 5:43:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[name] [varchar](max) NOT NULL,
	[phone] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_detail]    Script Date: 12/24/2020 5:43:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item_detail](
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[price] [int] NOT NULL,
	[cat_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[stock] [int] NULL,
 CONSTRAINT [PK_item_list] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_items]    Script Date: 12/24/2020 5:43:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_items](
	[oid] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
	[discount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 12/24/2020 5:43:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[phone] [int] NOT NULL,
	[orderstatus] [varchar](50) NOT NULL,
	[orderdate] [date] NOT NULL,
	[shipaddress] [varchar](max) NOT NULL,
	[note] [varchar](max) NULL,
	[trackkey] [varchar](255) NOT NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[account] ([username], [password]) VALUES (N'025', N'123')
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (1, N'Drink')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (2, N'Food')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (3, N'Snack')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (4, N'Dairy Product')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (5, N'Meat')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (6, N'Chemical')
SET IDENTITY_INSERT [dbo].[category] OFF
INSERT [dbo].[customers] ([name], [phone]) VALUES (N'z', 3)
SET IDENTITY_INSERT [dbo].[item_detail] ON 

INSERT [dbo].[item_detail] ([item_id], [price], [cat_id], [name], [stock]) VALUES (1, 9, 1, N'Coca-Cola 12 fl', 10)
INSERT [dbo].[item_detail] ([item_id], [price], [cat_id], [name], [stock]) VALUES (2, 9, 1, N'Pepsi 12 fl', 99999)
INSERT [dbo].[item_detail] ([item_id], [price], [cat_id], [name], [stock]) VALUES (3, 5, 1, N'Aquafina 500ml', 0)
INSERT [dbo].[item_detail] ([item_id], [price], [cat_id], [name], [stock]) VALUES (4, 50, 4, N'Heinz Tomato Ketchup 20 oz', 1)
SET IDENTITY_INSERT [dbo].[item_detail] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([oid], [phone], [orderstatus], [orderdate], [shipaddress], [note], [trackkey]) VALUES (25, 3, N'ordered', CAST(N'2020-12-23' AS Date), N'909, 16 Phan Chu Trinh', N'4', N'3B0A507A-E21F-4884-909B-37A45E84D163')
SET IDENTITY_INSERT [dbo].[orders] OFF
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_item_detail] FOREIGN KEY([item_id])
REFERENCES [dbo].[item_detail] ([item_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_item_detail]
GO
ALTER TABLE [dbo].[item_detail]  WITH CHECK ADD  CONSTRAINT [FK_item_detail_category] FOREIGN KEY([cat_id])
REFERENCES [dbo].[category] ([cat_id])
GO
ALTER TABLE [dbo].[item_detail] CHECK CONSTRAINT [FK_item_detail_category]
GO
ALTER TABLE [dbo].[order_items]  WITH CHECK ADD  CONSTRAINT [FK_order_items_item_detail] FOREIGN KEY([item_id])
REFERENCES [dbo].[item_detail] ([item_id])
GO
ALTER TABLE [dbo].[order_items] CHECK CONSTRAINT [FK_order_items_item_detail]
GO
ALTER TABLE [dbo].[order_items]  WITH CHECK ADD  CONSTRAINT [FK_order_items_orders] FOREIGN KEY([oid])
REFERENCES [dbo].[orders] ([oid])
GO
ALTER TABLE [dbo].[order_items] CHECK CONSTRAINT [FK_order_items_orders]
GO
