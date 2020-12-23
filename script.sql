USE [zeal]
GO
/****** Object:  Table [dbo].[account]    Script Date: 12/23/2020 4:07:25 PM ******/
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
/****** Object:  Table [dbo].[cart]    Script Date: 12/23/2020 4:07:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[item_id] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/23/2020 4:07:25 PM ******/
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
/****** Object:  Table [dbo].[customers]    Script Date: 12/23/2020 4:07:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[name] [varchar](max) NOT NULL,
	[phone] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_detail]    Script Date: 12/23/2020 4:07:25 PM ******/
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
/****** Object:  Table [dbo].[order_items]    Script Date: 12/23/2020 4:07:25 PM ******/
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
/****** Object:  Table [dbo].[orders]    Script Date: 12/23/2020 4:07:25 PM ******/
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
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (1, N'a')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (2, N'b')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (3, N'c')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (4, N'd')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (5, N'e')
INSERT [dbo].[category] ([cat_id], [cat_name]) VALUES (6, N'f')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
INSERT [dbo].[customers] ([name], [phone]) VALUES (N'z', 1)
GO
SET IDENTITY_INSERT [dbo].[item_detail] ON 

INSERT [dbo].[item_detail] ([item_id], [price], [cat_id], [name], [stock]) VALUES (1, 9, 1, N'q', 10)
INSERT [dbo].[item_detail] ([item_id], [price], [cat_id], [name], [stock]) VALUES (2, 8, 2, N'w', 99999)
INSERT [dbo].[item_detail] ([item_id], [price], [cat_id], [name], [stock]) VALUES (3, 100, 3, N'e', 0)
INSERT [dbo].[item_detail] ([item_id], [price], [cat_id], [name], [stock]) VALUES (4, 50, 4, N'r', 1)
SET IDENTITY_INSERT [dbo].[item_detail] OFF
GO
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
