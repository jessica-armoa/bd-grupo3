/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     11/20/2023 4:13:42 PM                        */
/*==============================================================*/
USE master; -- Cambia a la base de datos master
GO

ALTER DATABASE grupo3 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE grupo3;

IF NOT EXISTS (SELECT *
FROM sys.databases
WHERE name = 'grupo3')
BEGIN
  CREATE DATABASE grupo3;
END

USE grupo3;

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('CLIENTES') and o.name = 'FK_CLIENTES_RELATIONS_PERSONAS')
alter table CLIENTES
  drop constraint FK_CLIENTES_RELATIONS_PERSONAS
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DETALLES_FACTURAS') and o.name = 'FK_DETALLES_RELATIONS_FACTURAS')
alter table DETALLES_FACTURAS
  drop constraint FK_DETALLES_RELATIONS_FACTURAS
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DETALLES_FACTURAS') and o.name = 'FK_DETALLES_RELATIONS_PRODUCTO3')
alter table DETALLES_FACTURAS
  drop constraint FK_DETALLES_RELATIONS_PRODUCTO3
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DETALLES_MOVIMIENTOS') and o.name = 'FK_DETALLES_REFERENCE_MOVIMIEN')
alter table DETALLES_MOVIMIENTOS
  drop constraint FK_DETALLES_REFERENCE_MOVIMIEN
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DETALLES_MOVIMIENTOS') and o.name = 'FK_DETALLES_REFERENCE_PRODUCTO')
alter table DETALLES_MOVIMIENTOS
  drop constraint FK_DETALLES_REFERENCE_PRODUCTO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DETALLES_MOVIMIENTOS') and o.name = 'FK_DETALLES_REFERENCE_DEPOSITO')
alter table DETALLES_MOVIMIENTOS
  drop constraint FK_DETALLES_REFERENCE_DEPOSITO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DETALLES_PRODUCTOS_UTILIZADOS') and o.name = 'FK_DETALLES_RELATIONS_SERVICIO')
alter table DETALLES_PRODUCTOS_UTILIZADOS
  drop constraint FK_DETALLES_RELATIONS_SERVICIO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DETALLES_PRODUCTOS_UTILIZADOS') and o.name = 'FK_DETALLES_RELATIONS_PRODUCTO2')
alter table DETALLES_PRODUCTOS_UTILIZADOS
  drop constraint FK_DETALLES_RELATIONS_PRODUCTO2
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DETALLES_TRANSFERENCIAS') and o.name = 'FK_DETALLES_RELATIONS_PRODUCTO')
alter table DETALLES_TRANSFERENCIAS
  drop constraint FK_DETALLES_RELATIONS_PRODUCTO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('DETALLES_TRANSFERENCIAS') and o.name = 'FK_DETALLES_RELATIONS_TRANSFER')
alter table DETALLES_TRANSFERENCIAS
  drop constraint FK_DETALLES_RELATIONS_TRANSFER
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('EMPLEADOS') and o.name = 'FK_EMPLEADO_RELATIONS_PERSONAS')
alter table EMPLEADOS
  drop constraint FK_EMPLEADO_RELATIONS_PERSONAS
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('FACTURAS') and o.name = 'FK_FACTURAS_RELATIONS_CLIENTES')
alter table FACTURAS
  drop constraint FK_FACTURAS_RELATIONS_CLIENTES
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('FACTURAS') and o.name = 'FK_FACTURAS_RELATIONS_SERVICIO')
alter table FACTURAS
  drop constraint FK_FACTURAS_RELATIONS_SERVICIO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('MOVIMIENTOS_STOCK') and o.name = 'FK_MOVIMIEN_REFERENCE_TIPOS_MO')
alter table MOVIMIENTOS_STOCK
  drop constraint FK_MOVIMIEN_REFERENCE_TIPOS_MO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('PRODUCTOS') and o.name = 'FK_PRODUCTO_REFERENCE_MARCAS')
