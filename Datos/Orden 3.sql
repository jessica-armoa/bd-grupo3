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
  (servicio_realizado_id, cliente_id, fecha, descripcion, facturado)
values
  (1, 1, '2022-11-02 9:00:00', 'Morena iluminada, lavado y secado', 0);

insert into detalles_productos_utilizados
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (1, 29, 1, 1, 150000, 0.05); -- Morena Iluminada

insert into detalles_productos_utilizados
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (2, 30, 1, 1, 25000, 0.05); -- Lavado

insert into detalles_productos_utilizados
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (3, 12, 1, 1, 110000, 0.1); -- Tinte Chocolate



insert into servicios_realizados
  (servicio_realizado_id, cliente_id, fecha, descripcion, facturado)
values
  (2, 3, '2022-11-02 12:00:00', 'Morena iluminada, lavado y secado', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (4, 29, 2, 1, 150000, 0.05); -- Morena Iluminada

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (5, 30, 2, 1, 25000, 0.05); -- Lavado

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (6, 14, 2, 1, 110000, 0.1); -- Tinte miel



insert into servicios_realizados
  (servicio_realizado_id, cliente_id, fecha, descripcion, facturado)
values
  (3, 2, '2022-11-02 14:30:00', 'Corte masculino', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (7, 27, 3, 1, 60000, 0.05); -- Corte masculino



insert into servicios_realizados
  (servicio_realizado_id, cliente_id, fecha, descripcion, facturado)
values
  (4, 2, '2022-11-02 16:30:00', 'Corte masculino', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (8, 27, 4, 1, 60000, 0.05); -- Corte masculino

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (9, 30, 4, 1, 25000, 0.05); -- Lavado



insert into servicios_realizados
  (servicio_realizado_id, cliente_id, fecha, descripcion, facturado)
values
  (5, 5, '2022-11-03 10:00:00', 'Lavado y Balayage', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (10, 30, 5, 1, 25000, 0.05); -- Lavado

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (11, 31, 5, 1, 60000, 0.05); -- Balayage

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (12, 14, 5, 1, 130000, 0.1); -- Tinte Miel



insert into servicios_realizados
  (servicio_realizado_id, cliente_id, fecha, descripcion, facturado)
values
  (6, 18, '2022-11-03 11:00:00', 'Lavado y Balayage', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (13, 30, 5, 1, 25000, 0.05); -- Lavado

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (14, 31, 6, 1, 60000, 0.05); -- Balayage

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (15, 15, 6, 1, 130000, 0.1); -- Tinte Cobrizo




insert into servicios_realizados
  (servicio_realizado_id, cliente_id, fecha, descripcion, facturado)
values
  (7, 9, '2022-11-02 14:30:00', 'Corte masculino', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (16, 27, 7, 1, 60000, 0.05); -- Corte masculino



insert into servicios_realizados
  (servicio_realizado_id, cliente_id, fecha, descripcion, facturado)
values
  (8, 13, '2022-11-02 16:30:00', 'Corte masculino', 0);

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (17, 30, 8, 1, 25000, 0.05); -- Lavado

insert into DETALLES_PRODUCTOS_UTILIZADOS
  (DETALLE_ID, PRODUCTO_ID, SERVICIO_REALIZADO_ID, CANTIDAD, PRECIO_UNITARIO, IVA)
values
  (18, 27, 8, 1, 60000, 0.05); -- Corte masculino
