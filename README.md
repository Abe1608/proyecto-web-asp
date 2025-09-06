# Proyecto en ASP.NET Core MVC

Este es un proyecto desarrollado en **ASP.NET Core 8.0 con MVC y Entity Framework Core**, en este caso el proyecto se realizo solo para mapear y realizar un metodo GET

## Tecnologías 
- SQL Server (base de datos)
- ASP.NET Core 8.0 con MVC

##  Estructura del proyecto
- **Controllers/** 
- **Models/**
- **Views/** 
- **Program.cs** 

## Ejecución

Al momento de compilar el proyecto, primero hay que tener en cuenta tener estos Paquete de NuGet
- Microsoft.EntityFrameworkCore.SqlServer
- Microsoft.EntityFrameworkCore.Tools


Y para crear de una manera más rapida la conexión y el mapeo de las tablas de la base de datos en SQL Server
en la **consola de administrador de paquetes** se puede utilizar este comando **Scaffold-DbContext "Server=DESKTOP-HRDVBH6\SQLEXPRESS;Database=InventarioTiendaDB;Integrated Security=True;TrustServerCertificate=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models**

## SQL Server
Con respecto al SQL le añadí el **set dateformat dmy;** porque de esta manera inserte las fechas, me equivoque DD/MM/AAAA 
