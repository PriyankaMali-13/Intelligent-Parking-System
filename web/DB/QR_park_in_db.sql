USE [master]
GO
/****** Object:  Database [Parking_by_qr_db]    Script Date: 11-Feb-19 8:11:16 PM ******/
CREATE DATABASE [Parking_by_qr_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Parking_by_qr_db', FILENAME = N'D:\Microsoft SQL Server\DATA\Parking_by_qr_db.mdf' , SIZE = 3392KB , MAXSIZE = 5242880KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Parking_by_qr_db_log', FILENAME = N'D:\Microsoft SQL Server\DATA\Parking_by_qr_db_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Parking_by_qr_db] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Parking_by_qr_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Parking_by_qr_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Parking_by_qr_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Parking_by_qr_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Parking_by_qr_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Parking_by_qr_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Parking_by_qr_db] SET  MULTI_USER 
GO
ALTER DATABASE [Parking_by_qr_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Parking_by_qr_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Parking_by_qr_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Parking_by_qr_db] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Parking_by_qr_db] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Parking_by_qr_db]
GO
/****** Object:  User [parking_user1]    Script Date: 11-Feb-19 8:11:17 PM ******/
CREATE USER [parking_user1] FOR LOGIN [parking_user1] WITH DEFAULT_SCHEMA=[parking_user1]
GO
/****** Object:  User [nipul]    Script Date: 11-Feb-19 8:11:17 PM ******/
CREATE USER [nipul] FOR LOGIN [nipul] WITH DEFAULT_SCHEMA=[nipul]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [parking_user1]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [parking_user1]
GO
ALTER ROLE [db_datareader] ADD MEMBER [parking_user1]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [parking_user1]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [nipul]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [nipul]
GO
ALTER ROLE [db_datareader] ADD MEMBER [nipul]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [nipul]
GO
/****** Object:  Schema [nipul]    Script Date: 11-Feb-19 8:11:17 PM ******/
CREATE SCHEMA [nipul]
GO
/****** Object:  Schema [parking_user1]    Script Date: 11-Feb-19 8:11:17 PM ******/
CREATE SCHEMA [parking_user1]
GO
/****** Object:  Table [dbo].[Admin_master]    Script Date: 11-Feb-19 8:11:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Area_master]    Script Date: 11-Feb-19 8:11:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking_master]    Script Date: 11-Feb-19 8:11:17 PM ******/
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
/****** Object:  Table [dbo].[Customer_master]    Script Date: 11-Feb-19 8:11:17 PM ******/
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
	[OTP] [varchar](50) NULL,
	[acc_status] [int] NULL,
 CONSTRAINT [PK_Customer_master] PRIMARY KEY CLUSTERED 
