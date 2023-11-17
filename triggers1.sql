GO
USE grupo3
GO

/*------------------TRIGGER QUE HACE LAS TRANSFERENCIAS------------------*/

create trigger TR_D_T
on detalles_transferencias for insert
AS
update stocks set stocks.cantidad_producto = stocks.cantidad_producto - inserted.cantidad from inserted
inner join stocks on stocks.deposito_id = inserted.deposito_origen_id

go
create trigger TR_detalles_transferencias2h
on detalles_transferencias for insert
AS
update stocks set stocks.cantidad_producto = stocks.cantidad_producto + inserted.cantidad from inserted
inner join stocks on stocks.deposito_id = inserted.deposito_destino_id;

go

/*------------------TRIGGER QUE ACTUALIZA EL STOCK AL REALIZAR UN SERVICIO------------------*/
CREATE TRIGGER TR_STOCKS_DPU
ON detalles_productos_utilizados
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Actualizar la cantidad de productos en la tabla stocks
    UPDATE stocks
    SET cantidad_producto = stocks.cantidad_producto - i.cantidad
    FROM stocks
    INNER JOIN inserted i ON stocks.producto_id = i.producto_id;
END

SELECT * FROM STOCKS

insert into servicios_realizados
  (cliente_id, fecha, descripcion, facturado)
values
  (3, '2023-02-11 12:00:00', 'Morena iluminada, lavado y secado', 0);

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

/*------------------TRIGGER QUE ACTUALIZA FACTURADO O NO------------------*/

GO
CREATE TRIGGER after_insert_factura
ON facturas
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Marcar como facturado en la tabla servicios_realizados
    UPDATE sr
    SET sr.facturado = 1
    FROM servicios_realizados sr
    INNER JOIN inserted i ON sr.servicio_realizado_id = i.servicio_realizado_id
    WHERE sr.facturado = 0; -- Asegurar que el servicio no haya sido facturado previamente
END;

/*------------------TRIGGER DE TRANSFERENCIAS------------------*/
GO
CREATE TRIGGER after_insert_transferencia
ON transferencias
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Actualizar la existencia en la tabla stocks para el depósito de origen
    UPDATE s_origen
    SET s_origen.cantidad_producto = s_origen.cantidad_producto - dt.cantidad
    FROM stocks s_origen
    INNER JOIN detalles_transferencias dt ON s_origen.deposito_id = dt.deposito_origen_id
    INNER JOIN inserted i ON dt.transferencia_id = i.transferencia_id;

    -- Actualizar la existencia en la tabla stocks para el depósito de destino
    UPDATE s_destino
    SET s_destino.cantidad_producto = s_destino.cantidad_producto + dt.cantidad
    FROM stocks s_destino
    INNER JOIN detalles_transferencias dt ON s_destino.deposito_id = dt.deposito_destino_id
    INNER JOIN inserted i ON dt.transferencia_id = i.transferencia_id;
END;

SELECT * FROM TRANSFERENCIAS

insert into TRANSFERENCIAS ( DEPOSITO_ORIGEN_ID,DEPOSITO_DESTINO_ID,AUTORIZANTE_ID,FECHA) 
values 
(1,2,1,'2023-02-11 9:00:00' )

INSERT INTO DETALLES_TRANSFERENCIAS (TRANSFERENCIA_ID, PRODUCTO_ID, CANTIDAD)
VALUES 
(1,1,1)

