# bd-grupo3
TRABAJO PRÁCTICO – TEMA 3

Diseñar una base de datos que permita administrar los servicios realizados en una peluquería.
En la base de datos se deberán registrar los datos de los productos como la descripción del
producto, marca del producto, el tipo de producto (Shampoo para cabellos, tintura, cremas,
etc), indicar si el producto es un articulo para la venta o un servicio (corte, lavado, etc), si
paga o no IVA y el porcentaje que paga.
También se deben registrar todos los datos de los clientes como nombre, dirección, teléfono,
correo electrónico. Igualmente los datos de los tipos de servicios prestados como lavado,
corte, etc.
Debemos registrar los datos de los servicios realizados y productos utilizados, entre los cuales
se deben registrar: fecha, cliente, tipo de servicio, descripción adicional solicitado por el
cliente, y el detalle de los productos utilizados: producto, cantidad, precio unitario, entre
otros.

La empresa trabaja bajo ciertas políticas que se detallan a continuación:
- El stock de mercaderías es manejado por Depósitos, tiene un depósito general y el
salon. (2)
- La empresa realiza comprobantes de transferencias de productos entre depósitos
para el movimiento logístico de productos, en donde se deben registrar: depósito
origen y depósito destino, encargado de realizar la operación y el autorizante de esa
operación, como así también los productos trasladados y las cantidades
correspondientes. (6)
- No se permite el manejo de stocks negativos de productos. (2)
- Se pueden realizar ajustes al stock de productos cuando estos se dan por ciertas
situaciones como rotura o pérdida. (6)
- Una vez concluidos los servicios realizados y productos utilizados, se debe generar la
factura correspondiente, si la factura es anulada o eliminada, los servicios/productos
deben quedar en un estado que permita generar una nueva factura. (6)
El diseño deberá contener algunas vistas como:
- Servicios realizados a clientes. (1)
- Stocks de productos. (1)

También se deberán realizar las siguientes consultas:
- Monto del importe total de los servicios realizados en un rango de fecha (entre dos
fechas), desplegar los atributos: fecha, tipo de servicio, importe total para esa fecha.
(1)
- Servicios realizados, el criterio de recuperación es por rango de clientes y rango de
fechas, desplegar los siguientes atributos: código y nombre del Cliente, fecha, tipo de
servicio, código y descripción del producto, cantidad y precio unitario. (1)
- Informe de servicios concluidos a facturar, desplegar los atributos: Numero de
servicio, fecha, código y nombre del cliente, monto total de los servicios realizados y
productos utilizados. (2)
- Ranking de servicios (Servicios más utilizados, por cantidad de servicios). (2)
- Ranking de Clientes (Clientes a los que más se facturan). (2)
- Clientes que no registraron servicios por rango de fecha: Codigo y nombre del
cliente, última fecha de servicio realizado. (3) (Resolver con procedimiento
almacenado)

El trabajo debe contar con los siguientes procedimientos almacenados:
- Procedimiento para agregar, modificar o eliminar datos de una tabla (clientes,
productos, etc) (1)

- Procedimientos para agregar, modificar o eliminar datos de tablas de tipo cabecera-
detalle (ordenes de trabajo o transferencias) (3)

- Uno de los informes solicitados. (1)
Criterios de evaluación:
- Diseño eficiente (2)
- Vistas e informes solicitados (13).
- Utilización de triggers (insert, update y delete) para el cumplimiento de las reglas de
negocio. (22)
- Procedimientos almacenados solicitados (5).
- Entregas parciales de diseño y programación (8) en las siguientes fechas: 06, 13, 20
y 27 de octubre; 03, 10, 17 y 24 de noviembre, del 2023.
