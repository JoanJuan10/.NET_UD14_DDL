CREATE DATABASE ex7;

GO

USE ex7;

CREATE TABLE Despachos (
	Numero INT NOT NULL,
	Capacidad INT NOT NULL,
	CONSTRAINT pk_despachos PRIMARY KEY (Numero)
);

CREATE TABLE Directores (
	DNI VARCHAR(8) NOT NULL,
	NomApels NVARCHAR(255) NOT NULL,
	DNIJefe VARCHAR(8),
	Despacho INT,
	CONSTRAINT pk_directores PRIMARY KEY (DNI),
	CONSTRAINT fk_directores1 FOREIGN KEY (DNIJefe) REFERENCES Directores(DNI),
	CONSTRAINT fk_directores2 FOREIGN KEY (Despacho) REFERENCES Despachos(Numero)
);
