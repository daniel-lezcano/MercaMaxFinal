﻿/*
Script de implementación para BDMercamax

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "BDMercamax"
:setvar DefaultFilePrefix "BDMercamax"
:setvar DefaultDataPath "C:\Users\nayib\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\nayib\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Creando Vista [dbo].[VerProducto]...';


GO
CREATE VIEW [dbo].[VerProducto]
	AS SELECT nombre_producto, precio FROM Producto
GO
PRINT N'Creando Procedimiento [dbo].[VerProductoBodega]...';


GO
CREATE PROCEDURE [dbo].[VerProductoBodega]
	@param1 int = 0,
	@param2 int
AS
	SELECT @param1, @param2
RETURN 0
GO
PRINT N'Creando Procedimiento [dbo].[VerProductoGondola]...';


GO
CREATE PROCEDURE [dbo].[VerProductoGondola]
	@param1 int = 0,
	@param2 int
AS
	SELECT @param1, @param2
RETURN 0
GO
PRINT N'Creando Procedimiento [dbo].[VerPuntos]...';


GO
CREATE PROCEDURE [dbo].[VerPuntos]
	@param1 int = 0,
	@param2 int
AS
	SELECT @param1, @param2
RETURN 0
GO
PRINT N'Actualización completada.';


GO
