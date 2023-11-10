GO
USE grupo3
GO

/***********************************/
/*	    	TABLA TRANSFERENCIA   	 */
/***********************************/



/***********************************/
/*	 	TABLA SERVICIOS REALIZADOS   */
/*      junto con sus detalles     */
/***********************************/
SELECT * FROM servicios_realizados;
-- DELETE FROM detalles_productos_utilizados;
-- DELETE FROM servicios_realizados;


insert into servicios_realizados
  (cliente_id, fecha, descripcion, facturado)
values
  (1, '2023-11-02 9:00:00', 'Morena iluminada, lavado y secado', 0);

insert into detalles_productos_utilizados
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (29, 1, 1, 150000, 0.05); -- Morena Iluminada

insert into detalles_productos_utilizados
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (30, 1, 1, 25000, 0.05); -- Lavado

insert into detalles_productos_utilizados
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (12, 1, 1, 110000, 0.1); -- Tinte Chocolate



insert into servicios_realizados
  (cliente_id, fecha, descripcion, facturado)
values
  (3, '2023-11-02 12:00:00', 'Morena iluminada, lavado y secado', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (29, 2, 1, 150000, 0.05); -- Morena Iluminada

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (30, 2, 1, 25000, 0.05); -- Lavado

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (14, 2, 1, 110000, 0.1); -- Tinte miel



insert into servicios_realizados
  (cliente_id, fecha, descripcion, facturado)
values
  (2, '2023-11-02 14:30:00', 'Corte masculino', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (27, 3, 1, 60000, 0.05); -- Corte masculino



insert into servicios_realizados
  (cliente_id, fecha, descripcion, facturado)
values
  (2, '2023-11-02 16:30:00', 'Corte masculino', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (27, 4, 1, 60000, 0.05); -- Corte masculino

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (30, 4, 1, 25000, 0.05); -- Lavado



insert into servicios_realizados
  (cliente_id, fecha, descripcion, facturado)
values
  (5, '2023-11-03 10:00:00', 'Lavado y Balayage', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (30, 5, 1, 25000, 0.05); -- Lavado

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (31, 5, 1, 60000, 0.05); -- Balayage

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (14, 5, 1, 130000, 0.1); -- Tinte Miel



insert into servicios_realizados
  (cliente_id, fecha, descripcion, facturado)
values
  (18, '2023-11-03 11:00:00', 'Lavado y Balayage', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (30, 5, 1, 25000, 0.05); -- Lavado

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (31, 6, 1, 60000, 0.05); -- Balayage

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (15, 6, 1, 130000, 0.1); -- Tinte Cobrizo




insert into servicios_realizados
  (cliente_id, fecha, descripcion, facturado)
values
  (9, '2023-11-03 14:30:00', 'Corte masculino', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (27, 7, 1, 60000, 0.05); -- Corte masculino



insert into servicios_realizados
  (cliente_id, fecha, descripcion, facturado)
values
  (13, '2023-11-03 16:30:00', 'Corte masculino', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (30, 8, 1, 25000, 0.05); -- Lavado

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (27, 8, 1, 60000, 0.05); -- Corte masculino
