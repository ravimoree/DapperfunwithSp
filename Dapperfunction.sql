USE [master]
GO
/****** Object:  Database [Dapperfunction]    Script Date: 21-12-2021 12:15:32 PM ******/
CREATE DATABASE [Dapperfunction]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dapperfunction', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Dapperfunction.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dapperfunction_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Dapperfunction_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dapperfunction] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dapperfunction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dapperfunction] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dapperfunction] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dapperfunction] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dapperfunction] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dapperfunction] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dapperfunction] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dapperfunction] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dapperfunction] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dapperfunction] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dapperfunction] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dapperfunction] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dapperfunction] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dapperfunction] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dapperfunction] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dapperfunction] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dapperfunction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dapperfunction] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dapperfunction] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dapperfunction] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dapperfunction] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dapperfunction] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dapperfunction] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dapperfunction] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dapperfunction] SET  MULTI_USER 
GO
ALTER DATABASE [Dapperfunction] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dapperfunction] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dapperfunction] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dapperfunction] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dapperfunction] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dapperfunction] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Dapperfunction] SET QUERY_STORE = OFF
GO
USE [Dapperfunction]
GO
/****** Object:  Table [dbo].[country]    Script Date: 21-12-2021 12:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[Country_Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 21-12-2021 12:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Salary] [varchar](50) NULL,
	[Country_Id] [int] NULL,
	[State_id] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 21-12-2021 12:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[State_id] [int] IDENTITY(1,1) NOT NULL,
	[StateNme] [varchar](50) NULL,
	[Country_Id] [int] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[State_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[country] ON 

INSERT [dbo].[country] ([Country_Id], [CountryName]) VALUES (1, N'India')
INSERT [dbo].[country] ([Country_Id], [CountryName]) VALUES (2, N'uinted state')
INSERT [dbo].[country] ([Country_Id], [CountryName]) VALUES (3, N'united kingdom')
SET IDENTITY_INSERT [dbo].[country] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Employee_Id], [Name], [Email], [Password], [Gender], [Salary], [Country_Id], [State_id]) VALUES (1, N'tom', N'to@gmail.com', N'123', N'male', N'12344', 3, 6)
INSERT [dbo].[Employee] ([Employee_Id], [Name], [Email], [Password], [Gender], [Salary], [Country_Id], [State_id]) VALUES (2, N'chita', N'sa@gmail.com', N'sa@123', N'Male', N'17000', 2, 5)
INSERT [dbo].[Employee] ([Employee_Id], [Name], [Email], [Password], [Gender], [Salary], [Country_Id], [State_id]) VALUES (3, N'Test', N'my@email.com', N'123', N'on', N'123456', 2, 5)
INSERT [dbo].[Employee] ([Employee_Id], [Name], [Email], [Password], [Gender], [Salary], [Country_Id], [State_id]) VALUES (4, N'tom', N'to@gmail.com', N'123', N'male', N'12344', 3, 6)
INSERT [dbo].[Employee] ([Employee_Id], [Name], [Email], [Password], [Gender], [Salary], [Country_Id], [State_id]) VALUES (5, N'chita', N'sa@gmail.com', N'sa@123', N'Male', N'17000', 2, 5)
INSERT [dbo].[Employee] ([Employee_Id], [Name], [Email], [Password], [Gender], [Salary], [Country_Id], [State_id]) VALUES (6, N'sarat', N'sa@gmail.com', N'ghjgh', N'Female', N'23546', 2, 5)
INSERT [dbo].[Employee] ([Employee_Id], [Name], [Email], [Password], [Gender], [Salary], [Country_Id], [State_id]) VALUES (7, N'Test02', N'my@email.com', N'123', N'Male', N'12300', 2, 5)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([State_id], [StateNme], [Country_Id]) VALUES (1, N'Gujrat', 1)
INSERT [dbo].[State] ([State_id], [StateNme], [Country_Id]) VALUES (2, N'Odisha', 1)
INSERT [dbo].[State] ([State_id], [StateNme], [Country_Id]) VALUES (3, N'PUne', 1)
INSERT [dbo].[State] ([State_id], [StateNme], [Country_Id]) VALUES (4, N'newjersy', 2)
INSERT [dbo].[State] ([State_id], [StateNme], [Country_Id]) VALUES (5, N'captown', 2)
INSERT [dbo].[State] ([State_id], [StateNme], [Country_Id]) VALUES (6, N'melbon', 3)
SET IDENTITY_INSERT [dbo].[State] OFF
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_country] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[country] ([Country_Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_country]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_State] FOREIGN KEY([State_id])
REFERENCES [dbo].[State] ([State_id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_State]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_country] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[country] ([Country_Id])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_country]
GO
/****** Object:  StoredProcedure [dbo].[Addemployee]    Script Date: 21-12-2021 12:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Addemployee](
@Name varchar(50),
@Email varchar(50),
@Password varchar(50),
@Gender varchar(50),
@Salary varchar(50),
@Country_Id int,
@State_id int 
)
as
begin
insert into Employee values(@Name,@Email,@Password,@Gender,@Salary,@Country_Id,@State_id)
end
GO
/****** Object:  StoredProcedure [dbo].[Deleteemployee]    Script Date: 21-12-2021 12:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Deleteemployee](
@Employee_Id int
)
as
begin
Delete from Employee
where Employee_Id=@Employee_Id
end
GO
/****** Object:  StoredProcedure [dbo].[Getcountry]    Script Date: 21-12-2021 12:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Getcountry]
as
begin
select * from country;
end
GO
/****** Object:  StoredProcedure [dbo].[Getemployee]    Script Date: 21-12-2021 12:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Getemployee]
as
begin
select Employee_Id,Name,Email,Password,Gender,Salary,e.Country_id,e.State_id,CountryName,StateNme from Employee  e
join country c on e.Country_id=c.Country_id
join State s on e.State_id=s.State_id;
end
GO
/****** Object:  StoredProcedure [dbo].[Getstate]    Script Date: 21-12-2021 12:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Getstate](@Country_Id int)
as
begin
select State_id,StateNme,Country_Id from State where Country_Id=@Country_Id;
end
GO
/****** Object:  StoredProcedure [dbo].[Updateemployee]    Script Date: 21-12-2021 12:15:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Updateemployee](
@Employee_Id int,
@Name varchar(50),
@Email varchar(50),
@Password varchar(50),
@Gender varchar(50),
@Salary varchar(50),
@Country_Id int,
@State_id int 
)
as
begin
update  Employee set Name= @Name,
Email=@Email,
Password=@Password,
Gender=@Gender,
Salary=@Salary,
Country_Id=@Country_Id,
State_id=@State_id
where Employee_Id=@Employee_Id
end
GO
USE [master]
GO
ALTER DATABASE [Dapperfunction] SET  READ_WRITE 
GO