alter table PRODUCTOS
  drop constraint FK_PRODUCTO_REFERENCE_MARCAS
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('PRODUCTOS') and o.name = 'FK_PRODUCTO_REFERENCE_TIPOS')
alter table PRODUCTOS
  drop constraint FK_PRODUCTO_REFERENCE_TIPOS
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('SERVICIOS_REALIZADOS') and o.name = 'FK_SERVICIO_RELATIONS_CLIENTES')
alter table SERVICIOS_REALIZADOS
  drop constraint FK_SERVICIO_RELATIONS_CLIENTES
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('STOCKS') and o.name = 'FK_STOCKS_REFERENCE_DEPOSITO')
alter table STOCKS
  drop constraint FK_STOCKS_REFERENCE_DEPOSITO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('STOCKS') and o.name = 'FK_STOCKS_REFERENCE_PRODUCTO')
alter table STOCKS
  drop constraint FK_STOCKS_REFERENCE_PRODUCTO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('TRANSFERENCIAS') and o.name = 'FK_TRANSFER_RELATIONS_DEPOSITO')
alter table TRANSFERENCIAS
  drop constraint FK_TRANSFER_RELATIONS_DEPOSITO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('TRANSFERENCIAS') and o.name = 'FK_TRANSFER_RELATIONS_EMPLEADO2')
alter table TRANSFERENCIAS
  drop constraint FK_TRANSFER_RELATIONS_EMPLEADO2
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('TRANSFERENCIAS') and o.name = 'FK_TRANSFER_RELATIONS_EMPLEADO')
alter table TRANSFERENCIAS
  drop constraint FK_TRANSFER_RELATIONS_EMPLEADO
go

if exists (select 1
from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
where r.fkeyid = object_id('TRANSFERENCIAS') and o.name = 'FK_TRANSFER_RELATIONS_DEPOSITO2')
alter table TRANSFERENCIAS
  drop constraint FK_TRANSFER_RELATIONS_DEPOSITO2
go

if exists (select 1
from sysindexes
where  id    = object_id('CLIENTES')
  and name  = 'RELATIONSHIP_13_FK'
  and indid > 0
  and indid < 255)
  drop index CLIENTES.RELATIONSHIP_13_FK
go

if exists (select 1
from sysobjects
where  id = object_id('CLIENTES')
  and type = 'U')
  drop table CLIENTES
go

if exists (select 1
from sysobjects
where  id = object_id('DEPOSITOS')
  and type = 'U')
  drop table DEPOSITOS
go

if exists (select 1
from sysindexes
where  id    = object_id('DETALLES_FACTURAS')
  and name  = 'RELATIONSHIP_23_FK'
  and indid > 0
  and indid < 255)
  drop index DETALLES_FACTURAS.RELATIONSHIP_23_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('DETALLES_FACTURAS')
  and name  = 'RELATIONSHIP_18_FK'
  and indid > 0
  and indid < 255)
  drop index DETALLES_FACTURAS.RELATIONSHIP_18_FK
go

if exists (select 1
from sysobjects
where  id = object_id('DETALLES_FACTURAS')
  and type = 'U')
  drop table DETALLES_FACTURAS
go

if exists (select 1
from sysobjects
where  id = object_id('DETALLES_MOVIMIENTOS')
  and type = 'U')
  drop table DETALLES_MOVIMIENTOS
go

if exists (select 1
from sysindexes
where  id    = object_id('DETALLES_PRODUCTOS_UTILIZADOS')
  and name  = 'RELATIONSHIP_12_FK'
  and indid > 0
  and indid < 255)
  drop index DETALLES_PRODUCTOS_UTILIZADOS.RELATIONSHIP_12_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('DETALLES_PRODUCTOS_UTILIZADOS')
  and name  = 'RELATIONSHIP_8_FK'
  and indid > 0
  and indid < 255)
  drop index DETALLES_PRODUCTOS_UTILIZADOS.RELATIONSHIP_8_FK
