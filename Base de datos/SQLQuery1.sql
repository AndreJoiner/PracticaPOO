-- Crear base de datos.
create database BDAlmacen
go
-- poner en uso la bd 
use BDAlmacen
go
--Crear tabla (Conjunto de campos y registros) 
create table Producto(
	idProd int primary key not null, 
	nombreProd nvarchar(60) not null,
	precioProd numeric(18,2) not null,
	exitenciaProd int not null default 0,
	existMinProd int not null default 0,
	estadoProd bit default 'true'
)
go
-- CRUD (create, read, Update, delete)
-- crear o insertar registro 
/* Comando Insert into nombreTabla(campo1, campo2, ..., campoN)
values(dato1, dato2, ..., datoN)*/
insert into Producto(idProd, nombreProd, precioProd, exitenciaProd, existMinProd)
values(1,'café', 85, 5, 3)
-- Read Select o Ver
/* Select * from nombreTabla */
Select * from Producto
go
-- Insertar más registros
insert into Producto(idProd, nombreProd, precioProd, exitenciaProd, existMinProd)
values(2, 'Limón', 5, 10, 5), 
	  (3, 'Arroz Libra', 25, 200, 100),
	  (4, 'Teclado', 10, 10, 3),
	  (5, 'Sexo', 100, 5, 1)
go

--Mostrar registros por alias 
select idProd as N'Código' , nombreProd as N'Producto',
precioProd as N'Precio', exitenciaProd as N'Existencia Actual',
existMinProd as N'Minimo'
from Producto

-- Actualizar (Update)
Update Producto set nombreProd= 'Teclado Gamer'
where idProd = 4

-- Eliminar (Delete)
delete from Producto where idProd = 2









