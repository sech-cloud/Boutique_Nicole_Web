--Usuarios
create procedure RegistrarUsuario
@id int,
@names nchar(30),
@lastnames nchar(30),
@dui varchar(9),
@nit varchar(15),
@userName nchar(10),
@password varchar(50),
@email varchar(25),
@rol_id int
as Begin
Insert into users(id, names, lastnames, dui, nit, userName, password, email, rol_id) 
values (@id, @names, @lastnames, @dui, @nit, @userName, @password, @email, @rol_id);
end

create procedure ContarUsuarios 
as Begin 
  select COUNT(id) + 1 as codigo from users
  end

  create procedure IniciarSesion
@username nchar(10),
@password varchar(50)
as Begin
select * from users where userName = @username and password = @password
end

create procedure ObtenerUsuarios
as begin
Select
U.id as ID,
U.names as Nombre,
U.lastnames as Apellido,
U.dui as DUI,
U.nit as NIT,
U.email As Correo,
U.userName as Usuario,
U.password as Contraseña,
R.name as Permiso
From users as U
inner join roles as R on U.rol_id = R.id 
End

  create procedure ActualizarUsuarios
@id int,
@names nchar(30),
@lastnames nchar(30),
@dui varchar(9),
@nit varchar(15),
@email varchar(25),
@userName nchar(10),
@password varchar(50),
@Permiso int
as
Begin
UPDATE users
SET  names = @names,
	 lastnames = @lastnames,
	 dui = @dui,
	 nit = @nit,
	 email = @email,
	 userName = @userName,
	 password = @password,
	 rol_id = @Permiso
WHERE  id = @id
END

create procedure BorrarUsuarios
@id int
As Begin
Delete from users
where id = @id
end

  --Roles
create procedure ObtenerRol 
as Begin 
select id as codigo, name as Rol from roles
end

  --Marcas
create procedure ContarMarcas 
as Begin 
select COUNT(id) + 1  as codigo from brands
end

create procedure ObtenerMarcas
as Begin
Select brands.id as Codigo,  
brands.name as Nombre,  
brands.created_at as Fecha_Creacion from brands
end

create procedure GuardarMarcas
@id int,
@nombre varchar(25),
@fecha_creacion date
as Begin
Insert into brands(id, name, created_at) values (@id, @nombre, @fecha_creacion);
end

  create procedure ActualizarMarcas
@id int,
@nombre varchar(25),
@fecha_creacion date
as
Begin
UPDATE brands
SET  name = @nombre,
	created_at = @fecha_creacion
WHERE  id = @id
END

create procedure BorrarMarcas
@id int
As Begin
Delete from brands
where id = @id
end

  --Categorias
create procedure ObtenerCategorias
as Begin
Select categories.id as Codigo,  
categories.name as Nombre,  
categories.created_at as Fecha_Registro from categories
end

create procedure ContarCategorias 
as Begin 
  select COUNT(id) + 1 as codigo from categories
  end

create procedure GuardarCategoria
@id int,
@nombre varchar(25),
@fecha_creacion date
as Begin
Insert into categories(id, name, created_at) values (@id, @nombre, @fecha_creacion);
end

create procedure ActualizarCategoria
@id int,
@nombre varchar(25),
@fecha_creacion date
as
Begin
UPDATE categories
SET  name = @nombre,
	created_at = @fecha_creacion
WHERE  id = @id
END

create procedure BorrarCategoria
@id int
As Begin
Delete from categories
where id = @id
end

--Productos
create procedure ObtenerProductos
as Begin
Select p.id as Codigo,  
p.name as Nombre,  
p.price as Precio, 
p.cost as Costo,
p.initialQuantity as Cantidad_Inicial,
p.quantityAvailable as Stock,
C.name as Categoria,
B.name as Marca
from ((products as p
inner join categories as C on p.category_id = C.id)
inner join brands as B on p.brand_id = B.id)
end

create procedure ContarProductos 
as Begin 
  select COUNT(id) + 1 as codigo from products
  end

create procedure GuardarProductos
@id int,
@nombre varchar(50),
@price float,
@cost float,
@initialQuantity int,
@quantityAvailable int,
@category_id int,
@brand_id int
as Begin
Insert into products(id, name, price, cost, initialQuantity,quantityAvailable,category_id,brand_id) 
values (@id, @nombre, @price, @cost, @initialQuantity, @quantityAvailable, @category_id, @brand_id);
end

