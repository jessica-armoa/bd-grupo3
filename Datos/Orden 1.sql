GO
USE grupo3
GO

/************************************/
/*        TABLA DE PERSONAS       	*/
/***********************************/
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Mariela Gamon', 'Av.Caballero', 0993294588, 'mariegamon@gmail.com')
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Pedro Casco', 'Juan Leon', 0993294589, 'cascopedro@gmail.com')
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Jessica Baez','Av.Caballero', 0985791322, 'jessica@gmail.com')
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Julio Velasquez', 'Av. Jose Felix Bogado', 0983538533, 'juliovel@gmail.com')
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Angela Torres', 'Pedro Juan Caballero', 0993297588, 'angytorres001@gmail.com')
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Miguel Montenegro', 'Av.Caballero', 0984322625, 'miguel@gmail.com')
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Carlos González', 'Av. San Martín', 0985791323, 'carlosg@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Juan Pérez', 'Calle 12 de Octubre', 0985791324, 'juanp@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Luis Sánchez', 'Av. Mariscal López', 0985791325, 'luiss@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Diego Martínez', 'Av. Brasilia', 0985791326, 'diegom@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Andrés López', 'Av. España', 0985791327, 'andresl@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Roberto Gómez', 'Av. Santísima Trinidad', 0985791328, 'robertog@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('José Rodríguez', 'Av. Sacramento', 0985791329, 'joser@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Miguel Fernández', 'Av. Itá Enramada', 0985791330, 'miguelf@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Jorge González', 'Av. Sacramento', 0985791331, 'jorgeg@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('David Díaz', 'Av. Mcal. López', 0985791332, 'davidd@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Ana Martínez', 'Av. Mariscal Estigarribia', 0985791333, 'anam@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('María Pérez', 'Av. Félix Bogado', 0985791334, 'mariap@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Laura Gómez', 'Calle 15 de Agosto', 0985791335, 'laurag@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Sofía González', 'Av. Brasil', 0985791336, 'sofiag@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Carolina Rodríguez', 'Av. Santísima Trinidad', 0985791337, 'carolinar@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Valentina Sánchez', 'Av. España', 0985791338, 'valentinas@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Isabel Díaz', 'Av. Sacramento', 0985791339, 'isabeld@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Lucía López', 'Av. Sacramento', 0985791340, 'lucial@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Camila Fernández', 'Av. Itá Enramada', 0985791341, 'camilaf@gmail.com');
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Martina Gómez', 'Av. Sacramento', 0985791342, 'martinag@gmail.com');


insert into personas (nombre, direccion, telefono, correo_electronico) values ('Belen Valdez', 'Av.Eusebio', 0793294588, 'belen@gmail.com')
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Maria Recalde', 'Artigas', 0993294788, 'mariarecalde002@gmail.com')
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Cristhian Aguilera', 'Av. Columbo', 0943294588, 'cristhian@gmail.com')
insert into personas (nombre, direccion, telefono, correo_electronico) values ('Jorgelina Segovia', 'Av. Encarnacion', 0985147635, 'jorgelinass@gmail.com')

SELECT * FROM personas;

/************************************/
/*         TABLA DEPOSITOS          */
/************************************/
insert into depositos (tipo_deposito) values('Deposito General');
insert into depositos (tipo_deposito) values('Salon');

SELECT * FROM depositos;

/************************************/
/*          TABLA MARCAS            */
/************************************/
insert into marcas (marca) values('Schwarzkopf Professional');
insert into marcas (marca) values('Olaplex');
insert into marcas (marca) values('Revlon Professional');
insert into marcas (marca) values('Wella Professionals');
insert into marcas (marca) values('Loreal Paris');
insert into marcas (marca) values('Servicio');

SELECT * FROM marcas;


/************************************/
/*           TABLA TIPOS            */
/************************************/
insert into tipos (tipo) values('Shampoo');
insert into tipos (tipo) values('Acondicionador');
insert into tipos (tipo) values('Tinte');
insert into tipos (tipo) values('Baño de crema');
insert into tipos (tipo) values('Hidratacion');
insert into tipos (tipo) values('Lavado');
insert into tipos (tipo) values('Corte');
insert into tipos (tipo) values('Alisado');
insert into tipos (tipo) values('Peinado');

SELECT * FROM tipos;

