/*36_LeonardiSanchez*/

/*Crear la Base de datos dbGamarraMarket*/
CREATE DATABASE dbGamarraMarket;
/* Poner en uso la base de datos dbGamarraMarket */
USE dbGamarraMarket;
/* Creamos la tabla cliente */
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_documento VARCHAR(255),
    numero_documento VARCHAR(255) UNIQUE,
    nombres VARCHAR(255),
    apellidos VARCHAR(255),
    email VARCHAR(255),
    celular VARCHAR(20),
    fecha_nacimiento DATE,
    activo bit DEFAULT 1
);
/*Eliminar Cliente*/
DROP TABLE cliente;
/*Insertamos Datos en la tabla cliente*/
INSERT INTO cliente
 (tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUES
 ('DNI', '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@gmail.com', '998456323', STR_TO_DATE('10/02/1970', '%d/%m/%Y'));
/*Listamos cliente*/
SELECT * FROM cliente;
/* Insertar varios registros en la tabla CLIENTE */
INSERT INTO cliente
(tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUES
('CNE', '457812330', 'Alicia', 'García Campos', 'alicia.garcia@gmail.com', '998459872', STR_TO_DATE('20/03/1980', '%d/%m/%Y')),
('DNI', '15487922', 'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', STR_TO_DATE('06/06/1986', '%d/%m/%Y'));
/*Listamos cliente*/
SELECT * FROM cliente;
/* Cambiar los apellidos de Alicia Garcia Campos por Méndez Vera así como también su email alicia.mendez@gmail.com */
UPDATE cliente
SET apellidos = 'Méndez Vera',
    email = 'alicia.mendez@gmail.com'
WHERE id = 2;

/* Listar registros de la tabla CLIENTE */
SELECT * FROM cliente;

/* Establecer como I inactivo al cliente cuyo DNI es 15487922 */
UPDATE cliente
	SET activo = 0
	WHERE numero_documento = '15487922';

/* Listar registros de la tabla PERSONA */
SELECT * FROM cliente;

/* Eliminar los datos de Juana Ávila Chumpitaz */
DELETE FROM cliente
WHERE nombres = 'Juana' AND apellidos = 'Ávila Chumpitaz';

/* Listar registros de la tabla PERSONA */
SELECT * FROM cliente;

/* Eliminar todos los registros de la tabla PERSONA */
DELETE FROM cliente;

/* Listar registros de la tabla PERSONA */
SELECT * FROM cliente;

/*Para desactivar el modo seguro de actualización, puedes ejecutar:*/
SET SQL_SAFE_UPDATES = 0;
/*activar el "modo seguro de actualización*/
SET SQL_SAFE_UPDATES = 1;

 /*36_LeonardiSanchez*/ 
 /*end*/