/*DROP DATABASE relacion7; Borrar y crear base de datos*/
CREATE DATABASE relacion7;

/*Crear tablas de bases de datos*/
CREATE TABLE ALMACENES {
Codigo INT PRIMARY KEY,
Lugar VARCHAR(10),
Capacidad INT
};

CREATE TABLE CAJAS {
Numreferencia CHAR(5) PRIMARY KEY,
Contenido VARCHAR(100),
Valor INT,
Almacen INT
};

/*Modificar clave forenea de la tabla cajas*/
ALTER TABLE CAJAS
ADD CONSTRAINT FK_ALMACEN FOREIGN KEY(Almacen) REFERENCES ALMACENES(Codigo);

/*Insertar datos*/
INSERT INTO ALMACENES VALUES
('1','gFGGFDG','4543'),
('7','RTGHRTGH','454');

INSERT INTO CAJAS VALUES
('34565','FGTGHTGRTGFGF','454','1'),
('34321','GDFGDFGDFGDF','657','7');

/*Consultas*/
SELECT *
FROM ALMACENES;

SELECT *
FROM CAJAS
WHERE Valor > 150;

SELECT DISTINCT Contenido
FROM CAJAS;

SELECT AVG(Valor)
FROM CAJAS;

SELECT AVG(Valor)
FROM CAJAS
GROUP BY Almacen;

SELECT Codigo
FROM ALMACENES
WHERE Codigo = (SELECT Almacen FROM CAJAS GROUP BY Almacen HAVING AVG(Valor) > 150);

SELECT A.Numreferencia, C.Lugar
FROM ALMACENES A INNER JOIN CAJAS C;

SELECT COUNT(Numreferencia) AS Nº_CAJAS
FROM CAJAS
GROUP BY Almacen;

SELECT Codigo
FROM ALMACENES
WHERE Capacidad < ( SELECT COUNT(Numreferencia) AS Nº_CAJAS FROM CAJAS);

SELECT Numreferencia
FROM CAJAS (SELECT Lugar FROM ALMACENES WHERE Lugar="Bilbao");

INSERT INTO ALMACENES
VALUES ('2','Barcelona','3');

INSERT INTO CAJAS
VALUES ('H5RT','PAPEL','200','2');

UPDATE CAJAS
SET Valor*0.15;

UPDATE CAJAS
SET Valor*0.2
WHERE Valor > (SELECT AVG(Valor) FROM CAJAS);

DELETE FROM CAJAS
WHERE Valor < 100;

DELETE FROM ALMACENES
WHERE Capacidad < (SELECT COUNT(Almacen) AS Nº_CAJAS FROM CAJAS);