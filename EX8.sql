CREATE DATABASE ex8;

GO

USE ex8;

CREATE TABLE Proveedores (
	Id CHAR(4) NOT NULL,
	Nombre NVARCHAR(100) NOT NULL,
	CONSTRAINT pk_proveedores PRIMARY KEY (Id)
);

CREATE TABLE Piezas (
	Codigo INT NOT NULL IDENTITY(1,1),
	Nombre NVARCHAR(100) NOT NULL,
	CONSTRAINT pk_piezas PRIMARY KEY (Codigo)
);

CREATE TABLE Suministra (
	CodigoPieza INT NOT NULL,
	IdProveedor CHAR(4) NOT NULL,
	Precio INT NOT NULL,
	CONSTRAINT pk_suministra PRIMARY KEY (CodigoPieza, IdProveedor),
	CONSTRAINT fk_suministra1 FOREIGN KEY (CodigoPieza) REFERENCES Piezas(Codigo),
	CONSTRAINT fk_suministra2 FOREIGN KEY (IdProveedor) REFERENCES Proveedores(Id)
);
