create database InventarioTiendaDB;

use InventarioTiendaDB;


---Creación de tablas

---tabla Categoria 
create table Categoria (
CodigoCategoria int identity(1,1) primary key not null,
Nombre varchar(50) not null
);

--tabla Producto
create table Producto (
CodigoProducto int identity(1,1) primary key not null,
NombreProducto varchar(50) not null,
Categoria int not null,
foreign key (Categoria) references Categoria(CodigoCategoria)
);


--Tabla Venta
create table Venta (
CodigoVenta int identity(1,1) primary key not null,
fechaVenta date not null,
IdProducto int not null,
foreign key (IdProducto) references Producto (CodigoProducto)
);


---Inserción de datos 

--Inserción para la tabla Categoria
insert into Categoria (Nombre) values ('Fragancia');
insert into Categoria (Nombre) values ('Lacteos');
insert into Categoria (Nombre) values ('Frutos Secos');
insert into Categoria (Nombre) values ('Carnes');
insert into Categoria (Nombre) values ('Reposteria');
insert into Categoria (Nombre) values ('Verduras');
insert into Categoria (Nombre) values ('Snacks');
insert into Categoria (Nombre) values ('Congelados');
insert into Categoria (Nombre) values ('Aceitesiernas');
insert into Categoria (Nombre) values ('mariscos');
insert into Categoria (Nombre) values ('Especias');
insert into Categoria (Nombre) values ('Cereales');
insert into Categoria (Nombre) values ('Dulces');
insert into Categoria (Nombre) values ('Automotriz');
insert into Categoria (Nombre) values ('Salsas');
insert into Categoria (Nombre) values ('Granos');

---Inserción para la tabla Producto
insert into Producto (NombreProducto, Categoria) values ('Spray Aromático Citrus', 1);
insert into Producto (NombreProducto, Categoria) values ('Leche de Almendra', 2);
insert into Producto (NombreProducto, Categoria) values ('Mix de Frutos Secos Premium', 3);
insert into Producto (NombreProducto, Categoria) values ('Filete de Cerdo Ahumado', 4);
insert into Producto (NombreProducto, Categoria) values ('Brownie con Nueces', 5);
insert into Producto (NombreProducto, Categoria) values ('Brócoli Orgánico', 6);
insert into Producto (NombreProducto, Categoria) values ('Chips de Plátano', 7);
insert into Producto (NombreProducto, Categoria) values ('Helado de Vainilla', 8);
insert into Producto (NombreProducto, Categoria) values ('Aceite de Girasol', 9);
insert into Producto (NombreProducto, Categoria) values ('Langostinos Jumbo', 10);
insert into Producto (NombreProducto, Categoria) values ('Cúrcuma Molida', 11);
insert into Producto (NombreProducto, Categoria) values ('Granola con Miel', 12);
insert into Producto (NombreProducto, Categoria) values ('Chocolate con Leche', 13);
insert into Producto (NombreProducto, Categoria) values ('Limpiador Multiusos', 14);
insert into Producto (NombreProducto, Categoria) values ('Salsa de Soja', 15);
insert into Producto (NombreProducto, Categoria) values ('Lentejas Rojas', 16);
insert into Producto (NombreProducto, Categoria) values ('Ambientador Floral', 1);
insert into Producto (NombreProducto, Categoria) values ('Queso Mozzarella', 2);
insert into Producto (NombreProducto, Categoria) values ('Pistachos Salados', 3);
insert into Producto (NombreProducto, Categoria) values ('Carne Molida de Res', 4);
insert into Producto (NombreProducto, Categoria) values ('Tarta de Manzana', 5);
insert into Producto (NombreProducto, Categoria) values ('Espinaca Baby', 6);
insert into Producto (NombreProducto, Categoria) values ('Galletas Saladas', 7);
insert into Producto (NombreProducto, Categoria) values ('Croquetas Congeladas', 8);
insert into Producto (NombreProducto, Categoria) values ('Aceite de Sésamo', 9);
insert into Producto (NombreProducto, Categoria) values ('Pulpo Cocido', 10);
insert into Producto (NombreProducto, Categoria) values ('Pimienta Blanca', 11);
insert into Producto (NombreProducto, Categoria) values ('Cereal Integral', 12);
insert into Producto (NombreProducto, Categoria) values ('Caramelos de Menta', 13);
insert into Producto (NombreProducto, Categoria) values ('Cera para Autos', 14);

--Inserción de la tabla Ventas

set dateformat dmy; --esto nos servira para cambiar el formato de fecha a DD/MM/AAAA, así no se nos complicara tanto la inserción de la fecha

insert into venta (fechaVenta, IdProducto) values ('22/01/2020', 9);
insert into venta (fechaVenta, IdProducto) values ('03/03/2020', 12);
insert into venta (fechaVenta, IdProducto) values ('03/02/2018', 1);
insert into venta (fechaVenta, IdProducto) values ('17/06/2018', 4);
insert into venta (fechaVenta, IdProducto) values ('08/01/2019', 2);
insert into venta (fechaVenta, IdProducto) values ('14/02/2019', 5);
insert into venta (fechaVenta, IdProducto) values ('21/03/2019', 8);
insert into venta (fechaVenta, IdProducto) values ('30/04/2019', 11);
insert into venta (fechaVenta, IdProducto) values ('16/05/2019', 14);
insert into venta (fechaVenta, IdProducto) values ('25/06/2019', 17);
insert into venta (fechaVenta, IdProducto) values ('29/09/2018', 7);
insert into venta (fechaVenta, IdProducto) values ('12/12/2018', 10);
insert into venta (fechaVenta, IdProducto) values ('28/12/2018', 13);
insert into venta (fechaVenta, IdProducto) values ('03/07/2019', 20);
insert into venta (fechaVenta, IdProducto) values ('19/08/2019', 23);
insert into venta (fechaVenta, IdProducto) values ('27/09/2019', 26);
insert into venta (fechaVenta, IdProducto) values ('11/10/2019', 29);
insert into venta (fechaVenta, IdProducto) values ('05/11/2019', 3);
insert into venta (fechaVenta, IdProducto) values ('18/12/2019', 6);
insert into venta (fechaVenta, IdProducto) values ('22/01/2020', 9);
insert into venta (fechaVenta, IdProducto) values ('03/03/2020', 12);
insert into venta (fechaVenta, IdProducto) values ('14/05/2020', 15);
insert into venta (fechaVenta, IdProducto) values ('09/01/2021', 30);
insert into venta (fechaVenta, IdProducto) values ('15/03/2021', 16);
insert into venta (fechaVenta, IdProducto) values ('29/07/2020', 18);
insert into venta (fechaVenta, IdProducto) values ('10/09/2020', 21);
insert into venta (fechaVenta, IdProducto) values ('23/11/2020', 24);
insert into venta (fechaVenta, IdProducto) values ('31/12/2020', 27);
insert into venta (fechaVenta, IdProducto) values ('27/05/2021', 19);
insert into venta (fechaVenta, IdProducto) values ('04/08/2021', 22);
insert into venta (fechaVenta, IdProducto) values ('12/10/2021', 25);





----Creación de consulta para obtener el nombre de la categoría del producto de la última venta realizada según la fecha.

select cat.Nombre as Categoria, format (vn.fechaVenta, 'dd/MM/yyyy') as FechaDeVenta 
from Venta vn 
inner join Producto pr on vn.IdProducto = pr.CodigoProducto
inner join Categoria cat on pr.Categoria = cat.CodigoCategoria
where vn.fechaVenta = (select max(fechaVenta) from Venta); 
