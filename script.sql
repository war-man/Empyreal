USE [master]
GO
/****** Object:  Database [Empyreal]    Script Date: 05/05/2019 01:18:56 PM ******/
CREATE DATABASE [Empyreal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Empyreal', FILENAME = N'E:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Empyreal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Empyreal_log', FILENAME = N'E:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Empyreal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Empyreal] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Empyreal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Empyreal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Empyreal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Empyreal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Empyreal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Empyreal] SET ARITHABORT OFF 
GO
ALTER DATABASE [Empyreal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Empyreal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Empyreal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Empyreal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Empyreal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Empyreal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Empyreal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Empyreal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Empyreal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Empyreal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Empyreal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Empyreal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Empyreal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Empyreal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Empyreal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Empyreal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Empyreal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Empyreal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Empyreal] SET  MULTI_USER 
GO
ALTER DATABASE [Empyreal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Empyreal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Empyreal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Empyreal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Empyreal] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Empyreal', N'ON'
GO
ALTER DATABASE [Empyreal] SET QUERY_STORE = OFF
GO
USE [Empyreal]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Empyreal]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05/05/2019 01:18:57 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentId] [int] NULL,
	[UserId] [nvarchar](500) NULL,
	[Contents] [nvarchar](500) NULL,
	[CreateDate] [date] NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[ID] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[Password] [varchar](100) NULL,
	[BirthDate] [date] NULL,
	[Sex] [nvarchar](50) NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](450) NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetail]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CartID] [int] NULL,
	[ProductDetailID] [int] NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_CartDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](2000) NULL,
	[Describe] [nvarchar](2000) NULL,
	[CreateBy] [nvarchar](450) NULL,
	[CreateDate] [date] NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Contents] [nvarchar](2000) NULL,
	[ProductId] [int] NULL,
	[UserId] [nvarchar](450) NULL,
	[CreateDate] [date] NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](1000) NULL,
	[ProductID] [int] NULL,
	[State] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateByUser] [nvarchar](450) NULL,
	[LastModifyDate] [datetime] NULL,
	[LastModifyByUser] [nvarchar](450) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[PriceSum] [float] NULL,
	[CreateDate] [date] NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductDetailID] [int] NULL,
	[Price] [float] NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05/05/2019 01:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](2000) NULL,
	[State] [int] NULL,
	[UserID] [nvarchar](450) NULL,
	[CatalogID] [int] NULL,
	[Description] [nvarchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[CreateByUser] [nvarchar](450) NULL,
	[LastModifyDate] [datetime] NULL,
	[LastModifyByUser] [nvarchar](450) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 05/05/2019 01:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[Size] [int] NULL,
	[Color] [int] NULL,
	[Quantity] [int] NULL,
	[State] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateByUser] [nvarchar](450) NULL,
	[LastModifyDate] [datetime] NULL,
	[LastModifyByUser] [nvarchar](450) NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPrice]    Script Date: 05/05/2019 01:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPrice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductDetailID] [int] NULL,
	[Price] [float] NULL,
	[State] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateByUser] [nvarchar](450) NULL,
	[LastModifyDate] [datetime] NULL,
	[LastModifyByUser] [nvarchar](450) NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 05/05/2019 01:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Text] [nvarchar](50) NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 05/05/2019 01:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Contents] [nvarchar](3000) NULL,
	[ProductID] [int] NULL,
	[UserID] [nvarchar](450) NULL,
	[Star] [int] NULL,
	[CreateDate] [date] NULL,
	[Tilte] [nvarchar](2000) NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181203172758_EmpyrealSchema', N'2.1.4-rtm-31024')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'19c7eb46-dc27-4c38-8d0a-7212326ef3a8', N'SuperAdmin', N'SUPERADMIN', N'4c9c7ba2-739a-4e0d-9f44-92be35623e5e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5e81789d-ceaf-4459-b0ed-66aab3e5dcd4', N'User', N'USER', N'b59b542e-9c7f-49bb-9a47-c62877fd04fb')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'98cd2479-263f-493b-977d-0178c3ff2098', N'Admin', N'ADMIN', N'fc5e8dfb-2ca2-4927-bcea-954d8135b382')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'5c492868-8ede-4cb4-941d-b46475edff9c', N'HoTen', N'Ngọc Thiện')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6b143218-347c-4e11-a508-ebc84eeea0ae', N'5e81789d-ceaf-4459-b0ed-66aab3e5dcd4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'98418380-26e6-4aa6-8926-26d745326963', N'5e81789d-ceaf-4459-b0ed-66aab3e5dcd4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b8d7ead9-e83f-44bf-b4b2-2a8c8433dbe1', N'5e81789d-ceaf-4459-b0ed-66aab3e5dcd4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b96440ee-6f73-4544-ae4e-8c231ef88244', N'5e81789d-ceaf-4459-b0ed-66aab3e5dcd4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cbfcdf6a-f64f-4051-91cf-d910a53248ed', N'5e81789d-ceaf-4459-b0ed-66aab3e5dcd4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e8c05231-201d-4d0a-864c-f376ac943f3c', N'5e81789d-ceaf-4459-b0ed-66aab3e5dcd4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5c492868-8ede-4cb4-941d-b46475edff9c', N'98cd2479-263f-493b-977d-0178c3ff2098')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd72e6531-ba3b-4011-a957-84fa4ebd8b9a', N'98cd2479-263f-493b-977d-0178c3ff2098')
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'01ee31fb-3e45-402c-9216-0fcbc9176c2d', N'123456789123', N'123456789123', N'pham_my2008@yahoo.com', N'PHAM_MY2008@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEKAjoU4AFV9BlqHYl1plP6srPUCHynS2M5tJ4oGZgTSaZqVrt1pfgokAvLxKdeHQog==', N'YYOUJUI3XAC3BTYN3FZEPWMMG3RZ4XD6', N'e76598d9-ee8a-4113-9021-fd631113ecd1', N'123456789123', 0, 0, NULL, 1, 0, N'Mỹ Phạm', NULL, CAST(N'2004-03-03' AS Date), N'Nam', 0)
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'540f62cc-f5cf-4385-974b-49b0eb8381a2', N'123456789', N'123456789', N'pham_my1997@yahoo.com', N'PHAM_MY1997@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEGFtF+1L8xSaInxnmMa6FBqYLZrSkQa9K4dOlGlLIKPHi7xHEZbxsvpXGR5hbt6BqA==', N'7PFBSRZCLINQZ3NN6MBBOPDKIJCQ5EPJ', N'fc73cb13-13b6-4380-b212-fb4067b041f3', N'123456789', 0, 0, NULL, 1, 0, N'Mỹ Mỹ', NULL, CAST(N'1997-04-05' AS Date), N'Nam', 0)
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'5c492868-8ede-4cb4-941d-b46475edff9c', N'0964736522', N'0964736522', N'thien@gmail.com', N'THIEN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEERV7eoQ+Rm9lKxVo/Gse6qqauDH21G+Q/W6o1T7uxCNDBbRWbAHqBUUaPq7YWYY6g==', N'4W4OSJSHIEVZEP2GHUYVHF52CPZGAWV7', N'5b8a200e-a95a-4f90-9542-624ea0f0f2c8', N'0964736522', 0, 0, NULL, 1, 0, N'Ngọc Thiện', NULL, CAST(N'1996-09-07' AS Date), N'Nam', 1)
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'6b143218-347c-4e11-a508-ebc84eeea0ae', N'789789', N'789789', N'qwasdqw@gmail.com', N'QWASDQW@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECjJNveAgb65warU8cVq1jS/u3xbuQe5ryeeYCN/SxFUykv6jiwsRFkvbWF/K0Vtuw==', N'GJNEOUYDQM6HER75Y4MUCUCSDA2ZD5SO', N'1ec6cc61-8c63-4cb7-8a43-3ba65879bc73', N'789789', 0, 0, NULL, 1, 0, N'Thiện', NULL, CAST(N'2000-10-10' AS Date), N'Nam', 1)
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'98418380-26e6-4aa6-8926-26d745326963', N'0199999999', N'0199999999', N'qweqwtf@gmail.com', N'QWEQWTF@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECuLFLUEsWblvyHZvK9Q8YPF1K7V4ncBFqQZs5wvnQEwRJbHLplFTRqUCghX5DowDA==', N'355ZR7HOSZOY2R2D7OZ7DKDPMIX5B2YH', N'cd0040ac-83e1-42f6-b0f3-a04c7193f739', N'0199999999', 0, 0, NULL, 1, 0, N'Mỹ bắn ngu', NULL, CAST(N'2000-01-02' AS Date), N'Nam', 1)
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'b8d7ead9-e83f-44bf-b4b2-2a8c8433dbe1', N'777999', N'777999', N'test1@gmail.com', N'TEST1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMZZo1Uk1PdcPWxvSnPDvcXgTG0+/1TVjtSxPii65DjJ1/jEjgbWQLQhhgnXDGXaKQ==', N'7GJ27YZDCWC2OIA7ES6TDGQFXYKGEDK7', N'b34b99b5-505c-4733-8741-7f2004f2bdb2', N'777999', 0, 0, NULL, 1, 0, N'Test1', NULL, CAST(N'2019-01-01' AS Date), N'Nam', 1)
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'b96440ee-6f73-4544-ae4e-8c231ef88244', N'0123456789', N'0123456789', N'ginny@gorillaspace.co', N'GINNY@GORILLASPACE.CO', 0, N'AQAAAAEAACcQAAAAEGR29503zqMSzgB278eigBfckANca9BM3gv/ruaQJoMBZ7NJVQWnnJjCAUXJ3Nv2LA==', N'JA4F3AKBSBJUOKLA2TB52REAMMEOQ3Y5', N'551c869a-455d-49df-a047-f17f80f65cda', N'0123456789', 0, 0, NULL, 1, 0, N'ngocthien', NULL, CAST(N'2000-11-25' AS Date), NULL, 1)
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'cbfcdf6a-f64f-4051-91cf-d910a53248ed', N'09647365221', N'09647365221', N'ginny@gorillaspace.com', N'GINNY@GORILLASPACE.COM', 0, N'AQAAAAEAACcQAAAAEBvqL754VtR1fZbSQJ/7p8WRC9LJ+o5y+RHUSEjbMELdU878lm2wigEBLiJiRJoEOQ==', N'ESXRTLEPSMLBKWZ6O2JP2B3TRPFTYKJF', N'88532076-fcef-4286-8638-d643dd7b8781', N'09647365221', 0, 0, NULL, 1, 0, N'Ngọc Thiện', NULL, CAST(N'2002-09-07' AS Date), N'Nam', 1)
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'd72e6531-ba3b-4011-a957-84fa4ebd8b9a', N'666999', N'666999', N'test@gmail.com', N'TEST@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC8txAA0GU7CoLbfwI/cfPOBMpWkMOyMV1QMiB5LKl58golg4vRmRG6amhlWq+m1FQ==', N'2PU4JDSBNBHYKISHFSVY3MGFMI2LIZE5', N'3600f90c-0c82-4de2-8e16-60a8507a892f', N'666999', 0, 0, NULL, 1, 0, N'Test', NULL, CAST(N'2019-01-01' AS Date), N'Nam', 0)
INSERT [dbo].[AspNetUsers] ([ID], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [HoTen], [Password], [BirthDate], [Sex], [State]) VALUES (N'e8c05231-201d-4d0a-864c-f376ac943f3c', N'0939097743', N'0939097743', N'devil.pham24697@gmail.com', N'DEVIL.PHAM24697@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEL8rjJ0pvULGJ5PaD4MUgq76l69to3nbt3dQrYCRTwzHBim05BRBWYIppQbZPQULuA==', N'CEABURNRMSKO6GX7RJT66LUFYTOYIPO6', N'cba23d2d-3459-4607-9623-94bd537b120f', N'0939097743', 0, 0, NULL, 1, 0, N'Phạm Lương Mỹ', NULL, CAST(N'1997-11-07' AS Date), N'Nam', 1)
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([ID], [UserID], [State]) VALUES (1, N'5c492868-8ede-4cb4-941d-b46475edff9c', NULL)
INSERT [dbo].[Cart] ([ID], [UserID], [State]) VALUES (2, N'6b143218-347c-4e11-a508-ebc84eeea0ae', NULL)
INSERT [dbo].[Cart] ([ID], [UserID], [State]) VALUES (3, N'e8c05231-201d-4d0a-864c-f376ac943f3c', NULL)
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[Catalog] ON 

INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (1, N'Áo', N'<p>&Aacute;o đẹp</p>
', N'e8c05231-201d-4d0a-864c-f376ac943f3c', CAST(N'2018-11-26' AS Date), 1)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (2, N'Quần', NULL, N'e8c05231-201d-4d0a-864c-f376ac943f3c', CAST(N'2018-11-26' AS Date), 1)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (3, N'Giày', NULL, N'e8c05231-201d-4d0a-864c-f376ac943f3c', CAST(N'2018-11-26' AS Date), 1)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (4, N'Áo Khoác', NULL, N'e8c05231-201d-4d0a-864c-f376ac943f3c', CAST(N'2018-11-26' AS Date), 1)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (5, N'Balo', NULL, N'e8c05231-201d-4d0a-864c-f376ac943f3c', CAST(N'2018-11-26' AS Date), 1)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (6, N'Điện thoại', N'<p>Tất cả c&aacute;c d&ograve;ng điện thoại từ đập đ&aacute; tới flagship rất rất tốt</p>
', N'e8c05231-201d-4d0a-864c-f376ac943f3c', CAST(N'2019-01-01' AS Date), 1)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (7, N'Mỹ phẩm', N'<p>Mỹ phẩm tốt</p>
', N'5c492868-8ede-4cb4-941d-b46475edff9c', CAST(N'2019-01-01' AS Date), 1)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (8, N'Chuột máy tính', N'<p>Chuột m&aacute;y t&iacute;nh</p>
', N'5c492868-8ede-4cb4-941d-b46475edff9c', CAST(N'2019-01-01' AS Date), 1)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (9, N'Bàn phím', N'<p>B&agrave;n ph&iacute;m tốt</p>
', N'5c492868-8ede-4cb4-941d-b46475edff9c', CAST(N'2019-01-01' AS Date), 1)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (10, N'Laptop', N'<p>Laptop tốt</p>
', N'5c492868-8ede-4cb4-941d-b46475edff9c', CAST(N'2019-01-01' AS Date), 0)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (11, N'Điện lạnh', N'<p>Điện lạnh tốt</p>
', N'5c492868-8ede-4cb4-941d-b46475edff9c', CAST(N'2019-01-01' AS Date), 0)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (12, N'Xe', N'<p>Đủ loại&nbsp;</p>
', N'5c492868-8ede-4cb4-941d-b46475edff9c', CAST(N'2019-01-01' AS Date), 0)
INSERT [dbo].[Catalog] ([ID], [Name], [Describe], [CreateBy], [CreateDate], [State]) VALUES (13, N'Thiết bị thông minh', N'<p>Thiết bị th&ocirc;ng minh r&acirc;t th&ocirc;ng minh</p>
', N'5c492868-8ede-4cb4-941d-b46475edff9c', CAST(N'2019-01-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Catalog] OFF
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (1, N'/images/06b45445-7140-4949-93fc-3c857a0666b4.jpg', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (2, N'/images/6b195fa0-9478-48c1-ba08-362539c395f5.jpg', 3, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (3, N'/images/5caa483a-5034-42d2-acbb-b2cb6494bec5.jpg', 7, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (4, N'/images/42611709-53df-4a94-825c-b8def26ab6b1.jpg', 9, 1, CAST(N'2019-05-05T12:01:31.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (5, N'/images/ff69e78d-ea3c-4fb5-a9b2-6db6ced6f19a.jpg', 11, 1, CAST(N'2019-05-05T12:22:36.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (6, N'/images/dc99f2c6-8772-476a-a0ee-b2fabb1a9414.jpg', 12, 1, CAST(N'2019-05-05T12:24:45.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (7, N'/images/826c448c-69b2-421b-92b1-dc109592aef6.jpg', 12, 1, CAST(N'2019-05-05T12:24:45.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (8, N'/images/f79c4c60-cfaa-4cf4-a7d0-de8aa9f1a5db.jpg', 12, 1, CAST(N'2019-05-05T12:24:45.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (9, N'/images/7474d5f8-2d9c-415a-bdf8-8b3e91e8fa56.jpg', 15, 1, CAST(N'2019-05-05T12:39:58.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (10, N'/images/70ff5a59-55b1-4357-a1c9-15bb855c2c82.jpg', 16, 1, CAST(N'2019-05-05T12:41:17.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (11, N'/images/e8a295b4-f3c4-45c1-899d-03d40e3e0656.jpg', 18, 1, CAST(N'2019-05-05T12:47:49.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (12, N'/images/d23967aa-ff01-4682-bd20-43a062e77a20.jpg', 19, 1, CAST(N'2019-05-05T12:48:33.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (13, N'/images/b1cc8655-1802-49d6-86f0-98f6d6f3c62b.jpg', NULL, 1, CAST(N'2019-05-05T13:13:06.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Image] ([ID], [Url], [ProductID], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (14, N'/images/e5f4f423-e682-4fff-865d-0eedcfe9ea27.jpg', 30, 1, CAST(N'2019-05-05T13:15:35.000' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Image] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (2, N'NewNewNhe', 1, NULL, 2, N'<p>123</p>
', CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (3, N'Test', 1, NULL, 1, N'<p>&aacute;d</p>
', CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (4, N'Test2', 1, NULL, 3, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (5, N'Test2', 1, NULL, 3, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (6, N'Teset32', 1, NULL, 3, N'<p>&aacute;dsad</p>
', CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (7, N'New', 1, NULL, 3, N'<p>&aacute;dasdsad</p>
', CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (8, N'New 2', 1, NULL, 1, N'<p>New 2</p>
', CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (9, N'New22', 1, NULL, 4, N'<p>Hahasd</p>
', CAST(N'2019-05-05T12:01:31.370' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (10, N'TeserNew2', 1, NULL, 3, N'<p>&aacute;dsad</p>
', CAST(N'2019-05-05T12:06:18.030' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (11, N'Haha', 1, NULL, 3, N'<p>&aacute;dsadasd</p>
', CAST(N'2019-05-05T12:22:36.090' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (12, N'HEheh', 1, NULL, 3, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T12:24:45.750' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (13, N'Huhuh', 1, NULL, 2, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T12:27:17.047' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (14, N'TesetFinal', 1, NULL, 2, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T12:30:28.830' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (15, N'Rưaar', 1, NULL, 3, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T12:39:58.293' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (16, N'hahahah', 1, NULL, 2, N'<p>s&aacute;d</p>
', CAST(N'2019-05-05T12:41:17.690' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (17, N'hehe', 1, NULL, 2, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T12:42:27.480' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (18, N'ádasd', 1, NULL, 3, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T12:47:49.713' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (19, N'ádasd', 1, NULL, 2, N'<p>&aacute;dsad</p>
', CAST(N'2019-05-05T12:48:33.933' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (20, N'hahahsa', 1, NULL, 4, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T12:54:32.307' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (21, N'ss', 1, NULL, 2, N'<p>&aacute;d</p>
', CAST(N'2019-05-05T12:55:39.747' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (22, N'New', 1, NULL, 2, N'<p>&aacute;d</p>
', CAST(N'2019-05-05T12:56:49.357' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (23, N'New2', 1, NULL, 1, N'<p>s&acirc;</p>
', CAST(N'2019-05-05T13:01:08.650' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (24, N'New2', 1, NULL, 4, N'<p>&aacute;d</p>
', CAST(N'2019-05-05T13:02:34.287' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (25, N'ádasd', 1, NULL, 3, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T13:04:07.827' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (26, N'New2ád', 1, NULL, 2, N'<p>&aacute;d</p>
', CAST(N'2019-05-05T13:05:41.523' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (27, N'New22', 1, NULL, 5, N'<p>&aacute;d</p>
', CAST(N'2019-05-05T13:11:07.593' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (28, N'New22', 1, NULL, 1, N'<p>&aacute;dsad</p>
', CAST(N'2019-05-05T13:11:33.020' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (29, N'New22', 1, NULL, 1, N'<p>&aacute;dasd</p>
', CAST(N'2019-05-05T13:14:47.223' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [State], [UserID], [CatalogID], [Description], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (30, N'New22', 1, NULL, 5, N'<p>&aacute;d</p>
', CAST(N'2019-05-05T13:15:35.117' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductDetail] ON 

INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (3, 2, 8, 4, 7, 11, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (4, 2, 9, 3, 9, 5, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (5, 3, 10, 2, 10, 1, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (6, 4, 11, 5, 10, 1, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (7, 5, 12, 5, 10, 1, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (8, 6, 13, 5, 10, 2, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (9, 7, 14, 5, 10, 1, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (10, 8, 15, 2, 10, 1, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (11, 9, 16, 5, 10, 1, 1, CAST(N'2019-05-05T12:01:31.373' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (12, 10, 17, 5, 10, 1, 1, CAST(N'2019-05-05T12:06:18.030' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (13, 11, 18, 2, 10, 11, 1, CAST(N'2019-05-05T12:22:36.090' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (14, 11, 19, 5, 10, 15, 1, CAST(N'2019-05-05T12:22:36.090' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (15, 12, 20, 3, 10, 1, 1, CAST(N'2019-05-05T12:24:45.750' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (16, 12, 21, 2, 7, 3, 1, CAST(N'2019-05-05T12:24:45.750' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (17, 12, 22, 1, 9, 5, 1, CAST(N'2019-05-05T12:24:45.750' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (18, 13, 23, 2, 6, 1, 1, CAST(N'2019-05-05T12:27:17.050' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (19, 13, 24, 1, 8, 1, 1, CAST(N'2019-05-05T12:27:17.050' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (20, 14, 25, 3, 9, 1, 1, CAST(N'2019-05-05T12:30:28.830' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (21, 14, 26, 2, 8, 1, 1, CAST(N'2019-05-05T12:30:28.830' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (22, 15, 27, 2, 7, 1, 1, CAST(N'2019-05-05T12:39:58.293' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (23, 15, 28, 1, 11, 3, 1, CAST(N'2019-05-05T12:39:58.297' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (24, 16, 29, 3, 11, 1, 1, CAST(N'2019-05-05T12:41:17.690' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (25, 16, 30, 4, 6, 3, 1, CAST(N'2019-05-05T12:41:17.690' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (26, 17, 31, 3, 10, 1, 1, CAST(N'2019-05-05T12:42:27.480' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (27, 17, 32, 1, 10, 1, 1, CAST(N'2019-05-05T12:42:27.480' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (28, 18, 33, 5, 10, 1, 1, CAST(N'2019-05-05T12:47:49.717' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (29, 18, 34, 5, 10, 1, 1, CAST(N'2019-05-05T12:47:49.717' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (30, 19, 35, 5, 10, 1, 1, CAST(N'2019-05-05T12:48:33.933' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (31, 19, 36, 5, 10, 1, 1, CAST(N'2019-05-05T12:48:33.933' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (32, 20, 37, 5, 10, 11, 1, CAST(N'2019-05-05T12:54:32.307' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (33, 20, 38, 5, 8, 13, 1, CAST(N'2019-05-05T12:54:32.310' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (34, 21, 39, 3, 10, 1, 1, CAST(N'2019-05-05T12:55:39.747' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (35, 21, 40, 2, 10, 1, 1, CAST(N'2019-05-05T12:55:39.747' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (36, 22, 41, 2, 11, 1, 1, CAST(N'2019-05-05T12:56:49.357' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (37, 22, 42, 1, 10, 1, 1, CAST(N'2019-05-05T12:56:49.357' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (38, 23, 43, 5, 10, 1, 1, CAST(N'2019-05-05T13:01:08.653' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (39, 23, 44, 5, 10, 1, 1, CAST(N'2019-05-05T13:01:08.653' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (40, 24, 45, 5, 10, 1, 1, CAST(N'2019-05-05T13:02:34.287' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (41, 24, 46, 5, 10, 1, 1, CAST(N'2019-05-05T13:02:34.290' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (42, 25, 47, 3, 10, 1, 1, CAST(N'2019-05-05T13:04:07.827' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (43, 25, 48, 5, 10, 1, 1, CAST(N'2019-05-05T13:04:07.827' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (44, 26, 49, 2, 10, 1, 1, CAST(N'2019-05-05T13:05:41.523' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (45, 26, 50, 5, 10, 1, 1, CAST(N'2019-05-05T13:05:41.523' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (46, 27, 51, 5, 10, 1, 1, CAST(N'2019-05-05T13:11:07.593' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (47, 28, 52, 2, 10, 1, 1, CAST(N'2019-05-05T13:11:33.020' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (48, 28, 53, 5, 10, 1, 1, CAST(N'2019-05-05T13:11:33.020' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (49, 29, 56, 3, 9, 12, 1, CAST(N'2019-05-05T13:14:47.267' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (50, 29, 57, 5, 10, 132, 1, CAST(N'2019-05-05T13:14:47.327' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (51, 30, 58, 3, 10, 1, 1, CAST(N'2019-05-05T13:15:35.117' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductDetail] ([ID], [ProductID], [Price], [Size], [Color], [Quantity], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (52, 30, 59, 1, 10, 1, 1, CAST(N'2019-05-05T13:15:35.117' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF
SET IDENTITY_INSERT [dbo].[ProductPrice] ON 

INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (3, NULL, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (4, NULL, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (5, NULL, 22, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (6, NULL, 223, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (7, NULL, 33, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (8, NULL, 43, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (9, NULL, 76, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (10, NULL, 20, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (11, NULL, 0, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (12, NULL, 212, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (13, NULL, 3, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (14, NULL, 21, 1, CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (15, NULL, 32, 1, CAST(N'2019-05-05T11:56:10.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (16, NULL, 500, 1, CAST(N'2019-05-05T12:01:31.373' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (17, NULL, 0, 1, CAST(N'2019-05-05T12:06:18.030' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (18, 13, 50, 1, CAST(N'2019-05-05T12:22:36.090' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (19, NULL, 20, 1, CAST(N'2019-05-05T12:22:36.090' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (20, 15, 2, 1, CAST(N'2019-05-05T12:24:45.750' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (21, NULL, 4, 1, CAST(N'2019-05-05T12:24:45.750' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (22, NULL, 6, 1, CAST(N'2019-05-05T12:24:45.750' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (23, 18, 5, 1, CAST(N'2019-05-05T12:27:17.050' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (24, 19, 4, 1, CAST(N'2019-05-05T12:27:17.050' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (25, NULL, 3, 1, CAST(N'2019-05-05T12:30:28.830' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (26, NULL, 4, 1, CAST(N'2019-05-05T12:30:28.830' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (27, 22, 2, 1, CAST(N'2019-05-05T12:39:58.293' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (28, 23, 4, 1, CAST(N'2019-05-05T12:39:58.297' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (29, 24, 2, 1, CAST(N'2019-05-05T12:41:17.690' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (30, 25, 4, 1, CAST(N'2019-05-05T12:41:17.690' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (31, 26, 0, 1, CAST(N'2019-05-05T12:42:27.480' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (32, 27, 0, 1, CAST(N'2019-05-05T12:42:27.480' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (33, 28, 0, 1, CAST(N'2019-05-05T12:47:49.717' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (34, 29, 0, 1, CAST(N'2019-05-05T12:47:49.717' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (35, 30, 0, 1, CAST(N'2019-05-05T12:48:33.933' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (36, 31, 0, 1, CAST(N'2019-05-05T12:48:33.933' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (37, 32, 23, 1, CAST(N'2019-05-05T12:54:32.310' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (38, 33, 4, 1, CAST(N'2019-05-05T12:54:32.310' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (39, 34, 0, 1, CAST(N'2019-05-05T12:55:39.747' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (40, 35, 2, 1, CAST(N'2019-05-05T12:55:39.747' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (41, 36, 2, 1, CAST(N'2019-05-05T12:56:49.357' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (42, 37, 3, 1, CAST(N'2019-05-05T12:56:49.357' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (43, 38, 0, 1, CAST(N'2019-05-05T13:01:08.653' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (44, 39, 0, 1, CAST(N'2019-05-05T13:01:08.653' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (45, 40, 0, 1, CAST(N'2019-05-05T13:02:34.290' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (46, 41, 0, 1, CAST(N'2019-05-05T13:02:34.290' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (47, 42, 0, 1, CAST(N'2019-05-05T13:04:07.827' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (48, 43, 0, 1, CAST(N'2019-05-05T13:04:07.827' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (49, 44, 0, 1, CAST(N'2019-05-05T13:05:41.523' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (50, 45, 0, 1, CAST(N'2019-05-05T13:05:41.523' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (51, 46, 0, 1, CAST(N'2019-05-05T13:11:07.593' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (52, 47, 0, 1, CAST(N'2019-05-05T13:11:33.020' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (53, 48, 0, 1, CAST(N'2019-05-05T13:11:33.020' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (54, 49, 0, 1, CAST(N'2019-05-05T13:12:18.107' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (55, 50, 0, 1, CAST(N'2019-05-05T13:12:18.107' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (56, 49, 2, 1, CAST(N'2019-05-05T13:13:06.157' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (57, 50, 32, 1, CAST(N'2019-05-05T13:13:06.227' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (58, 51, 32, 1, CAST(N'2019-05-05T13:15:35.117' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ProductPrice] ([ID], [ProductDetailID], [Price], [State], [CreateDate], [CreateByUser], [LastModifyDate], [LastModifyByUser]) VALUES (59, 52, 34, 1, CAST(N'2019-05-05T13:15:35.117' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductPrice] OFF
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (1, N'Size', N'S', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (2, N'Size', N'M', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (3, N'Size', N'L', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (4, N'Size', N'XL', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (5, N'Size', N'FreeSize', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (6, N'Color', N'Xanh', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (7, N'Color', N'Đỏ', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (8, N'Color', N'Vàng', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (9, N'Color', N'Lục', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (10, N'Color', N'Đen', 1)
INSERT [dbo].[ProductType] ([ID], [Type], [Text], [State]) VALUES (11, N'Color', N'Trắng', 1)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartDetail_CartId]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_CartDetail_CartId] ON [dbo].[CartDetail]
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartDetail_ProductId]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_CartDetail_ProductId] ON [dbo].[CartDetail]
(
	[ProductDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_OrderId]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_OrderId] ON [dbo].[OrderDetail]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ProductId]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ProductId] ON [dbo].[OrderDetail]
(
	[ProductDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CatalogId]    Script Date: 05/05/2019 01:18:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_CatalogId] ON [dbo].[Product]
(
	[CatalogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Cart] FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([ID])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Cart]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_ProductDetail] FOREIGN KEY([ProductDetailID])
REFERENCES [dbo].[ProductDetail] ([ID])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_ProductDetail]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_ProductDetail] FOREIGN KEY([ProductDetailID])
REFERENCES [dbo].[ProductDetail] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_ProductDetail]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_AspNetUsers]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Catalog] FOREIGN KEY([CatalogID])
REFERENCES [dbo].[Catalog] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Catalog]
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [FK_ProductDetail_Product]
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_ProductPrice] FOREIGN KEY([Price])
REFERENCES [dbo].[ProductPrice] ([ID])
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [FK_ProductDetail_ProductPrice]
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_ProductType] FOREIGN KEY([Color])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [FK_ProductDetail_ProductType]
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_ProductType1] FOREIGN KEY([Size])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [FK_ProductDetail_ProductType1]
GO
ALTER TABLE [dbo].[ProductPrice]  WITH CHECK ADD  CONSTRAINT [FK_ProductPrice_ProductDetail] FOREIGN KEY([ProductDetailID])
REFERENCES [dbo].[ProductDetail] ([ID])
GO
ALTER TABLE [dbo].[ProductPrice] CHECK CONSTRAINT [FK_ProductPrice_ProductDetail]
GO
USE [master]
GO
ALTER DATABASE [Empyreal] SET  READ_WRITE 
GO
