create trigger TR_detalles_factura
on detalles_factura for insert
AS
update stocks set stocks.cantidad_producto = stocks.cantidad_producto - inserted.cantidad from inserted
inner join stocks on stocks.producto_id = inserted.producto_id;


create trigger TR_detalles_transferencias
on detalles_transferencias for insert
AS
update stocks set stocks.cantidad_producto = stocks.cantidad_producto - inserted.cantidad from inserted
inner join stocks on stocks.deposito_id = inserted.deposito_origen_id


create trigger TR_detalles_transferencias2
on detalles_transferencias for insert
AS
update stocks set stocks.cantidad_producto = stocks.cantidad_producto + inserted.cantidad from inserted
inner join stocks on stocks.deposito_id = inserted.deposito_destino_id