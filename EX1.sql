CREATE DATABASE ex1;
GO

USE ex1;
CREATE TABLE Estacion (
	Identificador int NOT NULL IDENTITY(1,1),
	Latitud int NOT NULL,
	Longitud int NOT NULL,
	Altitud int NOT NULL,
	CONSTRAINT est_pk PRIMARY KEY (Identificador)
);
CREATE TABLE Muestra (
	IdentificadorEstacion int,
	Fecha int,
	Temperatura_minima int,
	Temperatura_maxima int,
	Precipitaciones int,
	Humedad_minima int,
	Humedad_maxima int,
	v_viento_minima int,
	v_viento_maxima int,
	CONSTRAINT muest_pk PRIMARY KEY (IdentificadorEstacion),
	CONSTRAINT muest_fk_1 FOREIGN KEY (IdentificadorEstacion) REFERENCES Estacion(Identificador)
);