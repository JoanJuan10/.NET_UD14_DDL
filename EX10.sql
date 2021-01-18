CREATE DATABASE ex10;

GO
USE ex10;

CREATE TABLE Cajeros (
	Codigo INT NOT NULL IDENTITY(1,1),
	NomApels NVARCHAR(255),
	CONSTRAINT pk_cajeros PRIMARY KEY (Codigo)
);
CREATE TABLE Productos (
	Codigo INT NOT NULL IDENTITY(1,1),
	Nombre NVARCHAR(100),
	Precio INT,
	CONSTRAINT pk_productos PRIMARY KEY (Codigo)
);
CREATE TABLE maquinas_registradas (
	Codigo INT NOT NULL IDENTITY(1,1),
	Piso INT,
	CONSTRAINT pk_maquinas PRIMARY KEY (Codigo)
);
CREATE TABLE Venta (
	Cajero INT,
	Maquina INT,
	Producto INT,
	CONSTRAINT pk_venta PRIMARY KEY (Cajero,Maquina,Producto),
	CONSTRAINT fk_venta1 FOREIGN KEY (Cajero) REFERENCES Cajeros(Codigo),
	CONSTRAINT fk_venta2 FOREIGN KEY (Maquina) REFERENCES maquinas_registradas(Codigo),
	CONSTRAINT fk_venta3 FOREIGN KEY (Producto) REFERENCES Productos(Codigo),
);