(
	[C_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feedback_master]    Script Date: 11-Feb-19 8:11:17 PM ******/
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
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ParkingSlot_master]    Script Date: 11-Feb-19 8:11:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rate_Master]    Script Date: 11-Feb-19 8:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate_Master](
	[rate_id] [int] IDENTITY(1,1) NOT NULL,
	[rating] [numeric](5, 2) NULL,
	[userid] [int] NULL,
	[areaid] [int] NULL,
	[dtme] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status_master]    Script Date: 11-Feb-19 8:11:17 PM ******/
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
/****** Object:  Table [parking_user1].[emp_contact]    Script Date: 11-Feb-19 8:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [parking_user1].[emp_contact](
	[eid] [int] NULL,
	[contact] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [parking_user1].[Emp_Details]    Script Date: 11-Feb-19 8:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [parking_user1].[Emp_Details](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[Ename] [varchar](50) NULL,
 CONSTRAINT [PK_Emp_Details] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [parking_user1].[emp_location]    Script Date: 11-Feb-19 8:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [parking_user1].[emp_location](
	[eid] [int] NULL,
	[loction] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin_master] ON 

INSERT [dbo].[Admin_master] ([Ad_id], [username], [password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admin_master] OFF
SET IDENTITY_INSERT [dbo].[Area_master] ON 

INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (200, N'R City', 5, N'rcity@gmail.com', N'rcity123', N'19.2130254', N'72.8192723')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (202, N'Irla Public Car Park', 10, N'thecasecom@gmail.com', N'CZHunHBo', N'19.1084', N'72.8434')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (203, N'Infinity Andheri', 20, N'niket1311@gmail.com', N'rRzHg73T', N'19.1413216', N'72.8298573')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (204, N'Infinity Malad', 15, N'niket329@gmail.com', N'U1dFJRfh', N'19.1413183', N'72.7959321')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (205, N'Juhu Airport Public Park', 15, N'thefashionloft13@gmail.com', N'96Za6jlB', N'19.100324', N'72.8266418')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (206, N'BKC Public Car Park', 12, N'abc@gmail.com', N'M8aLr1lu', N'19.0660606', N'72.8583629')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (207, N'Raghuleela Mall', 5, N'def@gmail.com', N'mtVBiCI3', N'19.1385068', N'72.9069184')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (208, N'Shoppers Stop Andheri SV Road', 10, N'ghi@gmail.com', N'kHlAafUz', N'19.11509', N'72.8406663')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (209, N'D Mart Mahavir Nagar', 10, N'jkl@gmail.com', N'9VTAZjMo', N'19.2133155', N'72.8398925')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (210, N'MCGM Pay N Park', 13, N'mno@gmail.com', N'uVnplA8p', N'19.1214572', N'72.8630179')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (212, N'abcd', 10, N'abcd@gmail.com', N'q6dvhttY', N'19.0192221', N'72.8192723')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (214, N'sdasdas', 2, N'abcdef@gmail.com', N'1234', N'19.0192221', N'73.0934692')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (215, N'Bhayander', 3, N'bhaynder@gmail.com', N'bcdyC8dt', N'434435784', N'455454')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (216, N'malad', 3, N'rashmi.pawar2011@gmail.com', N'5SaJhhjI', N'4546565654', N'5465656')
INSERT [dbo].[Area_master] ([Area_id], [Area_name], [total_slot], [email_ID], [Password], [lat], [lon]) VALUES (217, N'Dmart', 2, N'Dmart@gmail.com', N'lQxPdPFn', N'7', N'17')
SET IDENTITY_INSERT [dbo].[Area_master] OFF
SET IDENTITY_INSERT [dbo].[Booking_master] ON 

INSERT [dbo].[Booking_master] ([Booking_id], [Area_id], [Slot_id], [Status], [dt], [Cust_id], [dt2], [cost]) VALUES (320, 200, 642, N'1', CAST(N'2019-02-08 11:44:18.047' AS DateTime), 15, NULL, NULL)
INSERT [dbo].[Booking_master] ([Booking_id], [Area_id], [Slot_id], [Status], [dt], [Cust_id], [dt2], [cost]) VALUES (322, 200, 640, N'3', CAST(N'2019-02-11 19:18:59.027' AS DateTime), 15, CAST(N'2019-02-11 19:35:58.703' AS DateTime), N'20')
INSERT [dbo].[Booking_master] ([Booking_id], [Area_id], [Slot_id], [Status], [dt], [Cust_id], [dt2], [cost]) VALUES (318, 200, 642, N'3', CAST(N'2018-07-03 05:48:41.133' AS DateTime), 13, CAST(N'2018-07-03 05:51:24.300' AS DateTime), N'20')
SET IDENTITY_INSERT [dbo].[Booking_master] OFF
SET IDENTITY_INSERT [dbo].[Customer_master] ON 

INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (1, N'test', N'test', NULL, N'8989898989', N'projectmailnew2018@gmail.com', N'1234', 200, NULL, 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (7, N'Niket', N'Patel', N'Borivali', N'8879029245', N'niket1311@gmail.com', N'13np1196', 200, N'7836', 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (8, N'Niket', N'Patel', N'Borivali East', N'9930944456', N'niket329@gmail.com', N'Pass@123', 180, N'8064', 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (9, N'Rishil', N'Shah', N'Kandivali', N'9167768683', N'rishilshah57@gmail.com', N'Pass@123', 100, N'9938', 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (10, N'Kavan', N'Gala', N'Borivali', N'9029774321', N'kavan.gala@yahoo.com', N'Pass@123', 700, N'1617', 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (11, N'sidd', N'sidd', N'gssgsg', N'7715832010', N'sssmandavkar95@gmail.com', N'siddhesh', 500480, N'9643', 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (12, N'abcdef', N'vavffvav', N'gagag', N'9898986923', N'abcdef@gmail.com', N'abcdef', 0, N'9036', 0)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (13, N'rashmi', N'pawar', N'bhayander', N'9167798323', N'rashmi.pawar2011@gmail.com', N'abc123', 410, N'8941', 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (14, N'pooja', N'varhande', N'palghar', N'7798513505', N'poojavarkhandr8@gmail.com', N'abc123', 540, N'0125', 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (15, N'pranali', N'madvi', N'vasai', N'9028347496', N'manali.takke1995@gmail.com', N'manali00', 5180, N'4965', 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (16, N'xyz', N'xyz', N'mumbai', N'9632587412', N'xyz@gmail.com', N'123456', 100, N'5126', 1)
INSERT [dbo].[Customer_master] ([C_id], [C_fname], [C_lname], [C_Address], [C_ph], [C_email], [C_password], [C_balance], [OTP], [acc_status]) VALUES (17, N'abc', N'abc', N'Mum', N'9638521470', N'abc@gmail.com', N'123456', 0, N'9956', 1)
SET IDENTITY_INSERT [dbo].[Customer_master] OFF
SET IDENTITY_INSERT [dbo].[feedback_master] ON 

INSERT [dbo].[feedback_master] ([feed_id], [feedback], [userId], [date1]) VALUES (1, N'hi', 8, CAST(N'2018-04-15 07:31:10.447' AS DateTime))
INSERT [dbo].[feedback_master] ([feed_id], [feedback], [userId], [date1]) VALUES (2, N'Awesome experience', 8, CAST(N'2018-04-15 07:31:40.160' AS DateTime))
INSERT [dbo].[feedback_master] ([feed_id], [feedback], [userId], [date1]) VALUES (3, N'jshsvs', 11, CAST(N'2018-06-30 06:46:01.000' AS DateTime))
INSERT [dbo].[feedback_master] ([feed_id], [feedback], [userId], [date1]) VALUES (4, N'hahahahaj', 13, CAST(N'2018-06-30 10:22:44.037' AS DateTime))
INSERT [dbo].[feedback_master] ([feed_id], [feedback], [userId], [date1]) VALUES (5, N'ty', 14, CAST(N'2018-06-30 11:53:23.683' AS DateTime))
INSERT [dbo].[feedback_master] ([feed_id], [feedback], [userId], [date1]) VALUES (6, N'feedback', 13, CAST(N'2019-02-08 11:58:56.783' AS DateTime))
SET IDENTITY_INSERT [dbo].[feedback_master] OFF
SET IDENTITY_INSERT [dbo].[ParkingSlot_master] ON 

INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (640, 200, N'1', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (641, 200, N'2', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (642, 200, N'3', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (643, 200, N'4', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (644, 200, N'5', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (645, 213, N'1', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (646, 213, N'2', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (647, 213, N'3', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (648, 213, N'4', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (649, 213, N'5', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (650, 213, N'6', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (651, 214, N'1', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (652, 214, N'2', N'~/url/eight_col_AB_de_Villiers_head_shot_16x10.jpg')
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (653, 215, N'1', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (654, 215, N'2', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (655, 215, N'3', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (656, 216, N'1', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (657, 216, N'2', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (658, 216, N'3', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (659, 217, N'1', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (660, 217, N'2', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (661, 217, N'1', NULL)
INSERT [dbo].[ParkingSlot_master] ([Slot_id], [Area_id], [Slot_no], [slot_url]) VALUES (662, 217, N'2', NULL)
SET IDENTITY_INSERT [dbo].[ParkingSlot_master] OFF
SET IDENTITY_INSERT [dbo].[Status_master] ON 

INSERT [dbo].[Status_master] ([Status_id], [Status_name]) VALUES (1, N'Booked')
INSERT [dbo].[Status_master] ([Status_id], [Status_name]) VALUES (2, N'Alloted')
INSERT [dbo].[Status_master] ([Status_id], [Status_name]) VALUES (3, N'Empty')
SET IDENTITY_INSERT [dbo].[Status_master] OFF
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (1, 3343545)
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (3, 3343545)
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (1, 6558565)
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (4, 3343545)
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (1, 33435677545)
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (2, 3343545)
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (1, 3343545)
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (1, 33435)
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (2, 999999)
INSERT [parking_user1].[emp_contact] ([eid], [contact]) VALUES (2, 77777)
SET IDENTITY_INSERT [parking_user1].[Emp_Details] ON 

INSERT [parking_user1].[Emp_Details] ([eid], [Ename]) VALUES (1, N'manali')
INSERT [parking_user1].[Emp_Details] ([eid], [Ename]) VALUES (2, N'Priya')
INSERT [parking_user1].[Emp_Details] ([eid], [Ename]) VALUES (3, N'Priti')
INSERT [parking_user1].[Emp_Details] ([eid], [Ename]) VALUES (4, N'raja')
SET IDENTITY_INSERT [parking_user1].[Emp_Details] OFF
INSERT [parking_user1].[emp_location] ([eid], [loction]) VALUES (2, N'Bhayander')
INSERT [parking_user1].[emp_location] ([eid], [loction]) VALUES (1, N'Mumbai')
INSERT [parking_user1].[emp_location] ([eid], [loction]) VALUES (4, N'Bhayander')
INSERT [parking_user1].[emp_location] ([eid], [loction]) VALUES (2, N'Mumbai')
INSERT [parking_user1].[emp_location] ([eid], [loction]) VALUES (2, N'Bhayander')
INSERT [parking_user1].[emp_location] ([eid], [loction]) VALUES (2, N'Virar')
INSERT [parking_user1].[emp_location] ([eid], [loction]) VALUES (1, N'Bhayander')
INSERT [parking_user1].[emp_location] ([eid], [loction]) VALUES (1, N'Mumbai')
INSERT [parking_user1].[emp_location] ([eid], [loction]) VALUES (3, N'Mumbai')
/****** Object:  StoredProcedure [dbo].[Ad_login]    Script Date: 11-Feb-19 8:11:18 PM ******/
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
/****** Object:  StoredProcedure [dbo].[allocateSlot]    Script Date: 11-Feb-19 8:11:18 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Book_slot]    Script Date: 11-Feb-19 8:11:18 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_area]    Script Date: 11-Feb-19 8:11:18 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Select_parkslot]    Script Date: 11-Feb-19 8:11:18 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Slot_details]    Script Date: 11-Feb-19 8:11:18 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateRating]    Script Date: 11-Feb-19 8:11:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		sy
-- =============================================
CREATE PROCEDURE [dbo].[updateRating]

	@userid int,
	@areaid int,
	@rate numeric(5,2)
AS
BEGIN

	SET NOCOUNT ON;

   if exists(select * from Rate_Master where userid=@userid and areaid=(select Area_id from Booking_master where Booking_id=@areaid))
	begin
		select * from rate_master where userid=@userid and areaid=(select Area_id from Booking_master where Booking_id=@areaid)
	end
	else
	begin
		insert into Rate_Master(rating, userid, areaid, dtme) values(@rate,@userid,(select Area_id from Booking_master where Booking_id=@areaid),getdate())
	end
   
END

GO
/****** Object:  StoredProcedure [dbo].[View_slots]    Script Date: 11-Feb-19 8:11:18 PM ******/
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
USE [master]
GO
ALTER DATABASE [Parking_by_qr_db] SET  READ_WRITE 
GO
