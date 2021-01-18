CREATE DATABASE ex3;

GO
USE ex3;

CREATE TABLE Fabricantes (
	Codigo INT NOT NULL IDENTITY(1,1),
	Nombre NVARCHAR(100),
	CONSTRAINT pk_fabricantes PRIMARY KEY (Codigo)
);
CREATE TABLE Articulos (
	Codigo INT NOT NULL IDENTITY(1,1),
	Nombre NVARCHAR(100),
	Precio INT,
	Fabricante INT,
	CONSTRAINT pk_articulos PRIMARY KEY (Codigo),
	CONSTRAINT fk_articulos FOREIGN KEY (Fabricante) REFERENCES Fabricantes(Codigo)
);