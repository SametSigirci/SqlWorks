USE [IS-TAS]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 10.12.2018 03:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardExtra]    Script Date: 10.12.2018 03:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardExtra](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CardType] [int] NOT NULL,
	[CardExtra] [decimal](4, 2) NOT NULL,
 CONSTRAINT [PK_CardExtra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardHistory]    Script Date: 10.12.2018 03:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CardId] [uniqueidentifier] NOT NULL,
	[ReadedBalance] [decimal](5, 2) NOT NULL,
	[CurrentBalance] [decimal](5, 2) NOT NULL,
	[CurrentExtraBalance] [decimal](4, 2) NOT NULL,
	[Amount] [decimal](4, 2) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_CardHisyory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardType]    Script Date: 10.12.2018 03:44:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_CardType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardUser]    Script Date: 10.12.2018 03:44:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardUser](
	[Id] [uniqueidentifier] NOT NULL,
	[CardId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserSurname] [nvarchar](50) NULL,
	[BirthDate] [datetime] NULL,
 CONSTRAINT [PK_CardUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 10.12.2018 03:44:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyUser]    Script Date: 10.12.2018 03:44:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyUser](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](10) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
 CONSTRAINT [PK_CompanyUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 10.12.2018 03:44:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Id] [uniqueidentifier] NOT NULL,
	[LineInfo] [nvarchar](5) NULL,
	[Plate] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehiclePos]    Script Date: 10.12.2018 03:44:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehiclePos](
	[Id] [uniqueidentifier] NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[VehicleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_VehiclePos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehiclePosHistory]    Script Date: 10.12.2018 03:44:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehiclePosHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VehiclePosId] [uniqueidentifier] NOT NULL,
	[CardHistoryId] [bigint] NOT NULL,
	[Amount] [decimal](3, 2) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_VehiclePosHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendingMachine]    Script Date: 10.12.2018 03:44:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendingMachine](
	[Id] [uniqueidentifier] NOT NULL,
	[LocationInfo] [nvarchar](50) NULL,
 CONSTRAINT [PK_VendingMachine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendingMachineHistory]    Script Date: 10.12.2018 03:44:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendingMachineHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VendingMachineId] [uniqueidentifier] NOT NULL,
	[CardHistoryId] [bigint] NOT NULL,
	[ReadedBalance] [decimal](5, 2) NOT NULL,
	[ReadedExtraBalance] [decimal](4, 2) NOT NULL,
	[LastBalance] [decimal](5, 2) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_VendingMachineHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Card] ([Id], [Type]) VALUES (N'86758766-0003-4b16-a5e3-9fb459436dca', 1)
INSERT [dbo].[Card] ([Id], [Type]) VALUES (N'5b944750-ac8a-43db-8473-e068f1933292', 1)
SET IDENTITY_INSERT [dbo].[CardExtra] ON 

