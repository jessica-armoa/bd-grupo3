GO
USE grupo3
GO

/* 1.
Monto del importe total de los servicios realizados en un
rango de fecha (entre dos fechas), desplegar los
atributos: fecha, tipo de servicio, importe total para esa fecha.(1)*/
SELECT
  FORMAT(SR.FECHA, 'dd/MM/yyyy') AS FECHA,
  SR.DESCRIPCION AS TIPO_SERVICIO,
  SUM(DPU.CANTIDAD*DPU.PRECIO_UNITARIO) TOTAL
FROM SERVICIOS_REALIZADOS SR
  JOIN DETALLES_PRODUCTOS_UTILIZADOS DPU ON SR.SERVICIO_REALIZADO_ID = DPU.SERVICIO_REALIZADO_ID
WHERE
  SR.FECHA BETWEEN '2023-01-11 00:00:00' AND '2023-02-11 23:59:59'
GROUP BY
  SR.FECHA,
  SR.DESCRIPCION,
  DPU.CANTIDAD,
  DPU.PRECIO_UNITARIO;



/* 2.
Servicios realizados, el criterio de recuperación es por rango de clientes y rango de fechas,
desplegar los siguientes atributos: código y nombre del Cliente, fecha, tipo de servicio,
código y descripción del producto, cantidad y precio unitario.(1)*/

SELECT
  C.CLIENTE_ID,
  P.NOMBRE AS NOMBRE_CLIENTE,
  FORMAT(SR.FECHA, 'dd/MM/yyyy') AS FECHA,
  SR.DESCRIPCION AS TIPO_SERVICIO,
  PR.PRODUCTO_ID,
  PR.DESCRIPCION AS DESCRIPCION_PRODUCTO,
  DPU.CANTIDAD,
  DPU.PRECIO_UNITARIO
FROM servicios_realizados SR
  JOIN CLIENTES C ON SR.CLIENTE_ID = C.CLIENTE_ID
  JOIN PERSONAS P ON C.PERSONA_ID = P.PERSONA_ID
  JOIN DETALLES_PRODUCTOS_UTILIZADOS DPU ON SR.SERVICIO_REALIZADO_ID = DPU.SERVICIO_REALIZADO_ID
  JOIN PRODUCTOS PR ON DPU.PRODUCTO_ID = PR.PRODUCTO_ID
WHERE
  C.CLIENTE_ID BETWEEN 1 AND 100
  AND SR.FECHA BETWEEN '2023-01-11 00:00:00' AND '2023-02-11 23:59:59'; -- AAAA-DD-MM


/* 3.
Informe de servicios concluidos a facturar, desplegar los atributos:
Numero de servicio, fecha, código y nombre del cliente, monto total de los servicios realizados y
productos utilizados. (2)*/
SELECT
	SR.SERVICIO_REALIZADO_ID,
	FORMAT(SR.FECHA, 'dd/MM/yyyy') AS FECHA,
	SR.CLIENTE_ID,
	P.NOMBRE,
	SUM(DPU.CANTIDAD*DPU.PRECIO_UNITARIO) TOTAL,
	T.TIPO
	FROM SERVICIOS_REALIZADOS SR
    JOIN DETALLES_PRODUCTOS_UTILIZADOS DPU ON SR.SERVICIO_REALIZADO_ID = DPU.SERVICIO_REALIZADO_ID
    JOIN CLIENTES C ON SR.CLIENTE_ID = C.CLIENTE_ID
    JOIN PERSONAS P ON C.PERSONA_ID = P.PERSONA_ID
    JOIN PRODUCTOS PR ON DPU.PRODUCTO_ID = PR.PRODUCTO_ID
    JOIN TIPOS T ON T.TIPO_ID = PR.TIPO_ID
	WHERE
    SR.FACTURADO = 0

	GROUP BY
    SR.SERVICIO_REALIZADO_ID,
    SR.FECHA,
    SR.CLIENTE_ID,
    P.NOMBRE,
    DPU.CANTIDAD,
    DPU.PRECIO_UNITARIO,
    T.TIPO;

/* 4.
Ranking de servicios (Servicios más utilizados, por cantidad de servicios). (2)*/
WITH ServiciosUtilizados AS (
    SELECT
        SR.servicio_realizado_id,
        P.descripcion AS producto_descripcion,
        DPU.cantidad
    FROM
        servicios_realizados SR
    JOIN
        detalles_productos_utilizados DPU ON SR.servicio_realizado_id = DPU.servicio_realizado_id
    JOIN
        productos P ON DPU.producto_id = P.producto_id
    WHERE
        P.es_servicio = 1
)

SELECT
    producto_descripcion,
    SUM(cantidad) AS cantidad_total_utilizada,
    DENSE_RANK() OVER (ORDER BY SUM(cantidad) DESC) AS ranking
FROM
    ServiciosUtilizados
GROUP BY
    producto_descripcion
ORDER BY
    ranking;


/* 5.
Ranking de Clientes (Clientes a los que más se facturan). (2)*/
SELECT
	P.NOMBRE,
	DENSE_RANK () OVER (ORDER BY F.CLIENTE_ID DESC ) AS DENSE_RANK
FROM FACTURAS F
  JOIN CLIENTES C ON C.CLIENTE_ID = F.CLIENTE_ID
  JOIN PERSONAS P ON P.PERSONA_ID = C.CLIENTE_ID


