CREATE DATABASE ex2;

GO

USE ex2;

CREATE TABLE Editorial (
	ClaveEditorial SMALLINT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(60),
	Direccion VARCHAR(60),
	Telefono VARCHAR(15),
	CONSTRAINT pk_editorial PRIMARY KEY (ClaveEditorial)
);
CREATE TABLE Libro (
	ClaveLibro INT NOT NULL IDENTITY(1,1),
	Titulo VARCHAR(60),
	Idioma VARCHAR(15),
	Formato VARCHAR(15),
	ClaveEditorial SMALLINT,
	CONSTRAINT pk_libro PRIMARY KEY (ClaveLibro),
	CONSTRAINT fk_libro FOREIGN KEY (ClaveEditorial) REFERENCES Editorial(ClaveEditorial)
);
CREATE TABLE Tema (
	ClaveTema SMALLINT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(40),
	CONSTRAINT pk_tema PRIMARY KEY (ClaveTema)
);
CREATE TABLE Autor (
	ClaveAutor INT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(60),
	CONSTRAINT pk_autor PRIMARY KEY (ClaveAutor)
);

CREATE TABLE Ejemplar (
	ClaveEjemplar INT NOT NULL IDENTITY(1,1),
	ClaveLibro INT NOT NULL,
	NumeroOrden SMALLINT,
	Edicion SMALLINT,
	Ubicacion VARCHAR(15),
	Categoria CHAR,
	CONSTRAINT pk_ejemplar PRIMARY KEY (ClaveEjemplar),
	CONSTRAINT fk_ejemplar FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro)
);
CREATE TABLE Socio (
	ClaveSocio INT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(60),
	Direccion VARCHAR(60),
	Telefono VARCHAR(15),
	Categoria CHAR,
	CONSTRAINT pk_socio PRIMARY KEY (ClaveSocio),

);
CREATE TABLE Prestamo (
	ClaveSocio INT NOT NULL,
	ClaveEjemplar INT NOT NULL,
	NumeroOrden SMALLINT,
	Fecha_Prestamo DATE,
	Fecha_devolucion DATE,
	Notas TEXT,
	CONSTRAINT pk_prestamo PRIMARY KEY (ClaveSocio,ClaveEjemplar),
	CONSTRAINT fk_prestamo1 FOREIGN KEY (ClaveSocio) REFERENCES Socio(ClaveSocio),
	CONSTRAINT fk_prestamo2 FOREIGN KEY (ClaveEjemplar) REFERENCES Ejemplar(ClaveEjemplar)
);
CREATE TABLE Trata_sobre (
	ClaveLibro INT NOT NULL,
	ClaveTema SMALLINT NOT NULL,
	CONSTRAINT pk_trata_sobre PRIMARY KEY (ClaveLibro,ClaveTema),
	CONSTRAINT fk_trata1 FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
	CONSTRAINT fk_trata2 FOREIGN KEY (ClaveTema) REFERENCES Tema(ClaveTema)

);
CREATE TABLE Escrito_por (
	ClaveLibro INT NOT NULL,
	ClaveAutor INT NOT NULL,
	CONSTRAINT pk_escrito PRIMARY KEY (ClaveLibro,ClaveAutor),
	CONSTRAINT fk_escrito1 FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
	CONSTRAINT fk_escrito2 FOREIGN KEY (ClaveAutor) REFERENCES Autor(ClaveAutor)
);