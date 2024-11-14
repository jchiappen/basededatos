CREATE DATABASE ejercicio;

USE ejercicio;

CREATE TABLE mitabla (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100),
    edad INT,
    genero CHAR(1),
    correo VARCHAR (255) UNIQUE,
    estado CHAR(1) DEFAULT "A"
);


CREATE TABLE salon(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100),
    edad INT,
    materia VARCHAR (100),
    descripcion VARCHAR (255)
);

# Data Definition Languaje

SELECT * FROM salon;

INSERT INTO mitabla (nombre, edad, genero, correo)
VALUES ("andres",20 ,"M","12andres@gmail.com");

INSERT INTO mitabla (nombre, edad, genero, correo, estado)
VALUES ("miguel",20,"M","miguel12@gmail.com", "I");

SELECT * FROM mitabla;
SELECT nombre,edad FROM mitabla;
SELECT * FROM mitabla WHERE genero = "M";
SELECT * FROM mitabla WHERE correo LIKE "%miguel%"; 

DELETE FROM mitabla WHERE id  = 1;
UPDATE mitabla 
SET  estado = "A"
WHERE id = 8;