go

if exists (select 1
from sysobjects
where  id = object_id('DETALLES_PRODUCTOS_UTILIZADOS')
  and type = 'U')
  drop table DETALLES_PRODUCTOS_UTILIZADOS
go

if exists (select 1
from sysindexes
where  id    = object_id('DETALLES_TRANSFERENCIAS')
  and name  = 'RELATIONSHIP_22_FK'
  and indid > 0
  and indid < 255)
  drop index DETALLES_TRANSFERENCIAS.RELATIONSHIP_22_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('DETALLES_TRANSFERENCIAS')
  and name  = 'RELATIONSHIP_21_FK'
  and indid > 0
  and indid < 255)
  drop index DETALLES_TRANSFERENCIAS.RELATIONSHIP_21_FK
go

if exists (select 1
from sysobjects
where  id = object_id('DETALLES_TRANSFERENCIAS')
  and type = 'U')
  drop table DETALLES_TRANSFERENCIAS
go

if exists (select 1
from sysindexes
where  id    = object_id('EMPLEADOS')
  and name  = 'RELATIONSHIP_15_FK'
  and indid > 0
  and indid < 255)
  drop index EMPLEADOS.RELATIONSHIP_15_FK
go

if exists (select 1
from sysobjects
where  id = object_id('EMPLEADOS')
  and type = 'U')
  drop table EMPLEADOS
go

if exists (select 1
from sysindexes
where  id    = object_id('FACTURAS')
  and name  = 'RELATIONSHIP_20_FK'
  and indid > 0
  and indid < 255)
  drop index FACTURAS.RELATIONSHIP_20_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('FACTURAS')
  and name  = 'RELATIONSHIP_19_FK'
  and indid > 0
  and indid < 255)
  drop index FACTURAS.RELATIONSHIP_19_FK
go

if exists (select 1
from sysobjects
where  id = object_id('FACTURAS')
  and type = 'U')
  drop table FACTURAS
go

if exists (select 1
from sysobjects
where  id = object_id('MARCAS')
  and type = 'U')
  drop table MARCAS
go

if exists (select 1
from sysobjects
where  id = object_id('MOVIMIENTOS_STOCK')
  and type = 'U')
  drop table MOVIMIENTOS_STOCK
go

if exists (select 1
from sysobjects
where  id = object_id('PERSONAS')
  and type = 'U')
  drop table PERSONAS
go

if exists (select 1
from sysindexes
where  id    = object_id('PRODUCTOS')
  and name  = 'REFERENCE_2_FK'
  and indid > 0
  and indid < 255)
  drop index PRODUCTOS.REFERENCE_2_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('PRODUCTOS')
  and name  = 'REFERENCE_1_FK'
  and indid > 0
  and indid < 255)
  drop index PRODUCTOS.REFERENCE_1_FK
go

if exists (select 1
from sysobjects
where  id = object_id('PRODUCTOS')
  and type = 'U')
  drop table PRODUCTOS
go

if exists (select 1
from sysindexes
where  id    = object_id('SERVICIOS_REALIZADOS')
  and name  = 'RELATIONSHIP_14_FK'
  and indid > 0
  and indid < 255)
  drop index SERVICIOS_REALIZADOS.RELATIONSHIP_14_FK
go

if exists (select 1
from sysobjects
where  id = object_id('SERVICIOS_REALIZADOS')
  and type = 'U')
  drop table SERVICIOS_REALIZADOS
go

if exists (select 1
from sysindexes
where  id    = object_id('STOCKS')
  and name  = 'REFERENCE_4_FK'
  and indid > 0
  and indid < 255)
  drop index STOCKS.REFERENCE_4_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('STOCKS')
  and name  = 'REFERENCE_3_FK'
  and indid > 0
  and indid < 255)
  drop index STOCKS.REFERENCE_3_FK
go

if exists (select 1
from sysobjects
where  id = object_id('STOCKS')
  and type = 'U')
  drop table STOCKS
