GO
USE grupo3
GO

/************************************/
/*         TABLA CLIENTES          */
/************************************/
insert into clientes (persona_id, ruc) values (1,4965564)
insert into clientes (persona_id, ruc) values (2,4965565)
insert into clientes (persona_id, ruc) values (3,4965566)
insert into clientes (persona_id, ruc) values (4,4965567)
insert into clientes (persona_id, ruc) values (5,4965568)
insert into clientes (persona_id, ruc) values (6,4965569)
insert into clientes (persona_id, ruc) values (7,4965570);
insert into clientes (persona_id, ruc) values (8,4965571);
insert into clientes (persona_id, ruc) values (9,4965572);
insert into clientes (persona_id, ruc) values (10,4965573);
insert into clientes (persona_id, ruc) values (11,4965574);
insert into clientes (persona_id, ruc) values (12,4965575);
insert into clientes (persona_id, ruc) values (13,4965576);
insert into clientes (persona_id, ruc) values (14,4965577);
insert into clientes (persona_id, ruc) values (15,4965578);
insert into clientes (persona_id, ruc) values (16,4965579);
insert into clientes (persona_id, ruc) values (17,4965580);
insert into clientes (persona_id, ruc) values (18,4965581);
insert into clientes (persona_id, ruc) values (19,4965582);
insert into clientes (persona_id, ruc) values (20,4965583);
insert into clientes (persona_id, ruc) values (21,4965584);
insert into clientes (persona_id, ruc) values (22,4965585);
insert into clientes (persona_id, ruc) values (23,4965586);
insert into clientes (persona_id, ruc) values (24,4965587);
insert into clientes (persona_id, ruc) values (25,4965588);
insert into clientes (persona_id, ruc) values (26,4965589);

SELECT * FROM clientes;

/************************************/
/*         TABLA EMPLEADOS          */
/************************************/
insert into empleados (persona_id, cargo) values (27,'encargado')
insert into empleados (persona_id, cargo) values (28,'autorizante')
insert into empleados (persona_id, cargo) values (29,'encargado')
insert into empleados (persona_id, cargo) values (30,'autorizante')

SELECT * FROM empleados;

/************************************/
/*         TABLA PRODUCTOS          */
/************************************/

----------- Productos

--Shampoo
insert into productos (marca_id, tipo_id,descripcion, es_servicio,precio_unitario,iva) values (5,1,'Elvive Hidra Hialurónico 200ml',0,23000, 0.1);
insert into productos (marca_id, tipo_id,descripcion, es_servicio,precio_unitario,iva) values (5,1,'Elvive Hidra Hialurónico 370ml',0,42000, 0.1);
insert into productos (marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (1,1,'Reparador R-TWO clean performance 250ml',0, 80000, 0.1);
insert into productos (marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (2,1, 'No. 4 Bond Maintenance', 0, 1300000, 0.1);
insert into productos (marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (2,1, 'No. 4P Blonde Enhancer Toning', 0, 1500000, 0.1);

--Acondicionador
insert into productos (marca_id, tipo_id,descripcion, es_servicio,precio_unitario,iva) values (5,2, 'Elvive Hidra Hialurónico 200ml',0,23000, 0.1);
insert into productos (marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (5,2, 'Elvive Hidra Hialurónico 370ml',0,42000, 0.1);
insert into productos (marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (2,2, 'No. 5 Bond Maintenance Conditioner', 0, 1300000, 0.1);
insert into productos (marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (2,2, 'No. 8 Bond Intense Moisture Mask', 0, 1500000, 0.1);
insert into productos (marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (1,2, 'Reparador R-TWO clean performance 250ml', 0, 80000, 0.1);

--tinte
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (1, 3, 'Igora Royal Permanent Color Creme - Rubio Oscuro 60 ml', 0, 120000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (3, 3, 'Nutri Color Creme - Marrón Chocolate 100 ml', 0, 110000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (4, 3, 'Color Touch Demi-Permanent Color - Castaño Claro 60 ml', 0, 125000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (5, 3, 'Excellence Creme - Miel 60 ml', 0, 130000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (5, 3, 'Excellence Creme - Cobrizo oscuro 60 ml', 0, 130000, 0.1);

--baño de crema
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (4, 2, 'Invigo Nutri-Enrich 150 ml', 0, 140000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (1, 2, 'BC Bonacure Hyaluronic Moisture Kick 200 ml', 0, 150000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (2, 2, 'No. 3 Hair Perfector  100 ml', 0, 180000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (3, 2, 'Uniq One Supermask 300 ml', 0, 160000, 0.1);

--hidratacion
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (1, 1, 'Moisture Kick - Tratamiento Hidratante 200 ml', 0, 170000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (1, 2, 'BC Bonacure Peptide Repair Rescue Treatment - Tratamiento con Queratina 200 ml', 0, 190000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (4, 2, 'Wella Professionals Fusion Intense Repair Mask - Tratamiento con Queratina 150 ml', 0, 230000, 0.1);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario, iva) values (3, 2, 'Revlon Professional Uniq One Supermask - Tratamiento con Queratina 300 ml', 0, 220000, 0.1);

/*
SELECT m.marca, t.tipo, p.descripcion
FROM productos p
  JOIN marcas m ON p.marca_id = m.marca_id
  JOIN tipos t ON p.tipo_id = t.tipo_id
WHERE p.es_servicio = 0;
*/

----------- Servicios
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 5, 'Hidratacion profunda', 1, 50000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 7, 'Corte femenino largo 1', 1, 45000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 7, 'Corte femenino largo 2', 1, 60000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 7, 'Corte masculino', 1, 60000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 8, 'Alisado', 1, 80000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 3, 'Morena Iluminada', 1, 150000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 6, 'Lavado', 1, 25000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 9, 'Peinado', 1, 25000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 3, 'Balayage', 1, 60000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 3, 'Mechas Californianas', 1, 120000, 0.05);
insert into productos (marca_id, tipo_id, descripcion, es_servicio, precio_unitario,iva) values (6, 3, 'Claritos', 1, 120000, 0.05);

/*
SELECT m.marca, t.tipo, p.descripcion
FROM productos p
  JOIN marcas m ON p.marca_id = m.marca_id
  JOIN tipos t ON p.tipo_id = t.tipo_id
WHERE p.es_servicio = 1;
*/



/************************************/
/*          TABLA STOCKS            */
/************************************/
-- Stock en el Depósito General
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 1, 8);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 2, 15);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 3, 21);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 4, 16);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 5, 9);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 6, 17);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 7, 21);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 8, 25);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 9, 13);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 10, 18);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 11, 12);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 12, 26);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 13, 7);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 14, 14);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 15, 9);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 16, 20);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 17, 23);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 18, 12);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 19, 23);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 20, 7);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (1, 21, 5);

-- Stock en el Salón
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 1, 3);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 2, 2);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 3, 5);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 4, 1);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 5, 4);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 6, 3);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 7, 2);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 8, 5);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 9, 1);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 10, 4);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 11, 3);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 12, 2);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 13, 5);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 14, 1);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 15, 4);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 16, 3);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 17, 2);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 18, 5);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 19, 1);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 20, 4);
insert into stocks (deposito_id, producto_id, cantidad_producto) values (2, 21, 3);