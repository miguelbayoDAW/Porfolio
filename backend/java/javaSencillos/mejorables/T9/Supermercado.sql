CREATE DATABASE Supermercado;

CREATE TABLE PRODUCTOS (
	CODIGO INT AUTO_INCREMENT,
	NOMBRE VARCHAR(30),
	MARCA VARCHAR(30),
	U_DISPONIBLES INT,
	PRIMARY KEY (CODIGO)
);