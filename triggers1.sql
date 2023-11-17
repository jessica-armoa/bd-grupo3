GO
USE grupo3
GO
/*------------------TRIGGER QUE ACTUALIZA EL STOCK AL REALIZAR UN SERVICIO------------------*/
CREATE TRIGGER TR_DETALLES_SERVICIOS_REALIZADOS
ON DETALLES_PRODUCTOS_UTILIZADOS FOR INSERT
AS
UPDATE STOCKS SET STOCKS.CANTIDAD_PRODUCTO -= inserted.cantidad from inserted
JOIN STOCKS S ON S.PRODUCTO_ID = inserted.PRODUCTO_ID
JOIN PRODUCTOS P ON P.PRODUCTO_ID = inserted.PRODUCTO_ID;
go

/*------------------TRIGGER QUE HACE LAS TRANSFERENCIAS------------------*/

create trigger TR_D_T
on detalles_transferencias for insert
AS
update stocks set stocks.cantidad_producto = stocks.cantidad_producto - inserted.cantidad from inserted
inner join transferencias t on t.TRANFERENCIA_ID = inserted.TRANFERENCIA_ID
inner join stocks on stocks.deposito_id = t.DEPOSITO_ORIGEN_ID

go
create trigger TR_detalles_transferencias2h
on detalles_transferencias for insert
AS
update stocks set stocks.cantidad_producto = stocks.cantidad_producto + inserted.cantidad from inserted
inner join transferencias t on t.TRANFERENCIA_ID = inserted.TRANFERENCIA_ID
inner join stocks on stocks.deposito_id = t.DEPOSITO_DESTINO_ID

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

/*------------------TRIGGER QUE ACTUALIZA FACTURADO O NO------------------ Listo*/

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

