CREATE DATABASE ex11;

GO
USE ex11;

CREATE TABLE Facultad (
	Codigo INT NOT NULL,
	Nombre NVARCHAR(100),
	CONSTRAINT pk_facultad PRIMARY KEY (Codigo)
);
CREATE TABLE Investigadores (
	DNI VARCHAR(8) NOT NULL,
	NomApels NVARCHAR(255),
	Facultad INT,
	CONSTRAINT pk_investigadores PRIMARY KEY (DNI),
	CONSTRAINT fk_investigadores FOREIGN KEY (Facultad) REFERENCES Facultad(Codigo)
);
CREATE TABLE Equipos (
	NumSerie CHAR(4) NOT NULL,
	Nombre NVARCHAR(100),
	Facultad INT,
	CONSTRAINT pk_equipo PRIMARY KEY (NumSerie),
	CONSTRAINT fk_equipo FOREIGN KEY (Facultad) REFERENCES Facultad(Codigo)
);
CREATE TABLE Reserva (
	DNI VARCHAR(8),
	NumSerie CHAR(4),
	Comienzo DATETIME,
	Fin DATETIME,
	CONSTRAINT pk_reserva PRIMARY KEY (DNI,NumSerie),
	CONSTRAINT fk_reserva1 FOREIGN KEY (DNI) REFERENCES Investigadores(DNI),
	CONSTRAINT fk_reserva2 FOREIGN KEY (NumSerie) REFERENCES Equipos(NumSerie)
);