INSERT [dbo].[CardExtra] ([Id], [CardType], [CardExtra]) VALUES (1, 1, CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[CardExtra] ([Id], [CardType], [CardExtra]) VALUES (2, 2, CAST(15.00 AS Decimal(4, 2)))
SET IDENTITY_INSERT [dbo].[CardExtra] OFF
SET IDENTITY_INSERT [dbo].[CardHistory] ON 

INSERT [dbo].[CardHistory] ([Id], [CardId], [ReadedBalance], [CurrentBalance], [CurrentExtraBalance], [Amount], [Date]) VALUES (3, N'86758766-0003-4b16-a5e3-9fb459436dca', CAST(0.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(N'2018-12-10T02:01:01.963' AS DateTime))
INSERT [dbo].[CardHistory] ([Id], [CardId], [ReadedBalance], [CurrentBalance], [CurrentExtraBalance], [Amount], [Date]) VALUES (4, N'86758766-0003-4b16-a5e3-9fb459436dca', CAST(5.00 AS Decimal(5, 2)), CAST(30.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(25.00 AS Decimal(4, 2)), CAST(N'2018-12-10T02:07:06.783' AS DateTime))
INSERT [dbo].[CardHistory] ([Id], [CardId], [ReadedBalance], [CurrentBalance], [CurrentExtraBalance], [Amount], [Date]) VALUES (5, N'86758766-0003-4b16-a5e3-9fb459436dca', CAST(30.00 AS Decimal(5, 2)), CAST(28.25 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(-1.75 AS Decimal(4, 2)), CAST(N'2018-12-10T02:15:26.860' AS DateTime))
INSERT [dbo].[CardHistory] ([Id], [CardId], [ReadedBalance], [CurrentBalance], [CurrentExtraBalance], [Amount], [Date]) VALUES (6, N'5b944750-ac8a-43db-8473-e068f1933292', CAST(0.00 AS Decimal(5, 2)), CAST(10.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(10.00 AS Decimal(4, 2)), CAST(N'2018-12-10T02:54:03.257' AS DateTime))
INSERT [dbo].[CardHistory] ([Id], [CardId], [ReadedBalance], [CurrentBalance], [CurrentExtraBalance], [Amount], [Date]) VALUES (7, N'5b944750-ac8a-43db-8473-e068f1933292', CAST(10.00 AS Decimal(5, 2)), CAST(8.25 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(-1.75 AS Decimal(4, 2)), CAST(N'2018-12-10T02:55:55.773' AS DateTime))
INSERT [dbo].[CardHistory] ([Id], [CardId], [ReadedBalance], [CurrentBalance], [CurrentExtraBalance], [Amount], [Date]) VALUES (8, N'5b944750-ac8a-43db-8473-e068f1933292', CAST(8.15 AS Decimal(5, 2)), CAST(6.50 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(-1.75 AS Decimal(4, 2)), CAST(N'2018-12-10T03:28:25.917' AS DateTime))
INSERT [dbo].[CardHistory] ([Id], [CardId], [ReadedBalance], [CurrentBalance], [CurrentExtraBalance], [Amount], [Date]) VALUES (9, N'5b944750-ac8a-43db-8473-e068f1933292', CAST(6.50 AS Decimal(5, 2)), CAST(4.75 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(-1.75 AS Decimal(4, 2)), CAST(N'2018-12-10T03:29:02.730' AS DateTime))
INSERT [dbo].[CardHistory] ([Id], [CardId], [ReadedBalance], [CurrentBalance], [CurrentExtraBalance], [Amount], [Date]) VALUES (10, N'5b944750-ac8a-43db-8473-e068f1933292', CAST(4.75 AS Decimal(5, 2)), CAST(3.75 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(-1.00 AS Decimal(4, 2)), CAST(N'2018-12-10T03:33:51.933' AS DateTime))
SET IDENTITY_INSERT [dbo].[CardHistory] OFF
SET IDENTITY_INSERT [dbo].[CardType] ON 

INSERT [dbo].[CardType] ([Id], [TypeName]) VALUES (1, N'Öğrenci')
INSERT [dbo].[CardType] ([Id], [TypeName]) VALUES (2, N'Yaşlı')
INSERT [dbo].[CardType] ([Id], [TypeName]) VALUES (3, N'Normal')
SET IDENTITY_INSERT [dbo].[CardType] OFF
INSERT [dbo].[CardUser] ([Id], [CardId], [UserName], [UserSurname], [BirthDate]) VALUES (N'684797fa-ba13-49b7-a96d-ac753b2abf71', N'5b944750-ac8a-43db-8473-e068f1933292', N'Aykut', N'Sığırcı', CAST(N'1988-09-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CardUser] ([Id], [CardId], [UserName], [UserSurname], [BirthDate]) VALUES (N'60310af0-cb0c-4a1e-878e-d5128ef68d5b', N'86758766-0003-4b16-a5e3-9fb459436dca', N'Samet', N'Sığırcı', CAST(N'1988-09-03T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Id], [Name]) VALUES (1, N'İstanbul Taşımacılık A.Ş.')
SET IDENTITY_INSERT [dbo].[Company] OFF
INSERT [dbo].[CompanyUser] ([Id], [Name], [Surname], [UserName], [Password], [CompanyId]) VALUES (N'a36d3cfa-1a3a-40b3-8ab0-a4f9c03bb5b0', N'Aykut', N'Sığırcı', N'Ayk', N'Ayk123', 1)
INSERT [dbo].[Vehicle] ([Id], [LineInfo], [Plate]) VALUES (N'00d6a1cc-52cf-4af5-87f7-8719a25d2a78', N'34A', N'34 abc 34')
INSERT [dbo].[Vehicle] ([Id], [LineInfo], [Plate]) VALUES (N'09df1f1b-7425-48fc-a461-def7d44407e1', N'34G', N'34 abc 35')
INSERT [dbo].[VehiclePos] ([Id], [CompanyId], [VehicleId]) VALUES (N'4d21c187-e69a-4163-9854-2b94e5390372', 1, N'09df1f1b-7425-48fc-a461-def7d44407e1')
INSERT [dbo].[VehiclePos] ([Id], [CompanyId], [VehicleId]) VALUES (N'd02e57ba-4107-4f4a-b1b4-df0d73cedcfe', 1, N'00d6a1cc-52cf-4af5-87f7-8719a25d2a78')
SET IDENTITY_INSERT [dbo].[VehiclePosHistory] ON 

INSERT [dbo].[VehiclePosHistory] ([Id], [VehiclePosId], [CardHistoryId], [Amount], [Date]) VALUES (1, N'd02e57ba-4107-4f4a-b1b4-df0d73cedcfe', 5, CAST(1.75 AS Decimal(3, 2)), CAST(N'2018-12-10T02:15:34.200' AS DateTime))
INSERT [dbo].[VehiclePosHistory] ([Id], [VehiclePosId], [CardHistoryId], [Amount], [Date]) VALUES (2, N'd02e57ba-4107-4f4a-b1b4-df0d73cedcfe', 7, CAST(1.75 AS Decimal(3, 2)), CAST(N'2018-12-10T02:57:24.647' AS DateTime))
INSERT [dbo].[VehiclePosHistory] ([Id], [VehiclePosId], [CardHistoryId], [Amount], [Date]) VALUES (3, N'd02e57ba-4107-4f4a-b1b4-df0d73cedcfe', 8, CAST(1.75 AS Decimal(3, 2)), CAST(N'2018-12-10T03:28:28.303' AS DateTime))
INSERT [dbo].[VehiclePosHistory] ([Id], [VehiclePosId], [CardHistoryId], [Amount], [Date]) VALUES (4, N'd02e57ba-4107-4f4a-b1b4-df0d73cedcfe', 9, CAST(1.75 AS Decimal(3, 2)), CAST(N'2018-12-10T03:29:10.287' AS DateTime))
INSERT [dbo].[VehiclePosHistory] ([Id], [VehiclePosId], [CardHistoryId], [Amount], [Date]) VALUES (5, N'4d21c187-e69a-4163-9854-2b94e5390372', 10, CAST(1.00 AS Decimal(3, 2)), CAST(N'2018-12-10T03:34:13.330' AS DateTime))
SET IDENTITY_INSERT [dbo].[VehiclePosHistory] OFF
INSERT [dbo].[VendingMachine] ([Id], [LocationInfo]) VALUES (N'6a665e39-6bed-40ad-a1a9-3ee375cec9ad', N'Cevahir Avm metro')
SET IDENTITY_INSERT [dbo].[VendingMachineHistory] ON 

INSERT [dbo].[VendingMachineHistory] ([Id], [VendingMachineId], [CardHistoryId], [ReadedBalance], [ReadedExtraBalance], [LastBalance], [Date]) VALUES (1, N'6a665e39-6bed-40ad-a1a9-3ee375cec9ad', 3, CAST(0.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(5, 2)), CAST(N'2018-12-10T02:06:09.887' AS DateTime))
INSERT [dbo].[VendingMachineHistory] ([Id], [VendingMachineId], [CardHistoryId], [ReadedBalance], [ReadedExtraBalance], [LastBalance], [Date]) VALUES (2, N'6a665e39-6bed-40ad-a1a9-3ee375cec9ad', 4, CAST(5.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(30.00 AS Decimal(5, 2)), CAST(N'2018-12-10T02:07:47.397' AS DateTime))
INSERT [dbo].[VendingMachineHistory] ([Id], [VendingMachineId], [CardHistoryId], [ReadedBalance], [ReadedExtraBalance], [LastBalance], [Date]) VALUES (3, N'6a665e39-6bed-40ad-a1a9-3ee375cec9ad', 6, CAST(0.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(4, 2)), CAST(10.00 AS Decimal(5, 2)), CAST(N'2018-12-10T02:55:04.150' AS DateTime))
SET IDENTITY_INSERT [dbo].[VendingMachineHistory] OFF
/****** Object:  Index [IX_CardUser]    Script Date: 10.12.2018 03:44:44 ******/
ALTER TABLE [dbo].[CardUser] ADD  CONSTRAINT [IX_CardUser] UNIQUE NONCLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Card] ADD  CONSTRAINT [DF_Card_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CardUser] ADD  CONSTRAINT [DF_CardUser_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CompanyUser] ADD  CONSTRAINT [DF_CompanyUser_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF_Vehicle_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[VehiclePos] ADD  CONSTRAINT [DF_VehiclePos_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[VendingMachine] ADD  CONSTRAINT [DF_VendingMachine_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CardHistory]  WITH CHECK ADD  CONSTRAINT [FK_CardHistory_Card] FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[CardHistory] CHECK CONSTRAINT [FK_CardHistory_Card]
GO
ALTER TABLE [dbo].[CardUser]  WITH CHECK ADD  CONSTRAINT [FK_CardUser_Card] FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[CardUser] CHECK CONSTRAINT [FK_CardUser_Card]
GO
ALTER TABLE [dbo].[VehiclePos]  WITH CHECK ADD  CONSTRAINT [FK_VehiclePos_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[VehiclePos] CHECK CONSTRAINT [FK_VehiclePos_Company]
GO
ALTER TABLE [dbo].[VehiclePos]  WITH CHECK ADD  CONSTRAINT [FK_VehiclePos_Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([Id])
GO
ALTER TABLE [dbo].[VehiclePos] CHECK CONSTRAINT [FK_VehiclePos_Vehicle]
GO
ALTER TABLE [dbo].[VendingMachineHistory]  WITH CHECK ADD  CONSTRAINT [FK_VendingMachineHistory_CardHistory] FOREIGN KEY([CardHistoryId])
REFERENCES [dbo].[CardHistory] ([Id])
GO
ALTER TABLE [dbo].[VendingMachineHistory] CHECK CONSTRAINT [FK_VendingMachineHistory_CardHistory]
GO
ALTER TABLE [dbo].[VendingMachineHistory]  WITH CHECK ADD  CONSTRAINT [FK_VendingMachineHistory_VendingMachine] FOREIGN KEY([VendingMachineId])
REFERENCES [dbo].[VendingMachine] ([Id])
GO
ALTER TABLE [dbo].[VendingMachineHistory] CHECK CONSTRAINT [FK_VendingMachineHistory_VendingMachine]
GO
