CREATE DATABASE EJEMPLO;
CREATE TABLE Alumno_1(
  C ó digo CHAR(6) PRIMARY KEY,
  Apellido CHAR(40),
  Nombre CHAR(35)
);
CREATE TABLE Alumno_2(
  C ó digo CHAR(6) PRIMARY KEY,
  Apellido CHAR(40),
  Nombre CHAR(35)
);
CREATE TABLE Alumno_3(
  C ó digo CHAR(6) PRIMARY KEY,
  Apellido CHAR(40),
  Nombre CHAR(35),
  INDEX(C ó digo)
);
CREATE TABLE Cuerso_libre(
  Cod_curso CHAR(3) PRIMARY KEY,
  Nombre_curso CHAR(40),
  Horas INT,
  Precio DECIMAL(4, 2)
);
CREATE INDEX IX_C ó digo
/* CLUSTERED  */
ON Alumno_1(Cdigo);
CREATE UNIQUE INDEX IX_Apellido_Nombre
/* CLUSTERED  */
ON Alumno_1(Apellido, Nombre);
/* a)Vamos a crear un índice CLUSTERED para la tabla Alumno_1 por código:
CREATE CLUSTERED INDEX IX_Codigo.
ON Alumno_1(Codigo)
Como ordena este índice las filas de la tabla Alumno_1?
Muestre resultados
b)Crear un índice NON CLUSTERED único para la tabla Alumno_1 por Apellido y Nombre:
CREATE UNIQUE NONCLUSTERED INDEX IX_Apellido_Nombre
ON Alumno_1(Apellido, Nombre) */