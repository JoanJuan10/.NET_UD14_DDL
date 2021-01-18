CREATE DATABASE ex6;

GO

USE ex6;

CREATE TABLE Peliculas (
	Codigo INT NOT NULL IDENTITY(1,1),
	Nombre NVARCHAR(100) NOT NULL,
	CalificacionEdad INT,
	CONSTRAINT pk_peliculas PRIMARY KEY (Codigo)
);

CREATE TABLE Salas (
	Codigo INT NOT NULL IDENTITY(1,1),
	Nombre NVARCHAR(100) NOT NULL,
	Pelicula INT,
	CONSTRAINT pk_salas PRIMARY KEY (Codigo),
	CONSTRAINT fk_salas FOREIGN KEY (Pelicula) REFERENCES Peliculas(Codigo)
);