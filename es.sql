CREATE TABLE Lector(
  Cod_lector CHAR(5) PRIMARY KEY,
  Apellido CHAR(40) NOT NULL,
  Nombre CHAR(35) NOT NULL,
  Fecha_nac DATETIME NOT NULL,
  Sexo BIT,
  Direccion CHAR(50),
  Telefono CHAR(6),
  Tipo CHAR(1) CHECK(
    Tipo = 'P'
    OR Tipo = 'A'
  ),
  UNIQUE (Apellido, Nombre)
);
CREATE TABLE Libro(
  Cod_libro CHAR(8) PRIMARY KEY,
  Titulo CHAR(180) CHECK (Titulo = UPPER(Titulo)) NOT NULL,
  Autor CHAR (120) NOT NULL,
  Editorial CHAR(40),
  A ñ o_edit INT,
  Paginas INT,
  Descripcion TEXT,
  UNIQUE (Titulo)
);
CREATE TABLE Ejemplar(
  Cod_ejemplar CHAR(2) NOT NULL,
  Cod_libro CHAR(8) NOT NULL,
  Fecha_ingreso DATETIME NOT NULL,
  Precio DECIMAL(5, 2),
  PRIMARY KEY (Cod_ejemplar, Cod_libro),
  FOREIGN KEY (Cod_libro) REFERENCES Libro(Cod_libro)
);
CREATE TABLE Prestamo(
  Cod_lector CHAR(5) NOT NULL,
  Cod_ejemplar CHAR(2) NOT NULL,
  Cod_libro CHAR(8) NOT NULL,
  Fecha DATETIME NOT NULL,
  Fecha_devo DATETIME,
  PRIMARY KEY(Cod_lector, Cod_ejemplar, Cod_libro),
  FOREIGN KEY (Cod_lector) REFERENCES Lector(Cod_lector),
  FOREIGN KEY (Cod_ejemplar, Cod_libro) REFERENCES Ejmeplar(Cod_ejemplar)
);
CREATE TABLE Prestamo(
  Cod_lector CHAR(5) NOT NULL,
  Cod_ejemplar CHAR(2) NOT NULL,
  Cod_libro CHAR(8) NOT NULL,
  Fecha DATETIME NOT NULL,
  Fecha_devo DATETIME,
  PRIMARY KEY(Cod_lector, Cod_ejemplar, Cod_libro),
  FOREIGN KEY (Cod_lector) REFERENCES Lector(Cod_lector),
  FOREIGN KEY (Cod_ejemplar, Cod_libro) REFERENCES Ejemplar(Cod_ejemplar, Cod_libro)
);