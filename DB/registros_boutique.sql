INSERT INTO [dbo].[brands]
VALUES
('1','Converse','12/04/2022'),
('2','Levis','12/04/2022'),
('3','Raybane','12/04/2022'),
('4','Shein','12/04/2022'),
('5','Oneil','12/04/2022');

INSERT INTO [dbo].[categories]
VALUES
('1','Ropa','12/04/2022 00:00:01'),
('2','Accesorios','12/04/2022 00:00:05'),
('3','electrodomesticos','12/04/2022 00:00:10'),
('4','articulos','12/04/2022 00:00:15'),
('5','otros','12/04/2022 00:00:20');


INSERT INTO [dbo].[document_types]
VALUES
('1','Factura','12/04/2022'),
('2','Débito','12/04/2022'),
('3','Crédito','12/04/2022'),
('4','Recibo','12/04/2022'),
('5','Ticket','12/04/2022');

INSERT INTO [dbo].[person_types]
VALUES
('1','Proveedor','12/04/2022'),
('2','Cliente','12/04/2022'),
('3','Empresa','12/04/2022');


INSERT INTO [dbo].[entities]
VALUES
(1,'Proveedor','2289-3241','Prov@domain.com','1'),
(2,'Cliente','---------','none','2'),
(3,'Empresario','2289-3243','Empresario@domain.com','3');

INSERT INTO [dbo].[products]
VALUES
(1,'Camisa','9.99','6.20','20','16','2','1'), 
(2,'Pantalon','12.50','7.90','30','12','3','1'),
(3,'Gafas','5.25','3.10','23','16','3','2'),
(4,'Sombrero','25.00','16.30','20','15','3','2'),
(5,'espejo','29.99','19.50','24','13','3','5');


INSERT INTO [dbo].[roles]
VALUES
('1','admin','12/04/2022'),
('2','user','12/04/2022'),
('3','employed','12/04/2022');

INSERT INTO [dbo].[statuses]
VALUES
('1','activo', 0),
('2','inactivo', 0),
('3','En Espera', 0),
('4','Anulada', 0);

INSERT INTO [dbo].[users]
VALUES
(1,'Daniel','Flores','012345678',1234567890,'dani123','123','user@domain.com','3'),
(2,'Brayan','Flores','012345678',1234567890,'bryan','123','user@domain.com','1'),
(3,'Saul','Flores','012345678',1234567890,'saul','123','user@domain.com','2');

INSERT INTO [dbo].[invoices]
VALUES
(1,'1','12/04/2022',1,'1'), 
(2,'2','12/04/2022',2,'2'),
(3,'3','12/04/2022',3,'3'),
(4,'2','12/04/2022',4,'3'),
(5,'1','12/04/2022',5,'1');

INSERT INTO [dbo].[purchases]
VALUES
(1,1,'12/04/2022','1','1'), 
(2,2,'12/04/2022','2','2'),
(3,3,'12/04/2022','3','3'),
(4,3,'12/04/2022','4','3'),
(5,1,'12/04/2022','5','1');

INSERT INTO [dbo].[purchase_details]
VALUES
(1,'Camisa','1','9.99','9.99',1,1), 
(2,'Pantalon','4','50','12.50',2,2),
(3,'Gafas','3','15.75','5.25',3,3),
(4,'Sombrero','2','50','25',4,4),
(5,'espejo','1','29.99','29.99',5,5);

INSERT INTO [dbo].[invoice_details]
VALUES
(1,'Camisa','1','9.99','9.99',1,1), 
(2,'Pantalon','4','50','12.50',2,2),
(3,'Gafas','3','15.75','5.25',3,3),
(4,'Sombrero','2','50','25',4,4),
(5,'espejo','1','29.99','29.99',5,5);