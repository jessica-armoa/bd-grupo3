/************************************/
/*         TABLA CLIENTES          */
/************************************/
insert into clientes (cliente_id, persona_id, ruc) values (1,1,4965564)
insert into clientes (cliente_id, persona_id, ruc) values (2,2,4965565)
insert into clientes (cliente_id, persona_id, ruc) values (3,3,4965566)
insert into clientes (cliente_id, persona_id, ruc) values (4,4,4965567)
insert into clientes (cliente_id, persona_id, ruc) values (5,5,4965568)
insert into clientes (cliente_id, persona_id, ruc) values (6,6,4965569)



/************************************/
/*         TABLA EMPLEADOS          */
/************************************/
insert into empleado (empleado_id, persona_id, cargo) values (1,7,'encargados')
insert into empleado (empleado_id, persona_id, cargo) values (2,8,'autorizantes')
insert into empleado (empleado_id, persona_id, cargo) values (3,9,'encargados')
insert into empleado (empleado_id, persona_id, cargo) values (4,10,'autorizantes')


/************************************/
/*         TABLA PRODUCTOS          */
/************************************/
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (1,7,1,'Elvive Hidra Hialurónico 200ml',0,23000, 0.1);
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (2,7,2,'Elvive Hidra Hialurónico 200ml',0,23000, 0.1);
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (3,7,1,'Elvive Hidra Hialurónico 370ml',0,42000, 0.1);
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (4,7,2,'Elvive Hidra Hialurónico 370ml',0,42000, 0.1);
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (5,1,1,'Reparador R-TWO clean performance 250ml',0, 80000, 0.1);
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (11,1,2,'Reparador R-TWO clean performance 250ml',0, 80000, 0.1);
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (6,1,6,'Baño crema hidratacion 200ml',0, 80000, 0.1);


insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (7,8,4,'Hidratacion profunda',1, 50000, 0.05);
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (8,8,7,'Corte femenino largo 1',1, 45000, 0.05);
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (9,8,7,'Corte femenino largo 2',1, 60000, 0.05);
insert into productos (producto_id, marca_id, tipo_id,descripcion,es_servicio,precio_unitario,iva) values (10,8,7,'Corte masculino',1, 60000, 0.05);
