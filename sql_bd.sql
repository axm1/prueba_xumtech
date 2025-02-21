USE [master]
GO
/****** Object:  Database [prueba_xumtech]    Script Date: 16/08/2024 02:53:36 p. m. ******/
CREATE DATABASE [prueba_xumtech]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prueba_xumtech', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\prueba_xumtech.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prueba_xumtech_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\prueba_xumtech_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [prueba_xumtech] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prueba_xumtech].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prueba_xumtech] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prueba_xumtech] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prueba_xumtech] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prueba_xumtech] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prueba_xumtech] SET ARITHABORT OFF 
GO
ALTER DATABASE [prueba_xumtech] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [prueba_xumtech] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prueba_xumtech] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prueba_xumtech] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prueba_xumtech] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prueba_xumtech] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prueba_xumtech] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prueba_xumtech] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prueba_xumtech] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prueba_xumtech] SET  ENABLE_BROKER 
GO
ALTER DATABASE [prueba_xumtech] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prueba_xumtech] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prueba_xumtech] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prueba_xumtech] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prueba_xumtech] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prueba_xumtech] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prueba_xumtech] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prueba_xumtech] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prueba_xumtech] SET  MULTI_USER 
GO
ALTER DATABASE [prueba_xumtech] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prueba_xumtech] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prueba_xumtech] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prueba_xumtech] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prueba_xumtech] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prueba_xumtech] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [prueba_xumtech] SET QUERY_STORE = ON
GO
ALTER DATABASE [prueba_xumtech] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [prueba_xumtech]
GO
/****** Object:  Table [dbo].[disponibilidad_producto_por_ubicacion]    Script Date: 16/08/2024 02:53:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disponibilidad_producto_por_ubicacion](
	[id_producto_por_ubicacion] [int] IDENTITY(1,1) NOT NULL,
	[id_modelo] [int] NOT NULL,
	[id_ubicacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto_por_ubicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 16/08/2024 02:53:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[id_marca] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelos]    Script Date: 16/08/2024 02:53:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelos](
	[id_modelo] [int] IDENTITY(1,1) NOT NULL,
	[id_marca] [int] NOT NULL,
	[modelos] [varchar](max) NULL,
	[precio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas_principales]    Script Date: 16/08/2024 02:53:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas_principales](
	[id_pregunta] [int] IDENTITY(1,1) NOT NULL,
	[pregunta] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicaciones]    Script Date: 16/08/2024 02:53:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicaciones](
	[id_ubicacion] [int] IDENTITY(1,1) NOT NULL,
	[ubicacion] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ubicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[disponibilidad_producto_por_ubicacion] ON 

INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (1, 1, 1)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (2, 1, 1)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (3, 2, 1)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (4, 3, 1)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (5, 4, 1)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (6, 2, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (7, 3, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (8, 4, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (9, 5, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (10, 6, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (11, 1, 3)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (12, 1, 3)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (13, 5, 3)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (14, 6, 3)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (15, 1, 1)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (16, 1, 1)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (17, 6, 3)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (18, 2, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (19, 2, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (21, 6, 3)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (22, 6, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (24, 6, 1)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (25, 5, 1)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (26, 5, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (27, 5, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (28, 5, 2)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (29, 4, 3)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (30, 4, 3)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (31, 3, 3)
INSERT [dbo].[disponibilidad_producto_por_ubicacion] ([id_producto_por_ubicacion], [id_modelo], [id_ubicacion]) VALUES (32, 3, 2)
SET IDENTITY_INSERT [dbo].[disponibilidad_producto_por_ubicacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Marcas] ON 

INSERT [dbo].[Marcas] ([id_marca], [marca]) VALUES (1, N'Honda')
INSERT [dbo].[Marcas] ([id_marca], [marca]) VALUES (2, N'Freedom')
SET IDENTITY_INSERT [dbo].[Marcas] OFF
GO
SET IDENTITY_INSERT [dbo].[Modelos] ON 

INSERT [dbo].[Modelos] ([id_modelo], [id_marca], [modelos], [precio]) VALUES (1, 1, N'Honda Navi', 1900)
INSERT [dbo].[Modelos] ([id_modelo], [id_marca], [modelos], [precio]) VALUES (2, 1, N'Honda  Hornet 150', 2100)
INSERT [dbo].[Modelos] ([id_modelo], [id_marca], [modelos], [precio]) VALUES (3, 1, N'Honda CRF 250F', 2700)
INSERT [dbo].[Modelos] ([id_modelo], [id_marca], [modelos], [precio]) VALUES (4, 2, N'Freedom Rider S', 2300)
INSERT [dbo].[Modelos] ([id_modelo], [id_marca], [modelos], [precio]) VALUES (5, 2, N'Freedom  Rider Evo', 2200)
INSERT [dbo].[Modelos] ([id_modelo], [id_marca], [modelos], [precio]) VALUES (6, 2, N'Freedom  ZC', 1900)
SET IDENTITY_INSERT [dbo].[Modelos] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas_principales] ON 

INSERT [dbo].[Preguntas_principales] ([id_pregunta], [pregunta]) VALUES (1, N'Compra de moto')
INSERT [dbo].[Preguntas_principales] ([id_pregunta], [pregunta]) VALUES (3, N'Ubicaciones en el país')
SET IDENTITY_INSERT [dbo].[Preguntas_principales] OFF
GO
SET IDENTITY_INSERT [dbo].[Ubicaciones] ON 

INSERT [dbo].[Ubicaciones] ([id_ubicacion], [ubicacion]) VALUES (1, N'San José, San Pedro Montes de Oca')
INSERT [dbo].[Ubicaciones] ([id_ubicacion], [ubicacion]) VALUES (2, N'Heredia, Santo Domingo')
INSERT [dbo].[Ubicaciones] ([id_ubicacion], [ubicacion]) VALUES (3, N'Guanacaste,Liberia')
SET IDENTITY_INSERT [dbo].[Ubicaciones] OFF
GO
USE [master]
GO
ALTER DATABASE [prueba_xumtech] SET  READ_WRITE 
GO
