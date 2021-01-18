CREATE DATABASE ex4;

GO

USE ex4;

CREATE TABLE Departamentos (
	Codigo INT NOT NULL,
	Nombre NVARCHAR(100),
	Presupuesto INT,
	CONSTRAINT pk_departamentos PRIMARY KEY (Codigo)
);

CREATE TABLE Empleados (
	DNI VARCHAR(8) NOT NULL,
	Nombre NVARCHAR(100),
	Apellidos NVARCHAR(255),
	Departamento INT,
	CONSTRAINT pk_empleados PRIMARY KEY (DNI),
	CONSTRAINT fk_empleados FOREIGN KEY (Departamento) REFERENCES Departamentos(Codigo)
);
