USE [master]
GO
/****** Object:  Database [mycarsystem_DB]    Script Date: 12/08/2021 16:02:20 ******/
CREATE DATABASE [mycarsystem_DB] ON  PRIMARY 
( NAME = N'mycarsystem_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\mycarsystem_DB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mycarsystem_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\mycarsystem_DB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mycarsystem_DB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mycarsystem_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mycarsystem_DB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [mycarsystem_DB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [mycarsystem_DB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [mycarsystem_DB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [mycarsystem_DB] SET ARITHABORT OFF
GO
ALTER DATABASE [mycarsystem_DB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [mycarsystem_DB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [mycarsystem_DB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [mycarsystem_DB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [mycarsystem_DB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [mycarsystem_DB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [mycarsystem_DB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [mycarsystem_DB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [mycarsystem_DB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [mycarsystem_DB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [mycarsystem_DB] SET  DISABLE_BROKER
GO
ALTER DATABASE [mycarsystem_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [mycarsystem_DB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [mycarsystem_DB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [mycarsystem_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [mycarsystem_DB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [mycarsystem_DB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [mycarsystem_DB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [mycarsystem_DB] SET  READ_WRITE
GO
ALTER DATABASE [mycarsystem_DB] SET RECOVERY FULL
GO
ALTER DATABASE [mycarsystem_DB] SET  MULTI_USER
GO
ALTER DATABASE [mycarsystem_DB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [mycarsystem_DB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'mycarsystem_DB', N'ON'
GO
USE [mycarsystem_DB]
GO
/****** Object:  Table [dbo].[car_info]    Script Date: 12/08/2021 16:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[car_info](
	[car_num] [char](10) NOT NULL,
	[car_name] [varchar](15) NOT NULL,
	[car_type] [char](15) NULL,
	[car_color] [varchar](50) NOT NULL,
	[car_manufacturer] [varchar](30) NOT NULL,
	[car_dateofmanufacture] [date] NOT NULL,
	[car_price] [decimal](10, 2) NOT NULL,
	[car_amount] [int] NOT NULL,
 CONSTRAINT [PK__car_info__387286F408EA5793] PRIMARY KEY CLUSTERED 
(
	[car_num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'18        ', N'思域', N'燃油           ', N'蓝色', N'F生产商', CAST(0x8A410B00 AS Date), CAST(80000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'19        ', N'思域', N'电动           ', N'灰色 ', N'G生产商', CAST(0xF7420B00 AS Date), CAST(90000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'20        ', N'奔驰', N'燃油           ', N'青春蓝 ', N'H生产商', CAST(0xD43B0B00 AS Date), CAST(900000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'21        ', N'大众', N'燃油           ', N'稳重蓝      ', N'H生产商', CAST(0x0B410B00 AS Date), CAST(90000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'22        ', N'奥迪', N'混合动力       ', N'稳重黑      ', N'H生产商', CAST(0xFD3F0B00 AS Date), CAST(300000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'23        ', N'别克', N'燃油           ', N'黑色        ', N'U生产商', CAST(0x17400B00 AS Date), CAST(100000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'24        ', N'大众', N'混合动力       ', N'灰色        ', N'I生产商', CAST(0x3D3D0B00 AS Date), CAST(90000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'25        ', N'思域', N'混合动力       ', N'稳重黑      ', N'Y生产商', CAST(0xD43B0B00 AS Date), CAST(80000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'26        ', N'思域', N'燃油           ', N'青春红      ', N'U生产商', CAST(0x213D0B00 AS Date), CAST(90000.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'27        ', N'思域', N'电动           ', N'宝蓝        ', N'Q生产商', CAST(0x87370B00 AS Date), CAST(90000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'28        ', N'大众', N'电动           ', N'红色        ', N'R生产商', CAST(0x24330B00 AS Date), CAST(100000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'29        ', N'大众', N'电动           ', N'忧郁黑      ', N'D生产商', CAST(0x413D0B00 AS Date), CAST(80000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'30        ', N'法拉利', N'燃油           ', N'稳重黑      ', N'U生产商', CAST(0xFB3F0B00 AS Date), CAST(900000.00 AS Decimal(10, 2)), 12)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'31        ', N'宝马', N'电动           ', N'稳重黑      ', N'Y生产商', CAST(0xAE3E0B00 AS Date), CAST(1000000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'32        ', N'红旗', N'混合动力       ', N'黑色        ', N'Q生产商', CAST(0x8A410B00 AS Date), CAST(800000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'33        ', N'本田', N'电动           ', N'白色        ', N'U生产商', CAST(0x1C400B00 AS Date), CAST(300000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'34        ', N'比亚迪', N'燃油           ', N'青春蓝      ', N'Q生产商', CAST(0xAD3E0B00 AS Date), CAST(200000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'35        ', N'比亚迪', N'混合动力       ', N'黑色        ', N'U生产商', CAST(0xE03F0B00 AS Date), CAST(200000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'36        ', N'雅阁', N'燃油           ', N'灰色        ', N'I生产商', CAST(0x1B400B00 AS Date), CAST(100000.00 AS Decimal(10, 2)), 12)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'37        ', N'保时捷', N'燃油           ', N'黑色        ', N'O生产商', CAST(0xFA380B00 AS Date), CAST(1080000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'38        ', N'红旗', N'电动           ', N'黑红色      ', N'U生产商', CAST(0xF83F0B00 AS Date), CAST(600000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'39        ', N'五菱汽车', N'燃油           ', N'白色        ', N'H生产商', CAST(0xE13C0B00 AS Date), CAST(200000.00 AS Decimal(10, 2)), 13)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'40        ', N'大众', N'混合动力       ', N'黑色        ', N'Y生产商', CAST(0xC33C0B00 AS Date), CAST(150000.00 AS Decimal(10, 2)), 20)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'41        ', N'特斯拉', N'混合动力       ', N'白色        ', N'U生产商', CAST(0x18400B00 AS Date), CAST(680000.00 AS Decimal(10, 2)), 12)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'42        ', N'法拉利', N'电动           ', N'稳重黑      ', N'Y生产商', CAST(0x253D0B00 AS Date), CAST(900000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'43        ', N'五羊本田', N'燃油           ', N'黑色        ', N'I生产商', CAST(0x85410B00 AS Date), CAST(130000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'44        ', N'思域', N'燃油           ', N'白色        ', N'O生产商', CAST(0xDF3F0B00 AS Date), CAST(100000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'45        ', N'比亚迪', N'电动           ', N'灰色        ', N'Y生产商', CAST(0xF7420B00 AS Date), CAST(150000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'46        ', N'本田', N'混合动力       ', N'黑色        ', N'Y生产商', CAST(0x8A410B00 AS Date), CAST(300000.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'47        ', N'大众', N'燃油           ', N'黑色        ', N'O生产商', CAST(0x68410B00 AS Date), CAST(90000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[car_info] ([car_num], [car_name], [car_type], [car_color], [car_manufacturer], [car_dateofmanufacture], [car_price], [car_amount]) VALUES (N'48        ', N'本田', N'电动           ', N'灰色        ', N'O生产商', CAST(0x723E0B00 AS Date), CAST(130000.00 AS Decimal(10, 2)), 8)
/****** Object:  Table [dbo].[employee_info]    Script Date: 12/08/2021 16:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee_info](
	[employee_num] [char](10) NOT NULL,
	[employee_name] [varchar](30) NOT NULL,
	[password] [varchar](15) NOT NULL,
	[employee_age] [int] NULL,
	[employee_sex] [char](2) NULL,
	[department] [varchar](15) NOT NULL,
	[position] [varchar](15) NOT NULL,
	[employee_edubackground] [varchar](20) NOT NULL,
	[employee_birthplace] [varchar](20) NULL,
 CONSTRAINT [PK__employee__8D07AC8F628FA481] PRIMARY KEY CLUSTERED 
(
	[employee_num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'01        ', N'邓雨委', N'1', 20, N'男', N'董事会', N'CEO', N'本科', N'广东省肇庆市        ')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'02        ', N'张三', N'1', 21, N'男', N'仓库部门', N'主管', N'研究生', N'广东省广州市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'03        ', N'李四', N'1', 22, N'男', N'销售部门', N'主管', N'博士', N'广东省清远市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'04        ', N'王五', N'1', 23, N'男', N'售后部门', N'主管', N'硕士', N'广东省韶关市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'05        ', N'张一一', N'1', 20, N'女', N'销售部门', N'职工', N'本科', N'河北省石家庄市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'06        ', N'陈飞', N'1', 22, N'男', N'销售部门', N'职工', N'研究生', N'河北省唐山市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'07        ', N'老李', N'1', 21, N'男', N'销售部门', N'职工', N'本科', N'河北省邯郸市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'101       ', N'叶一', N'1', 21, N'女', N'仓库部门', N'职工', N'本科', N'湖南省衡阳市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'102       ', N'谭二', N'1', 24, N'女', N'仓库部门', N'职工', N'研究生', N'湖南省益阳市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'103       ', N'邓三', N'1', 21, N'女', N'仓库部门', N'职工', N'本科', N'河南省郑州市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'201       ', N'王一', N'1', 23, N'男', N'售后部门', N'职工', N'本科', N'河南省开封市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'202       ', N'谢菲', N'1', 21, N'女', N'售后部门', N'职工', N'本科', N'河南省洛阳市')
INSERT [dbo].[employee_info] ([employee_num], [employee_name], [password], [employee_age], [employee_sex], [department], [position], [employee_edubackground], [employee_birthplace]) VALUES (N'203       ', N'关小刀', N'1', 23, N'男', N'售后部门', N'职工', N'本科', N'广西省南宁市')
/****** Object:  Table [dbo].[customer_info]    Script Date: 12/08/2021 16:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer_info](
	[customer_num] [int] NOT NULL,
	[customer_name] [varchar](30) NOT NULL,
	[customer_contact] [char](11) NOT NULL,
	[customer_address] [varchar](100) NULL,
	[customer_business_contactrecord] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (1, N'邓雨委', N'18819792019', N'开心小区9号', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (2, N'冰', N'18819796235', N'幸福小区88号', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (3, N'leo', N'687978     ', N'知足小区6号', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (4, N'小雨', N'888976     ', N'知足小区8号', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (5, N'月鹏', N'888888     ', N'韶关', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (6, N'泽涛', N'18819792345', N'幸福小区08号', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (7, N'小鸣', N'18819792238', NULL, NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (8, N'小新', N'18819791289', N'悲伤小区09号', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (9, N'冰冰', N'888888     ', N'LL小区', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (10, N'李康', N'18819794234', N'开心小区23号', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (11, N'智星', N'18819798890', N'u小区', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (12, N'兆基', N'686979     ', N'悲伤小区大门', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (13, N'敏少', N'889967     ', N'深圳鹅城', NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (14, N'垲蓝', N'18819796666', NULL, NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (15, N'周老师', N'18819796777', NULL, NULL)
INSERT [dbo].[customer_info] ([customer_num], [customer_name], [customer_contact], [customer_address], [customer_business_contactrecord]) VALUES (16, N'小明', N'909988     ', NULL, NULL)
/****** Object:  Table [dbo].[carsales_info]    Script Date: 12/08/2021 16:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[carsales_info](
	[carsales_num] [int] NOT NULL,
	[car_num] [char](10) NOT NULL,
	[car_name] [varchar](15) NOT NULL,
	[customer_num] [int] NOT NULL,
	[customer_name] [varchar](30) NOT NULL,
	[carsales_type] [varchar](10) NOT NULL,
	[carsales_color] [varchar](10) NOT NULL,
	[caesales_salesamount] [decimal](10, 2) NOT NULL,
	[amount] [int] NOT NULL,
	[carsales_handlernum] [char](10) NOT NULL,
	[carsales_date] [date] NOT NULL,
 CONSTRAINT [PK__carsales__826E6A824A8310C6] PRIMARY KEY CLUSTERED 
(
	[carsales_num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (1, N'18        ', N'思域', 3, N'leo', N'燃油    ', N'蓝色  ', CAST(98000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x2F430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (2, N'18        ', N'思域', 3, N'leo', N'燃油    ', N'蓝色  ', CAST(190000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0x33430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (3, N'18        ', N'思域', 1, N'邓雨委', N'燃油    ', N'蓝色  ', CAST(98000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x39430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (4, N'21        ', N'大众', 8, N'小新', N'燃油    ', N'稳重蓝', CAST(200000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0x41430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (5, N'18        ', N'思域', 8, N'小新', N'燃油    ', N'蓝色  ', CAST(190000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0x45430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (6, N'29        ', N'大众', 2, N'冰', N'电动', N'忧郁黑', CAST(170000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0xBA420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (7, N'27        ', N'思域', 1, N'邓雨委', N'电动    ', N'宝蓝  ', CAST(200000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0x7E420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (8, N'28        ', N'大众', 2, N'冰', N'电动  ', N'红色  ', CAST(220000.00 AS Decimal(10, 2)), 5, N'05        ', CAST(0x59420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (9, N'22        ', N'奥迪', 3, N'leo', N'混合动力  ', N'稳重黑', CAST(1500000.00 AS Decimal(10, 2)), 4, N'05        ', CAST(0x1F420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (10, N'22        ', N'奥迪', 8, N'小新', N'混合动力', N'稳重黑', CAST(1080000.00 AS Decimal(10, 2)), 3, N'05        ', CAST(0x09420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (11, N'28        ', N'大众', 1, N'邓雨委', N'燃油    ', N'红色  ', CAST(110000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x2E430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (12, N'30        ', N'法拉利', 1, N'邓雨委', N'燃油    ', N'稳重黑', CAST(3100000.00 AS Decimal(10, 2)), 3, N'05        ', CAST(0x3E430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (13, N'23        ', N'别克', 2, N'冰', N'燃油', N'黑色  ', CAST(130000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x49430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (14, N'38        ', N'红旗', 1, N'邓雨委', N'电动', N'黑红色', CAST(1300000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0x52430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (15, N'39        ', N'五菱汽车', 5, N'月鹏', N'燃油', N'白色', CAST(220000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x6A430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (16, N'33        ', N'本田', 5, N'月鹏', N'电动', N'白色', CAST(330000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x54430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (17, N'34        ', N'比亚迪', 4, N'小雨', N'燃油', N'青春蓝', CAST(220000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x53430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (18, N'34        ', N'比亚迪', 3, N'leo', N'燃油', N'青春蓝', CAST(420000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0x31420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (19, N'37        ', N'保时捷', 6, N'泽涛', N'燃油', N'黑色', CAST(1120000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x2A420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (20, N'32        ', N'红旗', 7, N'小鸣', N'混合动力', N'黑色', CAST(880000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x2E420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (21, N'40        ', N'大众', 2, N'冰', N'混合动力', N'黑色', CAST(500000.00 AS Decimal(10, 2)), 3, N'05        ', CAST(0x58420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (22, N'23        ', N'别克', 4, N'小雨', N'燃油', N'黑色', CAST(130000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x0F420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (23, N'20        ', N'奔驰', 1, N'邓雨委', N'燃油', N'青春蓝', CAST(1000000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x00420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (24, N'20        ', N'奔驰', 1, N'邓雨委', N'燃油', N'青春蓝', CAST(2000000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0xFE410B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (25, N'36        ', N'雅阁', 3, N'leo', N'燃油', N'灰色', CAST(120000.00 AS Decimal(10, 2)), 2, N'06        ', CAST(0xFE410B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (26, N'37        ', N'保时捷', 7, N'小鸣', N'燃油', N'黑色', CAST(1100000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0xFF410B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (27, N'39        ', N'五菱汽车', 2, N'冰', N'燃油', N'白色', CAST(220000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x02420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (28, N'33        ', N'本田', 10, N'李康', N'电动', N'白色', CAST(680000.00 AS Decimal(10, 2)), 2, N'06        ', CAST(0x05420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (29, N'32        ', N'红旗', 4, N'小雨', N'混合动力', N'黑色', CAST(1800000.00 AS Decimal(10, 2)), 2, N'06        ', CAST(0x09420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (30, N'29        ', N'大众', 6, N'泽涛', N'电动', N'忧郁黑', CAST(200000.00 AS Decimal(10, 2)), 2, N'06        ', CAST(0x21420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (31, N'28        ', N'大众', 5, N'月鹏', N'电动', N'红色', CAST(210000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x41420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (32, N'36        ', N'雅阁', 8, N'小新', N'燃油', N'灰色', CAST(120000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x59420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (33, N'36        ', N'雅阁', 9, N'冰冰', N'燃油', N'灰色', CAST(218000.00 AS Decimal(10, 2)), 2, N'06        ', CAST(0x5C420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (34, N'40        ', N'大众', 2, N'冰', N'混合动力', N'黑色', CAST(188000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x78420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (35, N'25        ', N'思域', 3, N'leo', N'混合动力', N'稳重黑', CAST(180000.00 AS Decimal(10, 2)), 2, N'06        ', CAST(0x9B420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (36, N'23        ', N'别克', 10, N'李康', N'燃油', N'黑色', CAST(380000.00 AS Decimal(10, 2)), 3, N'06        ', CAST(0x9C420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (37, N'29        ', N'大众', 11, N'智星', N'电动', N'忧郁黑', CAST(98000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0xDA420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (38, N'35        ', N'比亚迪', 1, N'邓雨委', N'混合动力', N'黑色', CAST(220000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0xF2420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (39, N'38        ', N'红旗', 7, N'小鸣', N'电动', N'黑红色', CAST(680000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x16430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (40, N'30        ', N'法拉利', 5, N'月鹏', N'燃油', N'稳重黑', CAST(1800000.00 AS Decimal(10, 2)), 2, N'06        ', CAST(0x44430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (41, N'26        ', N'思域', 12, N'兆基', N'燃油', N'青春红', CAST(198000.00 AS Decimal(10, 2)), 2, N'06        ', CAST(0x4D430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (42, N'28        ', N'大众', 4, N'小雨', N'电动', N'红色', CAST(109000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x4E430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (43, N'31        ', N'宝马', 6, N'泽涛', N'电动', N'稳重黑', CAST(1080000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x53430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (44, N'32        ', N'红旗', 5, N'月鹏', N'混合动力', N'黑色', CAST(888000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x55430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (45, N'33        ', N'本田', 8, N'小新', N'电动', N'白色', CAST(688000.00 AS Decimal(10, 2)), 2, N'06        ', CAST(0x58430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (46, N'37        ', N'保时捷', 3, N'leo', N'燃油', N'黑色', CAST(1120000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x5C430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (47, N'40        ', N'大众', 13, N'敏少', N'混合动力', N'黑色', CAST(388000.00 AS Decimal(10, 2)), 2, N'07        ', CAST(0x00420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (48, N'36        ', N'雅阁', 3, N'leo', N'燃油', N'灰色', CAST(120000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x1F420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (49, N'20        ', N'奔驰', 1, N'邓雨委', N'燃油', N'青春蓝', CAST(1000000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x20420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (50, N'19        ', N'思域', 11, N'智星', N'电动', N'灰色', CAST(120000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x3A420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (51, N'24        ', N'大众', 2, N'冰', N'混合动力', N'灰色', CAST(108000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x58420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (52, N'30        ', N'法拉利', 7, N'小鸣', N'燃油', N'稳重黑', CAST(1080000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x5E420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (53, N'33        ', N'本田', 8, N'小新', N'电动', N'白色', CAST(608000.00 AS Decimal(10, 2)), 2, N'07        ', CAST(0x61420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (54, N'35        ', N'比亚迪', 6, N'泽涛', N'混合动力', N'黑色', CAST(208000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x64420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (55, N'39        ', N'五菱汽车', 4, N'小雨', N'燃油', N'白色', CAST(1138000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x68420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (56, N'34        ', N'比亚迪', 12, N'兆基', N'燃油', N'青春蓝', CAST(218000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x69420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (57, N'38        ', N'红旗', 5, N'月鹏', N'电动', N'黑红色', CAST(680000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x7E420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (58, N'39        ', N'五菱汽车', 2, N'冰', N'燃油', N'白色', CAST(238000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x97420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (59, N'21        ', N'大众', 9, N'冰冰', N'燃油', N'稳重蓝', CAST(198000.00 AS Decimal(10, 2)), 2, N'07        ', CAST(0xB4420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (60, N'26        ', N'思域', 6, N'泽涛', N'燃油', N'青春红', CAST(98000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0xBE420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (61, N'33        ', N'本田', 13, N'敏少', N'电动', N'白色', CAST(338000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0xBF420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (62, N'23        ', N'别克', 1, N'邓雨委', N'燃油', N'黑色', CAST(138000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0xF2420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (63, N'34        ', N'比亚迪 ', 11, N'智星', N'燃油', N'青春蓝', CAST(229000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0xF3420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (64, N'40        ', N'大众', 9, N'冰冰', N'混合动力', N'黑色', CAST(198000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0xFF420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (65, N'41        ', N'特斯拉', 7, N'小鸣', N'混合动力', N'白色', CAST(780000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x0F430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (66, N'36        ', N'雅阁', 3, N'leo', N'燃油', N'灰色', CAST(108000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x10430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (67, N'30        ', N'法拉利', 6, N'泽涛', N'燃油', N'稳重黑', CAST(1080000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x2E430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (68, N'41        ', N'特斯拉', 12, N'兆基', N'混合动力', N'白色', CAST(768000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x38430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (69, N'34        ', N'比亚迪', 4, N'小雨', N'燃油', N'青春蓝', CAST(220000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x39430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (70, N'36        ', N'雅阁', 1, N'邓雨委', N'燃油', N'灰色', CAST(200000.00 AS Decimal(10, 2)), 2, N'07        ', CAST(0x4E430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (71, N'41        ', N'特斯拉', 2, N'冰', N'混合动力', N'白色', CAST(708800.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x4F430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (72, N'41        ', N'特斯拉', 1, N'邓雨委', N'混合动力', N'白色', CAST(700000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x6A430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (73, N'41        ', N'特斯拉', 8, N'小新', N'混合动力', N'白色', CAST(1580000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0xA1420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (74, N'41        ', N'特斯拉', 5, N'月鹏', N'混合动力', N'白色', CAST(780000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0xA5420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (75, N'30        ', N'法拉利', 13, N'敏少', N'燃油', N'稳重黑', CAST(2080000.00 AS Decimal(10, 2)), 2, N'05        ', CAST(0xAC420B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (76, N'47        ', N'大众', 14, N'垲蓝', N'燃油', N'黑色', CAST(100000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x4E430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (77, N'48        ', N'本田', 1, N'邓雨委', N'电动', N'灰色', CAST(150000.00 AS Decimal(10, 2)), 1, N'05        ', CAST(0x50430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (78, N'48        ', N'本田', 7, N'小鸣', N'电动', N'灰色', CAST(150000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x51430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (79, N'43        ', N'五羊本田', 6, N'泽涛', N'燃油', N'黑色', CAST(180000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x51430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (80, N'30        ', N'法拉利', 3, N'leo', N'燃油', N'稳重黑', CAST(1060000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x51430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (81, N'42        ', N'法拉利', 4, N'小雨', N'电动', N'稳重黑', CAST(1008000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x51430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (82, N'45        ', N'比亚迪', 2, N'冰', N'电动', N'灰色', CAST(188000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x51430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (83, N'48        ', N'本田', 11, N'智星', N'电动', N'灰色', CAST(168000.00 AS Decimal(10, 2)), 1, N'06        ', CAST(0x51430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (84, N'48        ', N'本田', 14, N'垲蓝', N'电动', N'灰色', CAST(158000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x51430B00 AS Date))
INSERT [dbo].[carsales_info] ([carsales_num], [car_num], [car_name], [customer_num], [customer_name], [carsales_type], [carsales_color], [caesales_salesamount], [amount], [carsales_handlernum], [carsales_date]) VALUES (85, N'43        ', N'五羊本田', 5, N'月鹏', N'燃油', N'黑色', CAST(168000.00 AS Decimal(10, 2)), 1, N'07        ', CAST(0x51430B00 AS Date))
/****** Object:  StoredProcedure [dbo].[car_info_insert]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[car_info_insert]
	@car_num char(10),
	@car_name varchar(15),
	@car_type char(15),
	@car_color char(12),
	@car_manufacturer varchar(30),
	@car_dateofmanufacture date ,
	@car_price decimal(10,2),
	@car_amount int
as
begin
	insert into car_info
	values(@car_num,@car_name,@car_type,@car_color,@car_manufacturer,@car_dateofmanufacture,@car_price,@car_amount)

end
GO
/****** Object:  Table [dbo].[Aftersales_Servicerecords]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aftersales_Servicerecords](
	[record_num] [int] IDENTITY(1,1) NOT NULL,
	[customer_num] [int] NULL,
	[customer_name] [varchar](30) NOT NULL,
	[memo] [varchar](300) NOT NULL,
	[add_date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[record_num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Aftersales_Servicerecords] ON
INSERT [dbo].[Aftersales_Servicerecords] ([record_num], [customer_num], [customer_name], [memo], [add_date]) VALUES (1, 1, N'邓雨委', N'一套保养流程', CAST(0x40430B00 AS Date))
INSERT [dbo].[Aftersales_Servicerecords] ([record_num], [customer_num], [customer_name], [memo], [add_date]) VALUES (2, 1, N'邓雨委', N'没事，又来了一套', CAST(0x40430B00 AS Date))
INSERT [dbo].[Aftersales_Servicerecords] ([record_num], [customer_num], [customer_name], [memo], [add_date]) VALUES (3, 3, N'leo', N'维修车灯', CAST(0x40430B00 AS Date))
INSERT [dbo].[Aftersales_Servicerecords] ([record_num], [customer_num], [customer_name], [memo], [add_date]) VALUES (4, 1, N'邓雨委', N'闲聊', CAST(0x40430B00 AS Date))
INSERT [dbo].[Aftersales_Servicerecords] ([record_num], [customer_num], [customer_name], [memo], [add_date]) VALUES (7, 1, N'邓雨委', N'调试，try个没完', CAST(0x52430B00 AS Date))
SET IDENTITY_INSERT [dbo].[Aftersales_Servicerecords] OFF
/****** Object:  Table [dbo].[Aftersales_customerlist]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aftersales_customerlist](
	[customer_num] [int] NULL,
	[customer_name] [varchar](30) NOT NULL,
	[customer_contact] [char](11) NOT NULL,
	[servicetime] [varchar](10) NOT NULL,
	[add_date] [date] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Aftersales_customerlist] ([customer_num], [customer_name], [customer_contact], [servicetime], [add_date]) VALUES (3, N'leo', N'687978     ', N'2年', CAST(0x40430B00 AS Date))
INSERT [dbo].[Aftersales_customerlist] ([customer_num], [customer_name], [customer_contact], [servicetime], [add_date]) VALUES (8, N'小新', N'18819791289', N'2年', CAST(0x41430B00 AS Date))
INSERT [dbo].[Aftersales_customerlist] ([customer_num], [customer_name], [customer_contact], [servicetime], [add_date]) VALUES (2, N'冰', N'18819796235', N'2年', CAST(0x4E430B00 AS Date))
INSERT [dbo].[Aftersales_customerlist] ([customer_num], [customer_name], [customer_contact], [servicetime], [add_date]) VALUES (14, N'垲蓝', N'18819796666', N'2年', CAST(0x4E430B00 AS Date))
INSERT [dbo].[Aftersales_customerlist] ([customer_num], [customer_name], [customer_contact], [servicetime], [add_date]) VALUES (13, N'敏少', N'889697     ', N'2年', CAST(0x52430B00 AS Date))
INSERT [dbo].[Aftersales_customerlist] ([customer_num], [customer_name], [customer_contact], [servicetime], [add_date]) VALUES (4, N'小雨', N'888976     ', N'2年', CAST(0x52430B00 AS Date))
INSERT [dbo].[Aftersales_customerlist] ([customer_num], [customer_name], [customer_contact], [servicetime], [add_date]) VALUES (7, N'小鸣', N'18819792345', N'2年', CAST(0x52430B00 AS Date))
INSERT [dbo].[Aftersales_customerlist] ([customer_num], [customer_name], [customer_contact], [servicetime], [add_date]) VALUES (5, N'月鹏', N'888888     ', N'2年', CAST(0x52430B00 AS Date))
/****** Object:  Table [dbo].[Aftersales_Complain]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aftersales_Complain](
	[complain_num] [int] IDENTITY(1,1) NOT NULL,
	[customer_num] [int] NOT NULL,
	[customer_name] [varchar](30) NOT NULL,
	[complain_type] [varchar](50) NOT NULL,
	[complainmemo] [varchar](300) NOT NULL,
	[solution] [varchar](300) NOT NULL,
	[add_date] [date] NOT NULL,
 CONSTRAINT [PK__Aftersal__1C2018EE7849DB76] PRIMARY KEY CLUSTERED 
(
	[complain_num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Aftersales_Complain] ON
INSERT [dbo].[Aftersales_Complain] ([complain_num], [customer_num], [customer_name], [complain_type], [complainmemo], [solution], [add_date]) VALUES (1, 1, N'邓雨委', N'价格投诉', N'比刚买时，价格便宜了1000', N'补差价', CAST(0x40430B00 AS Date))
INSERT [dbo].[Aftersales_Complain] ([complain_num], [customer_num], [customer_name], [complain_type], [complainmemo], [solution], [add_date]) VALUES (2, 1, N'邓雨委', N'质量投诉', N'车门关不紧', N'第三方鉴定原因', CAST(0x40430B00 AS Date))
INSERT [dbo].[Aftersales_Complain] ([complain_num], [customer_num], [customer_name], [complain_type], [complainmemo], [solution], [add_date]) VALUES (3, 14, N'蓝', N'质量投诉', N'真的差', N'解释加补偿', CAST(0x4E430B00 AS Date))
SET IDENTITY_INSERT [dbo].[Aftersales_Complain] OFF
/****** Object:  StoredProcedure [dbo].[Setpassword]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Setpassword]
    @num char(10),
	@password varchar(20)
as 
begin
	update employee_info
	set password=@password
	where employee_num=@num

end
GO
/****** Object:  StoredProcedure [dbo].[Setname]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Setname]	
	@num char(10),
	@name varchar(30)
as
begin
	update employee_info
	set employee_name=@name
	where employee_num=@num
end
GO
/****** Object:  StoredProcedure [dbo].[Querycar_info]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Querycar_info]
	@num int =NULL,
	@name varchar(15)=NULL
as
begin
	select car_num,car_name,car_type,car_color,car_amount
	from car_info
	where (car_num is null and car_name is null) or 
	(car_num=@num and car_name is null) or (car_num is null and car_name=@name)
	or (car_num=@num and car_name=@name)
end
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Login]
	@user varchar(30),
	@department varchar(15),
	@password varchar(20) output
as
begin
	select @password = password
 	from employee_info 
	where employee_name = @user and department = @department
end
GO
/****** Object:  Table [dbo].[Warehouse_in]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Warehouse_in](
	[Warehouse_innum] [int] NOT NULL,
	[car_num] [char](10) NOT NULL,
	[amount] [int] NOT NULL,
	[Warehouse_indate] [date] NULL,
 CONSTRAINT [PK__Warehous__D9B01D77151B244E] PRIMARY KEY CLUSTERED 
(
	[Warehouse_innum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (1, N'18        ', 0, CAST(0x3B430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (2, N'19        ', 5, CAST(0x3B430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (3, N'20        ', 4, CAST(0x3B430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (4, N'21        ', 19, CAST(0x3B430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (5, N'22        ', 1, CAST(0x3B430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (6, N'23        ', 4, CAST(0x3B430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (7, N'24        ', 7, CAST(0x3E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (8, N'25        ', 6, CAST(0x3D430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (9, N'26        ', 4, CAST(0x3E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (10, N'27        ', 0, CAST(0x3E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (11, N'28        ', 0, CAST(0x3E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (12, N'29        ', 0, CAST(0x3E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (13, N'30        ', 2, CAST(0x46430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (14, N'31        ', 7, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (15, N'32        ', 6, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (16, N'33        ', 2, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (17, N'34        ', 4, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (18, N'35        ', 7, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (19, N'36        ', 3, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (20, N'37        ', 2, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (21, N'38        ', 6, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (22, N'39        ', 9, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (23, N'40        ', 12, CAST(0x48430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (24, N'41        ', 5, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (25, N'42        ', 9, CAST(0x4E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (26, N'43        ', 8, CAST(0x4E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (27, N'44        ', 9, CAST(0x4E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (28, N'45        ', 8, CAST(0x4E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (29, N'46        ', 7, CAST(0x4E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (30, N'47        ', 7, CAST(0x4E430B00 AS Date))
INSERT [dbo].[Warehouse_in] ([Warehouse_innum], [car_num], [amount], [Warehouse_indate]) VALUES (31, N'48        ', 3, CAST(0x50430B00 AS Date))
/****** Object:  StoredProcedure [dbo].[Getposition]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Getposition]	
	@num char(10),
	@position varchar(15)output
as
begin
	select @position = position
 	from employee_info 
	where employee_num=@num
end
GO
/****** Object:  StoredProcedure [dbo].[Getnum]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Getnum]	
    @user varchar(30),
	@password varchar(20),
	@num char(10)output
as
begin
	select @num = employee_num
 	from employee_info 
	where employee_name = @user and password=@password
end
GO
/****** Object:  Table [dbo].[Warehouse_out]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Warehouse_out](
	[Warehouse_outnum] [int] IDENTITY(1,1) NOT NULL,
	[Warehouse_innum] [int] NOT NULL,
	[car_num] [char](10) NOT NULL,
	[amount] [int] NOT NULL,
	[carsales_num] [int] NOT NULL,
	[Warehouse_outdate] [date] NULL,
 CONSTRAINT [PK__Warehous__BE8F52655CA1C101] PRIMARY KEY CLUSTERED 
(
	[Warehouse_outnum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Warehouse_out] ON
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (1, 1, N'18        ', 1, 1, CAST(0x3F430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (2, 1, N'18        ', 2, 2, CAST(0x3F430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (3, 1, N'18        ', 1, 3, CAST(0x3F430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (4, 4, N'21        ', 2, 4, CAST(0x3F430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (6, 1, N'18        ', 2, 5, CAST(0x3F430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (7, 12, N'29        ', 2, 6, CAST(0x45430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (8, 10, N'27        ', 2, 7, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (9, 11, N'28        ', 5, 8, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (10, 5, N'22        ', 4, 9, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (11, 5, N'22        ', 3, 10, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (12, 11, N'28        ', 1, 11, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (13, 13, N'30        ', 3, 12, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (14, 6, N'23        ', 1, 13, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (15, 21, N'38        ', 2, 14, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (16, 22, N'39        ', 1, 15, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (17, 16, N'33        ', 1, 15, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (18, 17, N'34        ', 1, 17, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (19, 16, N'33        ', 1, 16, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (20, 17, N'34        ', 2, 18, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (21, 20, N'37        ', 1, 19, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (22, 15, N'32        ', 1, 20, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (23, 23, N'40        ', 3, 21, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (24, 6, N'23        ', 1, 22, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (25, 3, N'20        ', 1, 23, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (26, 3, N'20        ', 2, 24, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (27, 19, N'36        ', 2, 25, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (28, 20, N'37        ', 1, 26, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (29, 22, N'39        ', 1, 27, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (30, 16, N'33        ', 2, 28, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (31, 15, N'32        ', 2, 29, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (32, 12, N'29        ', 2, 30, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (33, 11, N'28        ', 1, 31, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (34, 19, N'36        ', 1, 32, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (35, 19, N'36        ', 2, 33, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (36, 23, N'40        ', 1, 34, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (37, 8, N'25        ', 2, 35, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (38, 6, N'23        ', 3, 36, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (39, 12, N'29        ', 1, 37, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (40, 18, N'35        ', 1, 38, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (41, 21, N'38        ', 1, 39, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (42, 13, N'30        ', 2, 40, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (43, 9, N'26        ', 2, 41, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (44, 11, N'28        ', 1, 42, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (45, 14, N'31        ', 1, 43, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (46, 15, N'32        ', 1, 44, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (47, 16, N'33        ', 2, 45, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (48, 20, N'37        ', 1, 46, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (49, 23, N'40        ', 2, 47, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (50, 19, N'36        ', 1, 48, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (51, 3, N'20        ', 1, 49, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (52, 2, N'19        ', 1, 50, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (53, 7, N'24        ', 1, 51, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (54, 13, N'30        ', 1, 52, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (55, 16, N'33        ', 1, 53, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (56, 18, N'35        ', 1, 54, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (57, 22, N'39        ', 1, 55, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (58, 17, N'34        ', 1, 56, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (59, 21, N'38        ', 1, 57, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (60, 4, N'21        ', 2, 59, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (61, 9, N'26        ', 1, 60, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (62, 16, N'33        ', 1, 61, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (63, 6, N'23        ', 1, 62, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (64, 22, N'39        ', 1, 58, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (65, 17, N'34        ', 1, 63, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (66, 23, N'40        ', 1, 64, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (67, 24, N'41        ', 1, 65, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (68, 19, N'36        ', 1, 66, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (69, 13, N'30        ', 1, 67, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (70, 24, N'41        ', 1, 68, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (71, 17, N'34        ', 1, 69, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (72, 19, N'36        ', 2, 70, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (73, 24, N'41        ', 1, 71, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (74, 24, N'41        ', 1, 72, CAST(0x4B430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (75, 30, N'47        ', 1, 76, CAST(0x4E430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (76, 24, N'41        ', 2, 73, CAST(0x50430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (77, 24, N'41        ', 1, 74, CAST(0x50430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (78, 13, N'30        ', 2, 75, CAST(0x50430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (79, 31, N'48        ', 1, 77, CAST(0x50430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (80, 31, N'48        ', 1, 78, CAST(0x51430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (82, 26, N'43        ', 1, 79, CAST(0x51430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (83, 13, N'30        ', 1, 80, CAST(0x51430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (84, 25, N'42        ', 1, 81, CAST(0x51430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (85, 28, N'45        ', 1, 82, CAST(0x51430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (88, 31, N'48        ', 1, 83, CAST(0x51430B00 AS Date))
INSERT [dbo].[Warehouse_out] ([Warehouse_outnum], [Warehouse_innum], [car_num], [amount], [carsales_num], [Warehouse_outdate]) VALUES (92, 31, N'48        ', 1, 84, CAST(0x51430B00 AS Date))
SET IDENTITY_INSERT [dbo].[Warehouse_out] OFF
/****** Object:  StoredProcedure [dbo].[warehouse_inproc]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[warehouse_inproc]
	@car_num char(10),
	@amount int,
	@myinnum int
as
begin
	
	insert into Warehouse_in(Warehouse_innum,car_num,amount)
	values(@myinnum,@car_num,@amount)
    
end
GO
/****** Object:  StoredProcedure [dbo].[Getcarsales_amount]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Getcarsales_amount]
     @car_num char(10),
     @amount int output
as
begin
	select @amount=sum(amount)
	from carsales_info
	where car_num=@car_num
end
GO
/****** Object:  StoredProcedure [dbo].[Setwarehouse_amount]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Setwarehouse_amount]
	@car_num char(10),
	@amount int
as
begin
	update Warehouse_in
	set amount=@amount
	where car_num=@car_num
end
GO
/****** Object:  StoredProcedure [dbo].[Getwarehouse_innum]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Getwarehouse_innum]
	@car_num char(10),
	@warehouse_innum int output
as
begin
	select @warehouse_innum=Warehouse_innum
	from Warehouse_in
	where car_num=@car_num
end
GO
/****** Object:  StoredProcedure [dbo].[Getwarehouse_amount]    Script Date: 12/08/2021 16:02:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Getwarehouse_amount]
     @car_num char(10),
     @amount int output
as
begin
	select @amount=amount
	from Warehouse_in
	where car_num=@car_num
end
GO
/****** Object:  Default [DF__carsales___carsa__4E53A1AA]    Script Date: 12/08/2021 16:02:20 ******/
ALTER TABLE [dbo].[carsales_info] ADD  CONSTRAINT [DF__carsales___carsa__4E53A1AA]  DEFAULT (getdate()) FOR [carsales_date]
GO
/****** Object:  Default [DF__Aftersale__add_d__756D6ECB]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Aftersales_Servicerecords] ADD  DEFAULT (getdate()) FOR [add_date]
GO
/****** Object:  Default [DF__Aftersale__add_d__6FB49575]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Aftersales_customerlist] ADD  DEFAULT (getdate()) FOR [add_date]
GO
/****** Object:  Default [DF__Aftersale__add_d__7B264821]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Aftersales_Complain] ADD  CONSTRAINT [DF__Aftersale__add_d__7B264821]  DEFAULT (getdate()) FOR [add_date]
GO
/****** Object:  Default [DF__Warehouse__Wareh__17F790F9]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Warehouse_in] ADD  CONSTRAINT [DF__Warehouse__Wareh__17F790F9]  DEFAULT (getdate()) FOR [Warehouse_indate]
GO
/****** Object:  Default [DF__Warehouse__Wareh__6166761E]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Warehouse_out] ADD  CONSTRAINT [DF__Warehouse__Wareh__6166761E]  DEFAULT (getdate()) FOR [Warehouse_outdate]
GO
/****** Object:  Check [CK__employee___depar__656C112C]    Script Date: 12/08/2021 16:02:20 ******/
ALTER TABLE [dbo].[employee_info]  WITH CHECK ADD  CONSTRAINT [CK__employee___depar__656C112C] CHECK  (([department]='董事会' OR [department]='售后部门' OR [department]='销售部门' OR [department]='仓库部门'))
GO
ALTER TABLE [dbo].[employee_info] CHECK CONSTRAINT [CK__employee___depar__656C112C]
GO
/****** Object:  Check [CK__employee___emplo__6477ECF3]    Script Date: 12/08/2021 16:02:20 ******/
ALTER TABLE [dbo].[employee_info]  WITH CHECK ADD  CONSTRAINT [CK__employee___emplo__6477ECF3] CHECK  (([employee_sex]='女' OR [employee_sex]='男'))
GO
ALTER TABLE [dbo].[employee_info] CHECK CONSTRAINT [CK__employee___emplo__6477ECF3]
GO
/****** Object:  ForeignKey [FK__carsales___car_n__4C6B5938]    Script Date: 12/08/2021 16:02:20 ******/
ALTER TABLE [dbo].[carsales_info]  WITH CHECK ADD  CONSTRAINT [FK__carsales___car_n__4C6B5938] FOREIGN KEY([car_num])
REFERENCES [dbo].[car_info] ([car_num])
GO
ALTER TABLE [dbo].[carsales_info] CHECK CONSTRAINT [FK__carsales___car_n__4C6B5938]
GO
/****** Object:  ForeignKey [FK__carsales___carsa__4D5F7D71]    Script Date: 12/08/2021 16:02:20 ******/
ALTER TABLE [dbo].[carsales_info]  WITH CHECK ADD  CONSTRAINT [FK__carsales___carsa__4D5F7D71] FOREIGN KEY([carsales_handlernum])
REFERENCES [dbo].[employee_info] ([employee_num])
GO
ALTER TABLE [dbo].[carsales_info] CHECK CONSTRAINT [FK__carsales___carsa__4D5F7D71]
GO
/****** Object:  ForeignKey [FK__carsales___custo__6442E2C9]    Script Date: 12/08/2021 16:02:20 ******/
ALTER TABLE [dbo].[carsales_info]  WITH CHECK ADD  CONSTRAINT [FK__carsales___custo__6442E2C9] FOREIGN KEY([customer_num])
REFERENCES [dbo].[customer_info] ([customer_num])
GO
ALTER TABLE [dbo].[carsales_info] CHECK CONSTRAINT [FK__carsales___custo__6442E2C9]
GO
/****** Object:  ForeignKey [FK__Aftersale__custo__74794A92]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Aftersales_Servicerecords]  WITH CHECK ADD FOREIGN KEY([customer_num])
REFERENCES [dbo].[customer_info] ([customer_num])
GO
/****** Object:  ForeignKey [FK__Aftersale__custo__6EC0713C]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Aftersales_customerlist]  WITH CHECK ADD FOREIGN KEY([customer_num])
REFERENCES [dbo].[customer_info] ([customer_num])
GO
/****** Object:  ForeignKey [FK__Aftersale__custo__7A3223E8]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Aftersales_Complain]  WITH CHECK ADD  CONSTRAINT [FK__Aftersale__custo__7A3223E8] FOREIGN KEY([customer_num])
REFERENCES [dbo].[customer_info] ([customer_num])
GO
ALTER TABLE [dbo].[Aftersales_Complain] CHECK CONSTRAINT [FK__Aftersale__custo__7A3223E8]
GO
/****** Object:  ForeignKey [FK__Warehouse__car_n__17036CC0]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Warehouse_in]  WITH CHECK ADD  CONSTRAINT [FK__Warehouse__car_n__17036CC0] FOREIGN KEY([car_num])
REFERENCES [dbo].[car_info] ([car_num])
GO
ALTER TABLE [dbo].[Warehouse_in] CHECK CONSTRAINT [FK__Warehouse__car_n__17036CC0]
GO
/****** Object:  ForeignKey [FK__Warehouse__car_n__5F7E2DAC]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Warehouse_out]  WITH CHECK ADD  CONSTRAINT [FK__Warehouse__car_n__5F7E2DAC] FOREIGN KEY([car_num])
REFERENCES [dbo].[car_info] ([car_num])
GO
ALTER TABLE [dbo].[Warehouse_out] CHECK CONSTRAINT [FK__Warehouse__car_n__5F7E2DAC]
GO
/****** Object:  ForeignKey [FK__Warehouse__carsa__607251E5]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Warehouse_out]  WITH CHECK ADD  CONSTRAINT [FK__Warehouse__carsa__607251E5] FOREIGN KEY([carsales_num])
REFERENCES [dbo].[carsales_info] ([carsales_num])
GO
ALTER TABLE [dbo].[Warehouse_out] CHECK CONSTRAINT [FK__Warehouse__carsa__607251E5]
GO
/****** Object:  ForeignKey [FK__Warehouse__Wareh__5E8A0973]    Script Date: 12/08/2021 16:02:21 ******/
ALTER TABLE [dbo].[Warehouse_out]  WITH CHECK ADD  CONSTRAINT [FK__Warehouse__Wareh__5E8A0973] FOREIGN KEY([Warehouse_innum])
REFERENCES [dbo].[Warehouse_in] ([Warehouse_innum])
GO
ALTER TABLE [dbo].[Warehouse_out] CHECK CONSTRAINT [FK__Warehouse__Wareh__5E8A0973]
GO
