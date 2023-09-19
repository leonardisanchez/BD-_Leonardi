/*36_LeonardiSanchez*/

DROP DATABASE IF EXISTS dbgamarramarket;
/*Crear la Base de datos dbGamarraMarket*/
CREATE DATABASE dbGamarraMarket;
/* Poner en uso la base de datos dbGamarraMarket */
USE dbGamarraMarket;
/* Creamos la tabla cliente */
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tipo_documento VARCHAR(255) NOT NULL,
    numero_documento VARCHAR(255) NOT NULL,
    nombres VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    celular VARCHAR(20) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    activo bit DEFAULT 1 NOT NULL
);
/*Eliminar Cliente*/
DROP TABLE cliente;
/*Insertamos Datos en la tabla cliente*/
INSERT INTO cliente
 (tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUES
 ('DNI', '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@gmail.com', '998456103', STR_TO_DATE('10/02/1970', '%d/%m/%Y')),
 ('DNI', '45781233', 'Alicia', 'García Campos', '', '', STR_TO_DATE('20/03/1980', '%d/%m/%Y')),
 ('CNE', '315487922', 'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', STR_TO_DATE('06/06/1986', '%d/%m/%Y')),
 ('CNE', '122116633', 'Ana', 'Enriquez Flores', 'ana.enriquez@empresa.com', '', STR_TO_DATE('10/02/1970', '%d/%m/%Y')),
 ('CNE', '088741589', 'Claudia', 'Perales Ortiz', 'claudia.perales@yahoo.com', '997845263 ', STR_TO_DATE('25/07/1981', '%d/%m/%Y')),
 ('DNI', '45122587', 'Mario', 'Barrios Martinez', 'mario.barrios@outlook.com', '986525871', STR_TO_DATE('10/10/1987', '%d/%m/%Y')),
 ('CNE', '175258564 ', 'Brunela', 'Tarazona Guerra', 'brunela.tarazona@gmail.com', '995236741', STR_TO_DATE('06/06/1990', '%d/%m/%Y')),
 ('DNI', '47142536', 'Alejandro', 'Jimenez Huapaya', '', '941525365', STR_TO_DATE('01/06/1989', '%d/%m/%Y')),
 ('DNI', '15352585', 'Claudia', 'Marquez Litano', 'claudia.marquez@gmail.com', '985814723', STR_TO_DATE('01/10/1991', '%d/%m/%Y')),
 ('CNE', '465772587', 'Mario', ' Rodriguez Mayo', 'mario.rodriguez@outlook.com', '912662587', STR_TO_DATE('10/11/1987', '%d/%m/%Y')),
 ('CNE', '837952514', 'Luisa', 'Guerra Ibarra', 'luisa.querra@yahoo.com ', '974422136', STR_TO_DATE('21/12/1988', '%d/%m/%Y')),
 ('DNI', '74142585', 'Pedro Al..', 'Candela Valenzuela', 'pedro.candela@gmail.com', '94148525', STR_TO_DATE('30/06/1995', '%d/%m/%Y')),
 ('DNI', '53298147', 'Angel M..', 'Rojas Avila', 'angel.rojas@outlook.com', '', STR_TO_DATE('02/03/1975', '%d/%m/%Y')),
 ('DNI', '11453265', 'Hilario F..', 'Avila Huapaya', '', '985514326', STR_TO_DATE('02/05/2000', '%d/%m/%Y')),
 ('CNE', '757472186', 'Octavio ..', 'Marquez Osorio', 'octavio.marquez@yahoo.es', '966223141', STR_TO_DATE('22/09/2000', '%d/%m/%Y')),
 ('CNE', '558693219', 'Manolo E..', 'Vasquez Saravia', 'manolo.vasquez@outlook.es', '966223141', STR_TO_DATE('22/09/2000', '%d/%m/%Y')),
 ('DNI', '41552567', 'Genoveva..', 'Ortiz Quispe', 'genoveva.ortiz@outlook.es', '92564137', STR_TO_DATE('12/04/2003', '%d/%m/%Y')),
 ('DNI', '49985471', 'Oscar C..', 'Quiroz Zavala', '', '988223145', STR_TO_DATE('12/10/2004', '%d/%m/%Y')),
 ('DNI', '44992217', 'Veronica', 'Romero Vargas', 'veronica.romero@yahoo.com ', '', STR_TO_DATE('25/08/2002', '%d/%m/%Y')),
 ('DNI', '00253641', 'Eliseo', 'Prada Ortiz', 'eliseo.prada@yahoo.com', '', STR_TO_DATE('15/09/2004', '%d/%m/%Y'));
/*Listamos cliente*/
SELECT * FROM cliente;

/*Creamos la Tabla VENDEDOR*/
CREATE TABLE VENDEDOR (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tipo_documento VARCHAR(255) NOT NULL,
    numero_documento VARCHAR(255) UNIQUE NOT NULL,
    nombres VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    salario DECIMAL(10, 2),
    celular VARCHAR(20) NOT NULL,
	email VARCHAR(255) NOT NULL,
    activo bit DEFAULT 1 NOT NULL
);
DROP TABLE VENDEDOR;
-- Insertar datos del primer vendedor
INSERT INTO VENDEDOR (tipo_documento, numero_documento, nombres, apellidos, salario,celular,email)
VALUES 
('DNI', '85471236', 'Enrique', 'Pérez Manco', 1500.00,'96521873','enrique.perez@outlook.com'),
('DNI', '47259136', 'Sofia', 'Avila Solis', '1350.00', '',''),
('DNI', '61542280', 'Marcela', 'Napaico Cama', 1600.00,'965874357','marcela.napaico@gmail.com'),
('CNE', '742536140', 'Carmelo', 'Rodriguez Chauca', 1550.00,'','carmelo.rodriguez@yahoo.com');
SELECT * FROM VENDEDOR;

/*Creamos la Tabla Prenda*/
-- Creamos la tabla Prenda
CREATE TABLE Prenda (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    cantidad INT NOT NULL,
    talla VARCHAR(10) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    activo BIT DEFAULT 1 NOT NULL
);
DROP TABLE Prenda;
-- Insertamos los datos en la tabla Prenda
INSERT INTO Prenda (descripcion, marca, cantidad, talla, precio)
VALUES
('Pantalón Jeans', 'Levis', 60, '28', 65.80),
('Camisa manga corta', 'Adams', 16, '75', 55.00),
('Polo sport', 'Australia', 100, '16', 40.00),
('Camisa manga larga', 'Newport', 150, '16', 42.50),
('Pijama para caballero', 'Adams', 180, '28', 79.50),
('Corbata', 'Maxwell', 85, '16', 14.50),
('Pijama para dama', 'Adams', 170, '24', 55.50),
('Pantalón Jeans', 'Australia', 200, '28', 68.50),
('Camisa Sport', 'John Holden', 85, '16', 88.50),
('Shorts Jeans', 'Pepe Jeans', 185, '28', 77.20);
SELECT * FROM Prenda;

-- Creamos la tabla VENTA
CREATE TABLE VENTA (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	cliente_id VARCHAR(255) NOT NULL,
    vendedor_id CHAR(1) NOT NULL,
	activo BIT DEFAULT 1 NOT NULL
);

INSERT INTO VENTA (cliente_id, vendedor_id)
VALUES 
('4', '1'),
('6', '3'),
('10', '1'),
('18', '4');
SELECT * FROM VENTA;

-- Creamos la tabla VENTA_DETALLE
CREATE TABLE VENTA_DETALLE (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	venta_id INT NOT NULL,
	prenda_id VARCHAR(255) NOT NULL,
    cantidad INT NOT NULL
);
-- Insertar datos en la tabla VENTA_DETALLE
INSERT INTO VENTA_DETALLE (venta_id, prenda_id, cantidad)
VALUES 
(1, '6', 3),
(1, '3', 5),
(1, '2', 7),
(2, '2', 3),
(3, '7', 4),
(3, '10', 6),
(3, '2', 6),
(3, '5', 7),
(4, '2', 4),
(4, '5', 3);
SELECT * FROM VENTA_DETALLE;

/*Para desactivar el modo seguro de actualización, puedes ejecutar:*/
SET SQL_SAFE_UPDATES = 0;
/*activar el "modo seguro de actualización*/
SET SQL_SAFE_UPDATES = 1;

/*Actualizar el numero de celular de Mario Mayo por el numero 922881101*/
UPDATE cliente
SET celular = '922881101'
WHERE nombres = 'Mario' AND apellidos = 'Rodriguez Mayo';
SELECT * FROM cliente; 

/*El cliente de DNI 53298147 ya cuenta con numero de celular es: 977226604*/
UPDATE cliente
SET celular = '977226604'
WHERE numero_documento = '53298147';
SELECT * FROM cliente; 

/*Eliminar ldgicamente los clientes cuyo DNI son: 11453265, 74142585 y 49985471.*/
UPDATE cliente
SET activo = 0
WHERE numero_documento IN ('11453265', '74142585', '49985471');
SELECT * FROM cliente; 

/*Los clientes cuyos DNI son: 87952514, 55869321 y 74142585 han perdido su celular por tanto debe
estar en blanco.*/
UPDATE cliente
SET celular = ''
WHERE numero_documento IN ('87952514', '55869321', '74142585');
SELECT * FROM cliente; 

/*El cliente Oscar César Quiroz Zavala sera reactivado y debemos actualizar su nuevo correo:
oscar.quiroz@yahoo.es.*/
UPDATE cliente
SET activo = 1, email = 'oscar.quiroz@yahoo.es'
WHERE nombres = 'Oscar' AND apellidos = 'César Quiroz Zavala';
SELECT * FROM cliente;

/*Agregar los datos de los siguientes clientes y vendedor.*/
SELECT * FROM cliente;
SELECT * FROM vendedor;
INSERT INTO cliente
  (tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
 VALUES
  ('DNI', '88225463', 'Gustavo Tadeo', 'Quispe Solorzano', 'gustavo.quispe@gmail.com', '', STR_TO_DATE('13/10/2001', '%d/%m/%Y')),
  ('DNI', '15753595', 'Daniela', 'Solis Vargas', 'daniela.soliz@outlook.com', '', STR_TO_DATE('09/11/1993', '%d/%m/%Y')),
  ('DNI', '76314895', 'Milton Gregorio', 'Vazquez Iturrizaga', 'milton.gregorio@yahoo.es', '97481533', STR_TO_DATE('22/06/2004', '%d/%m/%Y')),
  ('DNI', '84725001', 'Veronica', 'Ancajima Araujo', 'veronica.ancajina@yahoo.com', '', STR_TO_DATE('07/11/1980', '%d/%m/%Y')),
  ('DNI', '11228514', 'Felicita', 'Marroquin Candela', 'felicita.marroquin@outlook.com', '966001472', STR_TO_DATE('06/06/2006', '%d/%m/%Y')),
  ('DNI', '51436952', 'Luhana', 'Ortiz Rodriguez', 'luhana.ortiz@outlook.com', '960405017', STR_TO_DATE('25/11/1980', '%d/%m/%Y'));
SELECT * FROM cliente;
 
/*Actualizar el precio del polo sport de marca Australia a 45.00*/
UPDATE Prenda
SET precio = 45.00
WHERE descripcion = 'Polo sport Australia';
SELECT * FROM Prenda;

/*Cambiar el nombre de la prenda Corbata por Corbata Michi elegante*/
UPDATE Prenda
SET descripcion = 'Corbata Michi elegante'
WHERE descripcion = 'Corbata';
SELECT * FROM Prenda;

/*Eliminar físicamente las prendas "Camisa manga corta" y "Camisa Sport" de la tabla "Prenda":*/
DELETE FROM Prenda
WHERE descripcion IN ('Camisa manga corta', 'Camisa Sport');
SELECT * FROM Prenda;

/*Eliminar físicamente a la vendedora "Marcela Napaico Cama" de la tabla "VENDEDOR":*/
DELETE FROM VENDEDOR
WHERE nombres = 'Marcela' AND apellidos = 'Napaico Cama';
SELECT * FROM VENDEDOR;

/*Eliminar físicamente los clientes cuyos números de documentos son "47142536" y "77889955" de la tabla "cliente":*/
DELETE FROM cliente
WHERE numero_documento IN ('47142536', '77889955');
SELECT * FROM cliente;

/*Eliminar físicamente todos los clientes nacidos en el año 1980 de la tabla "cliente" (asumiendo que la columna "fecha_nacimiento" es de tipo DATE):*/
DELETE FROM cliente
WHERE YEAR(fecha_nacimiento) = 1980;
SELECT * FROM cliente;

/*36_LeonardiSanchez*/
/*end*/