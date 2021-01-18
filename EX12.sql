CREATE DATABASE ex12;

GO

USE ex12;


CREATE TABLE Cursos (
	Nombre_Curso VARCHAR(50) UNIQUE,
	Cod_Curso INT NOT NULL,
	DNI_Profesor VARCHAR(8),
	Maximo_Alumnos INT,
	Fecha_Inicio DATE,
	Fecha_Fin DATE,
	Num_Horas INT NOT NULL,
	CONSTRAINT pk_cursos PRIMARY KEY (Cod_Curso)
);
CREATE TABLE Alumnos (
	Nombre VARCHAR(50) NOT NULL,
	Apellido1 VARCHAR(50) NOT NULL,
	Apellido2 VARCHAR(50),
	DNI VARCHAR(8) NOT NULL,
	Direccion VARCHAR(100) NOT NULL,
	Sexo CHAR(1),
	Fecha_Nacimiento DATE,
	Curso INT NOT NULL,
	CONSTRAINT pk_alumnos PRIMARY KEY (DNI),
	CONSTRAINT fk_alumnos FOREIGN KEY (Curso) REFERENCES Cursos(Cod_Curso)
);
CREATE TABLE Profesores (
	Nombre VARCHAR(50) UNIQUE,
	Apellido1 VARCHAR(50),
	Apellido2 VARCHAR(50),
	DNI VARCHAR(8) NOT NULL,
	Direccion VARCHAR(50),
	Titulo VARCHAR(50),
	Gana INT NOT NULL,
	CONSTRAINT pk_profesores PRIMARY KEY (DNI)
);