create procedure ActualizarProductos
@id int,
@nombre varchar(50),
@price float,
@cost float,
@initialQuantity int,
@quantityAvailable int,
@category_id int,
@brand_id int
as
Begin
UPDATE products
SET  name = @nombre,
price = @price,
cost = @cost,
initialQuantity = @initialQuantity,
quantityAvailable = @quantityAvailable,
category_id = @category_id,
brand_id = @brand_id
WHERE  id = @id
END

create procedure BorrarProductos
@id int
As Begin
Delete from products
where id = @id
end

--Tipos de documentos
create procedure ObtenerDocumentos 
as Begin 
select id as Codigo, name as Nombre from document_types
end

--Tipo de personas
create procedure ObtenerTipo
as begin
select id as Codigo, name as Nombre from person_types
end

--Entidades
create procedure ObtenerEntidades
as Begin
Select entities.id as Codigo,  
entities.name as Nombre,  
entities.tel as Telefono,
entities.email as Correo,
PT.name as Tipo
 from entities
 inner join person_types as PT on entities.person_type_id = PT.id
end

create procedure ContarEntidades 
as Begin 
select COUNT(id) + 1 as codigo from entities
end


create procedure GuardarEntidad
@id int,
@nombre nchar(10),
@tel nchar(9),
@email nchar(25),
@person_type_id int
as Begin
Insert into entities(id, name, tel, email, person_type_id) 
			values (@id, @nombre, @tel, @email, @person_type_id);
end

create procedure ActualizarEntidad
@id int,
@nombre nchar(10),
@tel nchar(9),
@email nchar(25),
@person_type_id int
as
Begin
UPDATE entities
SET  name = @nombre,
	 tel = @tel,
	 email = @email,
	 person_type_id = @person_type_id
WHERE  id = @id
END

create procedure BorrarEntidad
@id int
As Begin
Delete from entities
where id = @id
end

--Reportes

create procedure ReporteProductos
as Begin
Select p.id as Codigo,  
p.name as Nombre,  
p.price as Precio, 
p.cost as Costo,
p.initialQuantity as Cantidad,
p.quantityAvailable as Stock
from products as p
end

--Facturacion

--Tipo de documento
create procedure TipoDocumento
As Begin
Select D.id as Codigo,
D.name as Documento
from document_types as D
End

--Guardar datos de factura
create procedure GuardarFactura
@id int,
@customer_id int, 
@date date,
@document_type_id int,
@status_id int
As Begin

insert into invoices(id, customer_id, date, document_type_id, status_id) 
values(@id,@customer_id,@date,@document_type_id,@status_id)

End

create procedure DetallesFactura

@id int,
@description varchar(50),
@quantity int,
@price float,
@unitPrice float,
@invoice_id int, 
@product_id int
As Begin

insert into invoice_details(id, description, quantity, price, unitPrice, invoice_id, product_id)
values(@id, @description, @quantity, @price, @unitPrice, @invoice_id, @product_id)

End

create procedure ContarDetallesFactura
as Begin 
select COUNT(id) as codigo from invoice_details
end

create procedure ContarFacturas
as Begin 
select COUNT(id) + 1 as codigo from invoices
end

create procedure Entidad
As Begin
Select E.id as Codigo,
E.name as Nombre
from entities as E
End

create procedure Estatus
As Begin
Select E.id as Codigo,
E.name as Nombre
from statuses as E
End


--Compras

create procedure GuardarCompra
@id int,
@provider_id int, 
@date date,
@document_type_id int,
@status_id int
As Begin

insert into purchases(id, provider_id, date, document_type_id, status_id) 
values(@id,@provider_id,@date,@document_type_id,@status_id)

End

create procedure DetallesCompra

@id int,
@description varchar(50),
@quantity int,
@unitCost float,
@Cost float,
@purchase_id int, 
@product_id int
As Begin

insert into purchase_details(id, description, quantity, unitCost, cost, purchase_id, product_id)
values(@id, @description, @quantity, @unitCost, @Cost, @purchase_id, @product_id)

End

create procedure ActualizarStock
@id int,
@price float,
@cost float,
@quantityAvailable int
as
Begin
UPDATE products
SET price = @price,
cost = @cost,
quantityAvailable = @quantityAvailable
WHERE  id = @id
END

create procedure ContarCompras
as Begin 
select COUNT(id) + 1 as codigo from purchases
end

create procedure ContarDetallesCompra
as Begin 
select COUNT(id) as codigo from purchase_details
end


