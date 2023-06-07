DROP DATABASE IF EXISTS instituto;
CREATE DATABASE instituto;
USE instituto;


CREATE Table Profesor(
    codigo VARCHAR(6) PRIMARY KEY,
    Apellido VARCHAR(50) NOT NULL,
    Nombre VARCHAR(40) NOT NULL,
    Sexo BIT NOT NULL,
    Fecha_nac DATE NOT NULL,
    Grado_Titulo INT UNSIGNED NOT NULL,
    DNI INT UNSIGNED NOT NULL,
    Direccion VARCHAR(50) NOT NULL,
    Telefono INT NOT NULL,

    LEN(RTRIM(codigo))=5,
    Apellido=UPPER(Apellido),
    YEAR(GETDATE())-YEAR(Fecha_nac)>=18
    Grado_Titulo>=1 AND Grado_Titulo<=4
    CHECK(Tipo='P' OR Tipo='A')
    LEN(RTRIM(DNI))=8,

);
CREATE Table Curso(
    Codigo INT UNSIGNED PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,
    Horas INT UNSIGNED NOT NULL,
    Precio DECIMAL(4, 2) NOT NULL,
    Prerrequisitos INT UNSIGNED,

    LEN(RTRIM(codigo))=3,
    Nombre=UPPER(Nombre),



);
CREATE Table Clase(
    Num_clase INT UNSIGNED PRIMARY KEY,
    Cod_curso INT UNSIGNED,
    Cod_profesor VARCHAR(6),
    Horario VARCHAR(60) NOT NULL,
    Aula VARCHAR(6) NOT NULL,
    Vacantes INT UNSIGNED NOT NULL,
    Matriculados INT UNSIGNED NOT NULL,

    LEN(RTRIM(codigo))=6,


    FOREIGN KEY (Cod_curso) REFERENCES Curso(Codigo) 
        ON UPDATE CASCADE 
        ON DELETE CASCADE,
    FOREIGN KEY (Cod_profesor) REFERENCES Profesor(Codigo) 
        ON UPDATE CASCADE 
        ON DELETE CASCADE
);