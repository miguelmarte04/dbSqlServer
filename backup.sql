USE [master]
GO
/****** Object:  Database [FERRETERIAFANTINO]    Script Date: 31/07/2022 15:58:24 ******/
CREATE DATABASE [FERRETERIAFANTINO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FERRETERIAFANTINO', FILENAME = N'C:\DB\FERRETERIAFANTINO\FERRETERIAFANTINO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FERRETERIAFANTINO_log', FILENAME = N'C:\DB\FERRETERIAFANTINO\FERRETERIAFANTINO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FERRETERIAFANTINO] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FERRETERIAFANTINO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FERRETERIAFANTINO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET ARITHABORT OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET  MULTI_USER 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FERRETERIAFANTINO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FERRETERIAFANTINO] SET QUERY_STORE = OFF
GO
USE [FERRETERIAFANTINO]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [FERRETERIAFANTINO]
GO
/****** Object:  Table [dbo].[administrador]    Script Date: 31/07/2022 15:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administrador](
	[id_administrador] [int] NOT NULL,
	[id_sucursal_ultima_sesion] [int] NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[usuario] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[ultima_sesion] [varchar](50) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_administrador] PRIMARY KEY CLUSTERED 
(
	[id_administrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cargos]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargos](
	[id_cargo] [int] NOT NULL,
	[cargo] [varchar](50) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_cargos] PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] NOT NULL,
	[categoria] [varchar](50) NULL,
	[abreviatura_categoria] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[estado] [varchar](1) NOT NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compras]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compras](
	[id_compra] [int] NOT NULL,
	[id_cliente] [int] NULL,
	[id_empleado] [int] NULL,
	[id_tipo_pago] [int] NULL,
	[id_sucursal] [int] NULL,
	[id_producto] [int] NULL,
	[monto] [int] NULL,
	[cantidad] [int] NULL,
	[precio] [int] NULL,
	[total_compra] [int] NULL,
	[fecha_insercion] [datetime] NULL,
	[estado_compra] [varchar](1) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_compras] PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datos_empleado]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datos_empleado](
	[id_datos_empleado] [int] NOT NULL,
	[id_empleado] [int] NULL,
	[nombres] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[cedula] [varchar](11) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_datos_empleado] PRIMARY KEY CLUSTERED 
(
	[id_datos_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamento](
	[id_departamento] [int] NOT NULL,
	[departamento] [varchar](50) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_departamento] PRIMARY KEY CLUSTERED 
(
	[id_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[id_empleado] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_departamento] [int] NOT NULL,
	[id_cargo] [int] NULL,
	[usuario] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[RUC] [varchar](50) NOT NULL,
	[cargo] [varchar](50) NOT NULL,
	[estado] [varchar](1) NOT NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventario](
	[id_inventario] [int] NOT NULL,
	[id_producto] [int] NULL,
	[cantidad] [int] NULL,
	[precio] [int] NULL,
	[id_empleado_insercion] [int] NULL,
	[fecha_insercion] [datetime] NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_inventario] PRIMARY KEY CLUSTERED 
(
	[id_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] NOT NULL,
	[id_categoria] [int] NULL,
	[id_proveedor] [int] NULL,
	[marca] [varchar](50) NULL,
	[nombre_producto] [varchar](50) NULL,
	[precio] [int] NULL,
	[abrev_producto] [varchar](50) NULL,
	[descripcion_producto] [varchar](100) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[id_proveedor] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[telefono] [varchar](10) NULL,
	[comentario] [varchar](100) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_proveedor] PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincia](
	[id_provincia] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_provincia] PRIMARY KEY CLUSTERED 
(
	[id_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[id_sucursal] [int] NOT NULL,
	[id_provincia] [int] NULL,
	[sucursal] [varchar](50) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_sucursal] PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_pago]    Script Date: 31/07/2022 15:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_pago](
	[id_tipo_pago] [int] NOT NULL,
	[tipo] [varchar](50) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_tipo_pago] PRIMARY KEY CLUSTERED 
(
	[id_tipo_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[administrador] ADD  CONSTRAINT [DF_administrador_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[cargos] ADD  CONSTRAINT [DF_cargos_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[categoria] ADD  CONSTRAINT [DF_categoria_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [DF_cliente_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[datos_empleado] ADD  CONSTRAINT [DF_datos_empleado_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[departamento] ADD  CONSTRAINT [DF_departamento_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[empleado] ADD  CONSTRAINT [DF_empleado_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[inventario] ADD  CONSTRAINT [DF_inventario_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF_producto_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[proveedor] ADD  CONSTRAINT [DF_proveedor_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[sucursal] ADD  CONSTRAINT [DF_sucursal_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[tipo_pago] ADD  CONSTRAINT [DF_tipo_pago_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [dbo].[administrador]  WITH CHECK ADD  CONSTRAINT [FK_administrador_sucursal] FOREIGN KEY([id_sucursal_ultima_sesion])
REFERENCES [dbo].[sucursal] ([id_sucursal])
GO
ALTER TABLE [dbo].[administrador] CHECK CONSTRAINT [FK_administrador_sucursal]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_cliente]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_empleado] FOREIGN KEY([id_compra])
REFERENCES [dbo].[empleado] ([id_empleado])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_empleado]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_producto]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_sucursal] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id_sucursal])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_sucursal]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [FK_compras_tipo_pago] FOREIGN KEY([id_tipo_pago])
REFERENCES [dbo].[tipo_pago] ([id_tipo_pago])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [FK_compras_tipo_pago]
GO
ALTER TABLE [dbo].[datos_empleado]  WITH CHECK ADD  CONSTRAINT [FK_datos_empleado_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id_empleado])
GO
ALTER TABLE [dbo].[datos_empleado] CHECK CONSTRAINT [FK_datos_empleado_empleado]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_cargos] FOREIGN KEY([id_cargo])
REFERENCES [dbo].[cargos] ([id_cargo])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_cargos]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_departamento] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_departamento]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_sucursal] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id_sucursal])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_sucursal]
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_empleado] FOREIGN KEY([id_empleado_insercion])
REFERENCES [dbo].[empleado] ([id_empleado])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [FK_inventario_empleado]
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [FK_inventario_producto]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_categoria] FOREIGN KEY([id_producto])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_categoria]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_proveedor] FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedor] ([id_proveedor])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_proveedor]
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD  CONSTRAINT [FK_sucursal_provincia] FOREIGN KEY([id_provincia])
REFERENCES [dbo].[provincia] ([id_provincia])
GO
ALTER TABLE [dbo].[sucursal] CHECK CONSTRAINT [FK_sucursal_provincia]
GO
USE [master]
GO
ALTER DATABASE [FERRETERIAFANTINO] SET  READ_WRITE 
GO
