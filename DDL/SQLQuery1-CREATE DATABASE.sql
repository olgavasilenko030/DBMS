--Transact-SQL
CREATE DATABASE PV_319_DDL
ON
(
NAME		=PV_319_DDL,
FILENAME	='D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PV_329_DDL.mdf',
SIZE		=8MB,
MAXSIZE		=512MB,
FILEGROWTH	=8MB
)
LOG ON
(
NAME		=PV_319_DDL_Log,
FILENAME	='D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PV_319_DDL_Log.ldf',
SIZE		=8MB,
MAXSIZE		=512MB,
FILEGROWTH	=8MB
)
GO