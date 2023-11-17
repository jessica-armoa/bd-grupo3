GO
USE grupo3
GO


/* 6.
Clientes que no registraron servicios por rango de fecha:
Codigo y nombre del cliente, última fecha de servicio realizado. (3)
(Resolver con procedimiento almacenado)*/
CREATE PROCEDURE ObtenerClientesSinServicios
  @FechaInicio DATETIME,
  @FechaFin DATETIME
AS
BEGIN
  SELECT
    C.CLIENTE_ID,
    P.NOMBRE AS NOMBRE_CLIENTE,
    FORMAT(MAX(SR.FECHA), 'dd/MM/yyyy') AS ULTIMA_FECHA_SERVICIO
  FROM
    CLIENTES C
    LEFT JOIN
    SERVICIOS_REALIZADOS SR ON C.CLIENTE_ID = SR.CLIENTE_ID
    INNER JOIN
    PERSONAS P ON C.PERSONA_ID = P.PERSONA_ID
  WHERE
        (SR.FECHA IS NULL OR SR.FECHA NOT BETWEEN @FechaInicio AND @FechaFin)
  GROUP BY
        C.CLIENTE_ID, P.NOMBRE
END;


DECLARE @Fecha_inicio DATETIME = '2023-03-11';
DECLARE @Fecha_fin DATETIME = '2023-04-11';

EXEC ObtenerClientesSinServicios @Fecha_inicio, @Fecha_fin;
