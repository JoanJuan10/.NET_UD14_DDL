CREATE DATABASE ex5;

GO
USE ex5;

CREATE TABLE Almacenes (
	Codigo INT NOT NULL IDENTITY(1,1),
	Lugar NVARCHAR(100),
	Capacidad INT,
	CONSTRAINT pk_almacenes PRIMARY KEY (Codigo)
);
CREATE TABLE Cajas (
	NumReferencia CHAR(5) NOT NULL,
	Contenido NVARCHAR(100),
	Valor INT,
	Almacen INT,
	CONSTRAINT pk_cajas PRIMARY KEY (NumReferencia),
	CONSTRAINT fk_cajas FOREIGN KEY (Almacen) REFERENCES Almacenes(Codigo)
);