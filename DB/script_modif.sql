Create DataBase [boutique_bd]
Go
USE [boutique_bd]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[id] [int] NOT NULL,
	[name] [varchar](25) NOT NULL,
	[created_at] [date] NOT NULL,
 CONSTRAINT [PK_brands] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] NOT NULL,
	[name] [varchar](25) NOT NULL,
	[created_at] [date] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[document_types]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[document_types](
	[id] [int] NOT NULL,
	[name] [nchar](10) NOT NULL,
	[created_at] [date] NOT NULL,
 CONSTRAINT [PK_document_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[entities]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entities](
	[id] [int] NOT NULL,
	[name] [nchar](10) NOT NULL,
	[tel] [nchar](9) NOT NULL,
	[email] [nchar](25) NOT NULL,
	[person_type_id] [int] NOT NULL,
 CONSTRAINT [PK_entities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoice_details]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice_details](
	[id] [int] NOT NULL,
	[description] [varchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[unitPrice] [float] NOT NULL,
	[invoice_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_invoice_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoices]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoices](
	[id] [int] NOT NULL,
	[customer_id] [int] NULL,
	[date] [date] NOT NULL,
	[document_type_id] [int] NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_invoices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[person_types]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_types](
	[id] [int] NOT NULL,
	[name] [nchar](10) NOT NULL,
	[created_at] [date] NOT NULL,
 CONSTRAINT [PK_person_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[cost] [float] NOT NULL,
	[initialQuantity] [int] NOT NULL,
	[quantityAvailable] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[brand_id] [int] NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase_details]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase_details](
	[id] [int] NOT NULL,
	[description] [varchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[unitCost] [float] NOT NULL,
	[cost] [float] NOT NULL,
	[purchase_id] [int] NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_purchase_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchases]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchases](
	[id] [int] NOT NULL,
	[provider_id] [int] NULL,
	[date] [date] NULL,
	[document_type_id] [int] NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_purchases] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] NOT NULL,
	[name] [nchar](10) NOT NULL,
	[created_at] [date] NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statuses]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statuses](
	[id] [int] NOT NULL,
	[name] [nchar](10) NOT NULL,
	[includesInPurchases] [bit] NOT NULL,
 CONSTRAINT [PK_statuses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 9/4/2022 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[names] [nchar](30) NOT NULL,
	[lastnames] [nchar](30) NOT NULL,
	[dui] [varchar](9) NULL,
	[nit] [varchar](15) NULL,
	[userName] [nchar](10) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](25) NULL,
	[rol_id] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[statuses] ADD  CONSTRAINT [DF_statuses_includesInPurchases]  DEFAULT ((0)) FOR [includesInPurchases]
GO
ALTER TABLE [dbo].[entities]  WITH CHECK ADD  CONSTRAINT [FK_entities_person_types] FOREIGN KEY([person_type_id])
REFERENCES [dbo].[person_types] ([id])
GO
ALTER TABLE [dbo].[entities] CHECK CONSTRAINT [FK_entities_person_types]
GO
ALTER TABLE [dbo].[invoice_details]  WITH CHECK ADD  CONSTRAINT [FK_invoice_details_invoice_details] FOREIGN KEY([id])
REFERENCES [dbo].[invoice_details] ([id])
GO
ALTER TABLE [dbo].[invoice_details] CHECK CONSTRAINT [FK_invoice_details_invoice_details]
GO
ALTER TABLE [dbo].[invoice_details]  WITH CHECK ADD  CONSTRAINT [FK_invoice_details_invoices] FOREIGN KEY([invoice_id])
REFERENCES [dbo].[invoices] ([id])
GO
ALTER TABLE [dbo].[invoice_details] CHECK CONSTRAINT [FK_invoice_details_invoices]
GO
ALTER TABLE [dbo].[invoice_details]  WITH CHECK ADD  CONSTRAINT [FK_invoice_details_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[invoice_details] CHECK CONSTRAINT [FK_invoice_details_products]
GO
ALTER TABLE [dbo].[invoices]  WITH CHECK ADD  CONSTRAINT [FK_invoices_document_types] FOREIGN KEY([document_type_id])
REFERENCES [dbo].[document_types] ([id])
GO
ALTER TABLE [dbo].[invoices] CHECK CONSTRAINT [FK_invoices_document_types]
GO
ALTER TABLE [dbo].[invoices]  WITH CHECK ADD  CONSTRAINT [FK_invoices_entities] FOREIGN KEY([customer_id])
REFERENCES [dbo].[entities] ([id])
GO
ALTER TABLE [dbo].[invoices] CHECK CONSTRAINT [FK_invoices_entities]
GO
ALTER TABLE [dbo].[invoices]  WITH CHECK ADD  CONSTRAINT [FK_invoices_statuses] FOREIGN KEY([status_id])
REFERENCES [dbo].[statuses] ([id])
GO
ALTER TABLE [dbo].[invoices] CHECK CONSTRAINT [FK_invoices_statuses]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_brands] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_brands]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categories]
GO
ALTER TABLE [dbo].[purchase_details]  WITH CHECK ADD  CONSTRAINT [FK_purchase_details_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[purchase_details] CHECK CONSTRAINT [FK_purchase_details_products]
GO
ALTER TABLE [dbo].[purchase_details]  WITH CHECK ADD  CONSTRAINT [FK_purchase_details_purchases] FOREIGN KEY([purchase_id])
REFERENCES [dbo].[purchases] ([id])
GO
ALTER TABLE [dbo].[purchase_details] CHECK CONSTRAINT [FK_purchase_details_purchases]
GO
ALTER TABLE [dbo].[purchases]  WITH CHECK ADD  CONSTRAINT [FK_purchases_document_types] FOREIGN KEY([document_type_id])
REFERENCES [dbo].[document_types] ([id])
GO
ALTER TABLE [dbo].[purchases] CHECK CONSTRAINT [FK_purchases_document_types]
GO
ALTER TABLE [dbo].[purchases]  WITH CHECK ADD  CONSTRAINT [FK_purchases_entities] FOREIGN KEY([provider_id])
REFERENCES [dbo].[entities] ([id])
GO
ALTER TABLE [dbo].[purchases] CHECK CONSTRAINT [FK_purchases_entities]
GO
ALTER TABLE [dbo].[purchases]  WITH CHECK ADD  CONSTRAINT [FK_purchases_statuses] FOREIGN KEY([status_id])
REFERENCES [dbo].[statuses] ([id])
GO
ALTER TABLE [dbo].[purchases] CHECK CONSTRAINT [FK_purchases_statuses]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([rol_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO