USE [master]
GO
/****** Object:  Database [QR_car_parking]    Script Date: 02/20/2018 17:10:27 ******/
CREATE DATABASE [QR_car_parking] ON  PRIMARY 
( NAME = N'QR_car_parking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\QR_car_parking.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QR_car_parking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\QR_car_parking_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QR_car_parking] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QR_car_parking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QR_car_parking] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QR_car_parking] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QR_car_parking] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QR_car_parking] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QR_car_parking] SET ARITHABORT OFF
GO
ALTER DATABASE [QR_car_parking] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QR_car_parking] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QR_car_parking] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QR_car_parking] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QR_car_parking] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QR_car_parking] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QR_car_parking] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QR_car_parking] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QR_car_parking] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QR_car_parking] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QR_car_parking] SET  DISABLE_BROKER
GO
ALTER DATABASE [QR_car_parking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QR_car_parking] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QR_car_parking] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QR_car_parking] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QR_car_parking] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QR_car_parking] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QR_car_parking] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QR_car_parking] SET  READ_WRITE
GO
ALTER DATABASE [QR_car_parking] SET RECOVERY FULL
GO
ALTER DATABASE [QR_car_parking] SET  MULTI_USER
GO
ALTER DATABASE [QR_car_parking] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QR_car_parking] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'QR_car_parking', N'ON'
GO
USE [QR_car_parking]
GO
/****** Object:  Table [dbo].[Area_master]    Script Date: 02/20/2018 17:10:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area_master](
	[Area_id] [int] IDENTITY(200,1) NOT NULL,
	[Area_name] [varchar](50) NOT NULL,
	[total_slot] [int] NULL,
	[email_ID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[lat] [varchar](50) NULL,
	[lon] [varchar](50) NULL,
 CONSTRAINT [PK_Area_master] PRIMARY KEY CLUSTERED 
(
	[Area_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Area_master] ON
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (1, N'Central Mall', 5, N'central@mail.com', N'1234', NULL, NULL)
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (3, N'dmart kandivali', 4, N'dmart@mail.com', N'1234', NULL, NULL)
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (200, N'vcet', 5, N'abc@gmail.com', N'ojRUfDOP', N'500', N'255')
SET IDENTITY_INSERT [dbo].[Area_master] OFF
/****** Object:  Table [dbo].[feedback_master]    Script Date: 02/20/2018 17:10:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feedback_master](
	[feed_id] [int] IDENTITY(1,1) NOT NULL,
	[feedback] [varchar](max) NULL,
	[userId] [int] NULL,
	[date1] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer_master]    Script Date: 02/20/2018 17:10:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_master](
	[C_id] [int] IDENTITY(1,1) NOT NULL,
	[C_fname] [varchar](50) NOT NULL,
	[C_lname] [varchar](50) NOT NULL,
	[C_Address] [varchar](50) NULL,
	[C_ph] [varchar](50) NOT NULL,
	[C_email] [varchar](50) NOT NULL,
	[C_password] [varchar](50) NOT NULL,
	[C_balance] [float] NULL,
 CONSTRAINT [PK_Customer_master] PRIMARY KEY CLUSTERED 
(
	[C_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_master] ON
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance]) VALUES (1, N'test', N'test', NULL, N'8989898989', N'test@mail.com', N'1234', 130)
SET IDENTITY_INSERT [dbo].[Customer_master] OFF
/****** Object:  Table [dbo].[Booking_master]    Script Date: 02/20/2018 17:10:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking_master](
	[Booking_id] [int] IDENTITY(300,1) NOT NULL,
	[Area_id] [int] NOT NULL,
	[Slot_id] [int] NOT NULL,
	[Status] [varchar](50) NULL,
	[dt] [datetime] NOT NULL,
	[Cust_id] [int] NOT NULL,
	[dt2] [datetime] NULL,
	[cost] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Booking_master] ON
INSERT [dbo].[Booking_master] ([Booking_id], [Area_id], [Slot_id], [Status], [dt], [Cust_id], [dt2], [cost]) VALUES (1, 3, 1, N'1', CAST(0x0000A75200000000 AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Booking_master] OFF
/****** Object:  Table [dbo].[ParkingSlot_master]    Script Date: 02/20/2018 17:10:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ParkingSlot_master](
	[Slot_id] [int] IDENTITY(500,1) NOT NULL,
	[Area_id] [int] NOT NULL,
	[Slot_no] [varchar](50) NOT NULL,
	[slot_url] [varchar](max) NULL,
 CONSTRAINT [PK_ParkingSlot_master] PRIMARY KEY CLUSTERED 
(
	[Slot_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ParkingSlot_master] ON
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (1, 3, N'1', N'~/url/Koala.jpg')
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (2, 3, N'2', N'~/url/Desert.jpg')
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (3, 3, N'3', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (4, 3, N'4', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (5, 4, N'1', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (6, 4, N'2', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (7, 4, N'3', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (8, 4, N'4', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (9, 4, N'5', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (500, 200, N'1', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (501, 200, N'2', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (502, 200, N'3', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (503, 200, N'4', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (504, 200, N'5', NULL)
SET IDENTITY_INSERT [dbo].[ParkingSlot_master] OFF
/****** Object:  Table [dbo].[Admin_master]    Script Date: 02/20/2018 17:10:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_master](
	[Ad_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Admin_master] PRIMARY KEY CLUSTERED 
(
	[Ad_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin_master] ON
INSERT [dbo].[Admin_master] ([Ad_id], [username], [password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admin_master] OFF
/****** Object:  Table [dbo].[Status_master]    Script Date: 02/20/2018 17:10:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status_master](
	[Status_id] [int] IDENTITY(1,1) NOT NULL,
	[Status_name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Status_master] ON
INSERT [dbo].[Status_master] ([Status_id], [Status_name]) VALUES (1, N'Booked')
INSERT [dbo].[Status_master] ([Status_id], [Status_name]) VALUES (2, N'Alloted')
INSERT [dbo].[Status_master] ([Status_id], [Status_name]) VALUES (3, N'Empty')
SET IDENTITY_INSERT [dbo].[Status_master] OFF
/****** Object:  StoredProcedure [dbo].[View_slots]    Script Date: 02/20/2018 17:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[View_slots]
	@area_name varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	declare @id int;
		set @id=(select top(1)Area_id from  dbo.Area_master as am where am.Area_name=@area_name)
	select Slot_id,Slot_no,slot_url from ParkingSlot_master where Area_id=@id
	
END
GO
/****** Object:  StoredProcedure [dbo].[Slot_details]    Script Date: 02/20/2018 17:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		sy
-- =============================================
CREATE PROCEDURE [dbo].[Slot_details] 
	@slot_id int
AS
BEGIN

	SET NOCOUNT ON;
select a.Area_name,Slot_no from ParkingSlot_master as p left join Area_master as a on p.Area_id=a.Area_id
where Slot_id=@slot_id
END
GO
/****** Object:  StoredProcedure [dbo].[Select_parkslot]    Script Date: 02/20/2018 17:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_parkslot]
@slot_id int

AS
BEGIN

	SET NOCOUNT ON;


select * from dbo.Booking_master where Slot_id=@slot_id and dt=cast(getdate() as date) and Status=1 or Status=2 

END
GO
/****** Object:  StoredProcedure [dbo].[Ad_login]    Script Date: 02/20/2018 17:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ad_login]
@username varchar(50),
@password varchar(50)


AS
BEGIN

	SET NOCOUNT ON;
select * from Admin_master where username=@username and password=@password

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_area]    Script Date: 02/20/2018 17:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_area]
	
@area_name varchar(50),
@total_slots int,
@mail varchar(50),
@pass varchar(50),
@lat varchar(50),
@lon varchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;
insert into dbo.Area_master( Area_name, total_slot,email_ID,Password,lat,lon) values(@area_name,@total_slots,@mail,@pass,@lat,@lon)

declare @id int;
set @id=(select top(1)Area_id from  dbo.Area_master as am where am.Area_name=@area_name)

declare @loop int
set @loop=1
while @loop<=@total_slots
begin
insert into dbo.ParkingSlot_master(Area_id, Slot_no) values(@id,@loop)
set @loop=@loop+1
end

END
GO
/****** Object:  StoredProcedure [dbo].[Book_slot]    Script Date: 02/20/2018 17:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Book_slot]
	@slot_id int,
	@cust_id int
AS
BEGIN

	SET NOCOUNT ON;
declare @area_id int;
set @area_id=(select top(1)Area_id from dbo.ParkingSlot_master where Slot_id=@slot_id )

Insert into dbo.Booking_master(Area_id, Slot_id,Cust_id, Status, dt) values (@area_id,@slot_id,@cust_id,1,getdate())

select Booking_id from dbo.Booking_master where Cust_id=@cust_id and Slot_id=@slot_id and Status=1

END
GO
/****** Object:  StoredProcedure [dbo].[allocateSlot]    Script Date: 02/20/2018 17:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		sy
-- =============================================
CREATE PROCEDURE [dbo].[allocateSlot] 
	-- Add the parameters for the stored procedure here
@bookingid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
update Booking_master set Status='2',dt2=getdate() where Booking_id=@bookingid

END
GO
