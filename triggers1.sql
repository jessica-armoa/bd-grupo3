GO
USE grupo3
GO

/*------------------TRIGGER QUE HACE LAS TRANSFERENCIAS------------------*/
go
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

select * from transferencias
select *from detalles_transferencias

select * from stocks


insert into TRANSFERENCIAS ( DEPOSITO_ORIGEN_ID,DEPOSITO_DESTINO_ID,AUTORIZANTE_ID,FECHA) 
values 
(2,1,1,'2023-02-11 9:00:00' )

insert into detalles_transferencias (tranferencia_id, producto_id, cantidad) 
values (1,14,1)
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


select * from stocks ;

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

