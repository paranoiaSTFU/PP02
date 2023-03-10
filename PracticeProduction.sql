USE [master]
GO
/****** Object:  Database [PracticeProduction]    Script Date: 15.12.2022 19:40:21 ******/
CREATE DATABASE [PracticeProduction]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PracticeProduction', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PracticeProduction.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PracticeProduction_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PracticeProduction_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PracticeProduction] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PracticeProduction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PracticeProduction] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PracticeProduction] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PracticeProduction] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PracticeProduction] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PracticeProduction] SET ARITHABORT OFF 
GO
ALTER DATABASE [PracticeProduction] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PracticeProduction] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PracticeProduction] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PracticeProduction] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PracticeProduction] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PracticeProduction] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PracticeProduction] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PracticeProduction] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PracticeProduction] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PracticeProduction] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PracticeProduction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PracticeProduction] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PracticeProduction] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PracticeProduction] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PracticeProduction] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PracticeProduction] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PracticeProduction] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PracticeProduction] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PracticeProduction] SET  MULTI_USER 
GO
ALTER DATABASE [PracticeProduction] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PracticeProduction] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PracticeProduction] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PracticeProduction] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PracticeProduction] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PracticeProduction] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PracticeProduction] SET QUERY_STORE = OFF
GO
USE [PracticeProduction]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 15.12.2022 19:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[IDProduct] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[IDType] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 15.12.2022 19:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[IDType] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[IDType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 15.12.2022 19:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([IDProduct], [Name], [Description], [Quantity], [IDType]) VALUES (1, N'Монитор Logitech', N'Очень крутой монитор, всем мониторам монитор. Он настолько крут, что ты даже не представляешь себе.', 1, 2)
INSERT [dbo].[Products] ([IDProduct], [Name], [Description], [Quantity], [IDType]) VALUES (2, N'Мышка Logitech', N'Ультра крутая мышка от Лоджитыкис быкис икис', 10, 1)
INSERT [dbo].[Products] ([IDProduct], [Name], [Description], [Quantity], [IDType]) VALUES (8, N'dsadasdasdasd', N'1213dsafawegsdzgsadgsdgsxzv@!#$T!#R!FQ#RFQD', 123, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Types] ON 

INSERT [dbo].[Types] ([IDType], [Name]) VALUES (1, N'Переферия')
INSERT [dbo].[Types] ([IDType], [Name]) VALUES (2, N'Детали')
INSERT [dbo].[Types] ([IDType], [Name]) VALUES (3, N'Железо')
INSERT [dbo].[Types] ([IDType], [Name]) VALUES (4, N'Хлам')
SET IDENTITY_INSERT [dbo].[Types] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IdUser], [Login], [Password]) VALUES (13, N'ADMIN', N'1652243E33542AFCD9888A416316FA86')
INSERT [dbo].[User] ([IdUser], [Login], [Password]) VALUES (14, N'Admine', N'84B4D72D195B50628783D6F992E02A77')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Types] FOREIGN KEY([IDType])
REFERENCES [dbo].[Types] ([IDType])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Types]
GO
USE [master]
GO
ALTER DATABASE [PracticeProduction] SET  READ_WRITE 
GO