go

if exists (select 1
from sysobjects
where  id = object_id('TIPOS')
  and type = 'U')
  drop table TIPOS
go

if exists (select 1
from sysobjects
where  id = object_id('TIPOS_MOVIMIENTOS')
  and type = 'U')
  drop table TIPOS_MOVIMIENTOS
go

if exists (select 1
from sysindexes
where  id    = object_id('TRANSFERENCIAS')
  and name  = 'RELATIONSHIP_17_FK'
  and indid > 0
  and indid < 255)
  drop index TRANSFERENCIAS.RELATIONSHIP_17_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('TRANSFERENCIAS')
  and name  = 'RELATIONSHIP_16_FK'
  and indid > 0
  and indid < 255)
  drop index TRANSFERENCIAS.RELATIONSHIP_16_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('TRANSFERENCIAS')
  and name  = 'RELATIONSHIP_10_FK'
  and indid > 0
  and indid < 255)
  drop index TRANSFERENCIAS.RELATIONSHIP_10_FK
go

if exists (select 1
from sysindexes
where  id    = object_id('TRANSFERENCIAS')
  and name  = 'RELATIONSHIP_9_FK'
  and indid > 0
  and indid < 255)
  drop index TRANSFERENCIAS.RELATIONSHIP_9_FK
go

if exists (select 1
from sysobjects
where  id = object_id('TRANSFERENCIAS')
  and type = 'U')
  drop table TRANSFERENCIAS
go

