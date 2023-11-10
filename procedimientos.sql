GO
USE grupo3
GO

/************************************/
/*          PROCEDIMIENTOS          */
/************************************/

-- Tabla MARCAS
GO
CREATE PROCEDURE Crear_Marcas @DESCRIPCION_MARCA VARCHAR(255)
AS
BEGIN
  INSERT INTO MARCAS (MARCA)
  VALUES(@DESCRIPCION_MARCA);
END;
GO

GO
CREATE PROCEDURE Eliminar_Marcas @ID INT
AS
BEGIN
  DELETE FROM MARCAS WHERE MARCA_ID = @ID;
END
GO

GO
CREATE PROCEDURE Modificar_Marcas
  @ID INT,
  @DESCRIPCION_MARCA VARCHAR(255)
AS
BEGIN
  UPDATE MARCAS SET MARCA = @DESCRIPCION_MARCA WHERE MARCA_ID = @ID
END;
GO

-- Tabla TIPOS
GO
CREATE PROCEDURE Crear_Tipos
  @DESCRIPCION_TIPO VARCHAR(255)
AS
BEGIN
  INSERT INTO TIPOS(MARCA)
  VALUES(@DESCRIPCION_MARCA);
END;
GO

GO
CREATE PROCEDURE Eliminar_Marcas
  @ID INT
AS
BEGIN
  DELETE FROM MARCAS WHERE MARCA_ID = @ID;
END
GO

GO
CREATE PROCEDURE Modificar_Marcas
  @ID INT,
  @DESCRIPCION_MARCA VARCHAR(255)
AS
BEGIN
  UPDATE MARCAS SET MARCA = @DESCRIPCION_MARCA WHERE MARCA_ID = @ID
END;
GO

-- Tabla DEPOSITOS
GO
CREATE PROCEDURE Crear_Depositos @DESCRIPCION_TIPODEP VARCHAR(255)
AS
BEGIN
  INSERT INTO DEPOSITOS (TIPO_DEPOSITO)
  VALUES(@DESCRIPCION_TIPODEP);
END;