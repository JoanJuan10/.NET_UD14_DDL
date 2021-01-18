CREATE DATABASE ex9;

GO

USE ex9;

CREATE TABLE Cientificos (
	DNI VARCHAR(8) NOT NULL,
	NomApels NVARCHAR(255) NOT NULL,
	CONSTRAINT pk_cientificos PRIMARY KEY (DNI)
);
CREATE TABLE Proyecto (
	Id CHAR(4),
	Nombre NVARCHAR(255) NOT NULL,
	Horas INT NOT NULL,
	CONSTRAINT pk_proyecto PRIMARY KEY (Id)
);
CREATE TABLE Asignado_a (
	Cientifico VARCHAR(8) NOT NULL,
	Proyecto CHAR(4) NOT NULL,
	CONSTRAINT pk_asignado PRIMARY KEY (Cientifico, Proyecto),
	CONSTRAINT fk_asignado1 FOREIGN KEY (Cientifico) REFERENCES Cientificos(DNI),
	CONSTRAINT fk_asignado2 FOREIGN KEY (Proyecto) REFERENCES Proyecto(Id)
);