/*==============================================================*/
/* Table: CLIENTES                                              */
/*==============================================================*/
create table CLIENTES
(
  CLIENTE_ID int identity(1,1) not null,
  PERSONA_ID int null,
  RUC varchar(20) null,
  constraint PK_CLIENTES primary key nonclustered (CLIENTE_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on CLIENTES (
PERSONA_ID ASC
)
go

/*==============================================================*/
/* Table: DEPOSITOS                                             */
/*==============================================================*/
create table DEPOSITOS
(
  DEPOSITO_ID int identity(1,1) not null,
  TIPO_DEPOSITO varchar(255) null,
  constraint PK_DEPOSITOS primary key nonclustered (DEPOSITO_ID)
)
go

/*==============================================================*/
/* Table: DETALLES_FACTURAS                                     */
/*==============================================================*/
create table DETALLES_FACTURAS
(
  DETALLE_FACTURA_ID int identity(1,1) not null,
  FACTURA_ID int null,
  PRODUCTO_ID int null,
  CANTIDAD int not null,
  PRECIO_UNITARIO numeric not null,
  IVA decimal(4,3) not null,
  constraint PK_DETALLES_FACTURAS primary key nonclustered (DETALLE_FACTURA_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on DETALLES_FACTURAS (
FACTURA_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on DETALLES_FACTURAS (
PRODUCTO_ID ASC
)
go

/*==============================================================*/
/* Table: DETALLES_MOVIMIENTOS                                  */
/*==============================================================*/
create table DETALLES_MOVIMIENTOS
(
  DESTALLE_MOVIMIENTO_ID int identity(1,1) not null,
  PRODUCTO_ID int null,
  DEPOSITO_ID int null,
  MOVIMIENTO_ID int null,
  CANTIDAD int null,
  constraint PK_DETALLES_MOVIMIENTOS primary key (DESTALLE_MOVIMIENTO_ID)
)
go

/*==============================================================*/
/* Table: DETALLES_PRODUCTOS_UTILIZADOS                         */
/*==============================================================*/
create table DETALLES_PRODUCTOS_UTILIZADOS
(
  DETALLE_ID int identity(1,1) not null,
  PRODUCTO_ID int not null,
  SERVICIO_REALIZADO_ID int null,
  CANTIDAD int null,
  PRECIO_UNITARIO numeric null,
  IVA decimal(4,3) null,
  constraint PK_DETALLES_PRODUCTOS_UTILIZAD primary key nonclustered (DETALLE_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on DETALLES_PRODUCTOS_UTILIZADOS (
PRODUCTO_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on DETALLES_PRODUCTOS_UTILIZADOS (
SERVICIO_REALIZADO_ID ASC
)
go

/*==============================================================*/
/* Table: DETALLES_TRANSFERENCIAS                               */
/*==============================================================*/
create table DETALLES_TRANSFERENCIAS
(
  DETALLE_TRANSFERENCIA_ID int identity(1,1) not null,
  TRANSFERENCIA_ID int null,
  PRODUCTO_ID int null,
  CANTIDAD int null,
  constraint PK_DETALLES_TRANSFERENCIAS primary key nonclustered (DETALLE_TRANSFERENCIA_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_21_FK on DETALLES_TRANSFERENCIAS (
PRODUCTO_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_22_FK on DETALLES_TRANSFERENCIAS (
TRANSFERENCIA_ID ASC
)
go

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS
(
  EMPLEADO_ID int identity(1,1) not null,
  PERSONA_ID int null,
  CARGO varchar(255) not null,
  constraint PK_EMPLEADOS primary key nonclustered (EMPLEADO_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on EMPLEADOS (
PERSONA_ID ASC
)
go

/*==============================================================*/
/* Table: FACTURAS                                              */
/*==============================================================*/
create table FACTURAS
(
  FACTURA_ID int identity(1,1) not null,
  CLIENTE_ID int null,
  SERVICIO_REALIZADO_ID int null,
  FECHA datetime null,
  TOTAL int null,
  TIPO char(1) null,
  constraint PK_FACTURAS primary key nonclustered (FACTURA_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_19_FK on FACTURAS (
CLIENTE_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_20_FK on FACTURAS (
SERVICIO_REALIZADO_ID ASC
)
go

/*==============================================================*/
/* Table: MARCAS                                                */
/*==============================================================*/
create table MARCAS
(
  MARCA_ID int identity(1,1) not null,
  MARCA varchar(255) not null,
  constraint PK_MARCAS primary key nonclustered (MARCA_ID)
)
go

/*==============================================================*/
/* Table: MOVIMIENTOS_STOCK                                     */
/*==============================================================*/
create table MOVIMIENTOS_STOCK
(
  MOVIMIENTO_ID int identity(1,1) not null,
  TIPO_MOVIMIENTO_ID int null,
  FECHA datetime null,
  constraint PK_MOVIMIENTOS_STOCK primary key (MOVIMIENTO_ID)
)
go

/*==============================================================*/
/* Table: PERSONAS                                              */
/*==============================================================*/
create table PERSONAS
(
  PERSONA_ID int identity(1,1) not null,
  NOMBRE varchar(255) not null,
  DIRECCION varchar(255) null,
  TELEFONO varchar(255) not null,
  CORREO_ELECTRONICO varchar(255) null,
  constraint PK_PERSONAS primary key nonclustered (PERSONA_ID)
)
go

/*==============================================================*/
/* Table: PRODUCTOS                                             */
/*==============================================================*/
create table PRODUCTOS
(
  PRODUCTO_ID int identity(1,1) not null,
  MARCA_ID int null,
  TIPO_ID int null,
  DESCRIPCION varchar(255) not null,
  ES_SERVICIO bit not null,
  PRECIO_UNITARIO numeric null,
  IVA decimal(4,3) null,
  constraint PK_PRODUCTOS primary key nonclustered (PRODUCTO_ID)
)
go

/*==============================================================*/
/* Index: REFERENCE_1_FK                                        */
/*==============================================================*/
create index REFERENCE_1_FK on PRODUCTOS (
MARCA_ID ASC
)
go

/*==============================================================*/
/* Index: REFERENCE_2_FK                                        */
/*==============================================================*/
create index REFERENCE_2_FK on PRODUCTOS (
TIPO_ID ASC
)
go

/*==============================================================*/
/* Table: SERVICIOS_REALIZADOS                                  */
/*==============================================================*/
create table SERVICIOS_REALIZADOS
(
  SERVICIO_REALIZADO_ID int identity(1,1) not null,
  CLIENTE_ID int null,
  FECHA datetime not null,
  DESCRIPCION varchar(255) null,
  FACTURADO bit null,
  constraint PK_SERVICIOS_REALIZADOS primary key nonclustered (SERVICIO_REALIZADO_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on SERVICIOS_REALIZADOS (
CLIENTE_ID ASC
)
go

/*==============================================================*/
/* Table: STOCKS                                                */
/*==============================================================*/
create table STOCKS
(
  STOCK_ID int identity(1,1) not null,
  DEPOSITO_ID int null,
  PRODUCTO_ID int null,
  CANTIDAD_PRODUCTO int not null,
  constraint PK_STOCKS primary key nonclustered (STOCK_ID)
)
go

/*==============================================================*/
/* Index: REFERENCE_3_FK                                        */
/*==============================================================*/
create index REFERENCE_3_FK on STOCKS (
DEPOSITO_ID ASC
)
go

/*==============================================================*/
/* Index: REFERENCE_4_FK                                        */
/*==============================================================*/
create index REFERENCE_4_FK on STOCKS (
PRODUCTO_ID ASC
)
go

/*==============================================================*/
/* Table: TIPOS                                                 */
/*==============================================================*/
create table TIPOS
(
  TIPO_ID int identity(1,1) not null,
  TIPO varchar(255) not null,
  constraint PK_TIPOS primary key nonclustered (TIPO_ID)
)
go

/*==============================================================*/
/* Table: TIPOS_MOVIMIENTOS                                     */
/*==============================================================*/
create table TIPOS_MOVIMIENTOS
(
  TIPO_MOVIMIENTO_ID int identity(1,1) not null,
  DESCRIPCION varchar(255) null,
  OPERACION bit null,
  constraint PK_TIPOS_MOVIMIENTOS primary key (TIPO_MOVIMIENTO_ID)
)
go

/*==============================================================*/
/* Table: TRANSFERENCIAS                                        */
/*==============================================================*/
create table TRANSFERENCIAS
(
  TRANFERENCIA_ID int identity(1,1) not null,
  DEPOSITO_ORIGEN_ID int not null,
  DEPOSITO_DESTINO_ID int not null,
  ENCARGADO_ID int null,
  AUTORIZANTE_ID int null,
  FECHA datetime null,
  constraint PK_TRANSFERENCIAS primary key nonclustered (TRANFERENCIA_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on TRANSFERENCIAS (
DEPOSITO_ORIGEN_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on TRANSFERENCIAS (
DEPOSITO_DESTINO_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on TRANSFERENCIAS (
ENCARGADO_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on TRANSFERENCIAS (
AUTORIZANTE_ID ASC
)
go

alter table CLIENTES
  add constraint FK_CLIENTES_RELATIONS_PERSONAS foreign key (PERSONA_ID)
      references PERSONAS (PERSONA_ID)
go

alter table DETALLES_FACTURAS
  add constraint FK_DETALLES_RELATIONS_FACTURAS foreign key (FACTURA_ID)
      references FACTURAS (FACTURA_ID)
go

alter table DETALLES_FACTURAS
  add constraint FK_DETALLES_RELATIONS_PRODUCTO3 foreign key (PRODUCTO_ID)
      references PRODUCTOS (PRODUCTO_ID)
go

alter table DETALLES_MOVIMIENTOS
  add constraint FK_DETALLES_REFERENCE_MOVIMIEN foreign key (MOVIMIENTO_ID)
      references MOVIMIENTOS_STOCK (MOVIMIENTO_ID)
go

alter table DETALLES_MOVIMIENTOS
  add constraint FK_DETALLES_REFERENCE_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTOS (PRODUCTO_ID)
go

alter table DETALLES_MOVIMIENTOS
  add constraint FK_DETALLES_REFERENCE_DEPOSITO foreign key (DEPOSITO_ID)
      references DEPOSITOS (DEPOSITO_ID)
go

alter table DETALLES_PRODUCTOS_UTILIZADOS
  add constraint FK_DETALLES_RELATIONS_SERVICIO foreign key (SERVICIO_REALIZADO_ID)
      references SERVICIOS_REALIZADOS (SERVICIO_REALIZADO_ID)
go

alter table DETALLES_PRODUCTOS_UTILIZADOS
  add constraint FK_DETALLES_RELATIONS_PRODUCTO2 foreign key (PRODUCTO_ID)
      references PRODUCTOS (PRODUCTO_ID)
go

alter table DETALLES_TRANSFERENCIAS
  add constraint FK_DETALLES_RELATIONS_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTOS (PRODUCTO_ID)
go

alter table DETALLES_TRANSFERENCIAS
  add constraint FK_DETALLES_RELATIONS_TRANSFER foreign key (TRANSFERENCIA_ID)
      references TRANSFERENCIAS (TRANFERENCIA_ID)
go

alter table EMPLEADOS
  add constraint FK_EMPLEADO_RELATIONS_PERSONAS foreign key (PERSONA_ID)
      references PERSONAS (PERSONA_ID)
go

alter table FACTURAS
  add constraint FK_FACTURAS_RELATIONS_CLIENTES foreign key (CLIENTE_ID)
      references CLIENTES (CLIENTE_ID)
go

alter table FACTURAS
  add constraint FK_FACTURAS_RELATIONS_SERVICIO foreign key (SERVICIO_REALIZADO_ID)
      references SERVICIOS_REALIZADOS (SERVICIO_REALIZADO_ID)
go

alter table MOVIMIENTOS_STOCK
  add constraint FK_MOVIMIEN_REFERENCE_TIPOS_MO foreign key (TIPO_MOVIMIENTO_ID)
      references TIPOS_MOVIMIENTOS (TIPO_MOVIMIENTO_ID)
go

alter table PRODUCTOS
  add constraint FK_PRODUCTO_REFERENCE_MARCAS foreign key (MARCA_ID)
      references MARCAS (MARCA_ID)
go

alter table PRODUCTOS
  add constraint FK_PRODUCTO_REFERENCE_TIPOS foreign key (TIPO_ID)
      references TIPOS (TIPO_ID)
go

alter table SERVICIOS_REALIZADOS
  add constraint FK_SERVICIO_RELATIONS_CLIENTES foreign key (CLIENTE_ID)
      references CLIENTES (CLIENTE_ID)
go

alter table STOCKS
  add constraint FK_STOCKS_REFERENCE_DEPOSITO foreign key (DEPOSITO_ID)
      references DEPOSITOS (DEPOSITO_ID)
go

alter table STOCKS
  add constraint FK_STOCKS_REFERENCE_PRODUCTO foreign key (PRODUCTO_ID)
      references PRODUCTOS (PRODUCTO_ID)
go

alter table TRANSFERENCIAS
  add constraint FK_TRANSFER_RELATIONS_DEPOSITO foreign key (DEPOSITO_DESTINO_ID)
      references DEPOSITOS (DEPOSITO_ID)
go

alter table TRANSFERENCIAS
  add constraint FK_TRANSFER_RELATIONS_EMPLEADO2 foreign key (ENCARGADO_ID)
      references EMPLEADOS (EMPLEADO_ID)
go

alter table TRANSFERENCIAS
  add constraint FK_TRANSFER_RELATIONS_EMPLEADO foreign key (AUTORIZANTE_ID)
      references EMPLEADOS (EMPLEADO_ID)
go

alter table TRANSFERENCIAS
  add constraint FK_TRANSFER_RELATIONS_DEPOSITO2 foreign key (DEPOSITO_ORIGEN_ID)
      references DEPOSITOS (DEPOSITO_ID)
go