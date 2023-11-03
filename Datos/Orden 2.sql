/************************************/
/*         TABLA PRODUCTOS          */
/************************************/

/************************************/
/*         TABLA CLIENTES          */

insert into clientes (cliente_id, persona_id, ruc) values (1,1,4965564)
insert into clientes (cliente_id, persona_id, ruc) values (2,2,4965565)
insert into clientes (cliente_id, persona_id, ruc) values (3,3,4965566)
insert into clientes (cliente_id, persona_id, ruc) values (4,4,4965567)
insert into clientes (cliente_id, persona_id, ruc) values (5,5,4965568)
insert into clientes (cliente_id, persona_id, ruc) values (6,6,4965569)

/************************************/

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