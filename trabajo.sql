CREATE DATABASE EJEMPLO;
CREATE TABLE Alumno_1(
  C ó digo CHAR(6),
  Apellido CHAR(40),
  Nombre CHAR(35)
);
CREATE TABLE Alumno_2(
  C ó digo CHAR(6),
  Apellido CHAR(40),
  Nombre CHAR(35)
);
CREATE TABLE Alumno_3(
  C ó digo CHAR(6),
  Apellido CHAR(40),
  Nombre CHAR(35),
  INDEX(C ó digo)
);
CREATE TABLE (
  Cod_curso CHAR(3),
  Nombre_curso CHAR(40),
  Horas INT,
  Precio DECIMAL(4, 2)
);
CREATE CLUSTERED INDEX IX_C ó digo ON Alumno_1(C ó digo) CREATE UNIQUE NONCLUSTERED INDEX IX_Apellido_Nombre ON Alumno_1(Apellido, Nombre)