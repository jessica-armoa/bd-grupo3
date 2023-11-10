GO
USE grupo3
GO

/* 1.
Monto del importe total de los servicios realizados en un
rango de fecha (entre dos fechas), desplegar los
atributos: fecha, tipo de servicio, importe total para esa fecha.(1)*/




/* 2.
Servicios realizados, el criterio de recuperación es por rango de clientes y rango de fechas,
desplegar los siguientes atributos: código y nombre del Cliente, fecha, tipo de servicio,
código y descripción del producto, cantidad y precio unitario.(1)*/

SELECT *
FROM servicios_realizados SR
  JOIN CLIENTES C ON SR.CLIENTE_ID = C.CLIENTE_ID
  JOIN PERSONAS P ON C.PERSONA_ID = P.PERSONA_ID
  JOIN DETALLES_PRODUCTOS_UTILIZADOS DPU ON SR.SERVICIO_REALIZADO_ID = DPU.SERVICIO_REALIZADO_ID
  JOIN PRODUCTOS PR ON DPU.PRODUCTO_ID = PR.PRODUCTO_ID
WHERE
  C.CLIENTE_ID BETWEEN 1 AND 100
  AND SR.FECHA BETWEEN '2023-11-01 00:00:00' AND '2023-11-30 23:59:59';


SELECT
  C.CLIENTE_ID,
  P.NOMBRE AS NOMBRE_CLIENTE,
  SR.FECHA,
  SR.DESCRIPCION AS TIPO_SERVICIO,
  PR.PRODUCTO_ID,
  PR.DESCRIPCION AS DESCRIPCION_PRODUCTO,
  DPU.CANTIDAD,
  DPU.PRECIO_UNITARIO
FROM
  SERVICIOS_REALIZADOS SR
  JOIN CLIENTES C ON SR.CLIENTE_ID = C.CLIENTE_ID
  JOIN DETALLES_PRODUCTOS_UTILIZADOS DPU ON SR.SERVICIO_REALIZADO_ID = DPU.SERVICIO_REALIZADO_ID
  JOIN PRODUCTOS PR ON DPU.PRODUCTO_ID = PR.PRODUCTO_ID
  JOIN PERSONAS P ON C.PERSONA_ID = P.PERSONA_ID
WHERE
  C.CLIENTE_ID BETWEEN @ClienteDesde AND @ClienteHasta
  AND SR.FECHA BETWEEN @FechaDesde AND @FechaHasta;




/* 3.
Informe de servicios concluidos a facturar, desplegar los atributos:
Numero de servicio, fecha, código y nombre del cliente, monto total de los servicios realizados y
productos utilizados. (2)*/



/* 4.
Ranking de servicios (Servicios más utilizados, por cantidad de servicios). (2)*/



/* 5.
Ranking de Clientes (Clientes a los que más se facturan). (2)*/




/* 6.
Clientes que no registraron servicios por rango de fecha:
Codigo y nombre del cliente, última fecha de servicio realizado. (3)
(Resolver con procedimiento almacenado)*/
