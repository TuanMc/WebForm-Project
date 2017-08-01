USE [master]
GO

/****** Object:  Database [ShopCongNghe]    Script Date: 8/1/2017 2:11:16 PM ******/
CREATE DATABASE [ShopCongNghe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopCongNghe', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ShopCongNghe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopCongNghe_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ShopCongNghe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ShopCongNghe] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopCongNghe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ShopCongNghe] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ShopCongNghe] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ShopCongNghe] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ShopCongNghe] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ShopCongNghe] SET ARITHABORT OFF 
GO

ALTER DATABASE [ShopCongNghe] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ShopCongNghe] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [ShopCongNghe] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ShopCongNghe] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ShopCongNghe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ShopCongNghe] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ShopCongNghe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ShopCongNghe] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ShopCongNghe] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ShopCongNghe] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ShopCongNghe] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ShopCongNghe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ShopCongNghe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ShopCongNghe] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ShopCongNghe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ShopCongNghe] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ShopCongNghe] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ShopCongNghe] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ShopCongNghe] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ShopCongNghe] SET  MULTI_USER 
GO

ALTER DATABASE [ShopCongNghe] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ShopCongNghe] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ShopCongNghe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ShopCongNghe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [ShopCongNghe] SET  READ_WRITE 
GO

