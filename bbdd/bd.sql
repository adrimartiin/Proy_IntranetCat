CREATE DATABASE bd_intranet

CREATE TABLE tbl_curso(
    id_curso INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    anyo_curso ENUM('Primer año', 'Segundo Año') NOT NULL,
);

CREATE TABLE tbl_alumnos(
    dni_alumno CHAR(9) PRIMARY KEY NOT NULL,
    nombre_alumno VARCHAR(40) NOT NULL,
    apellidos_alumno VARCHAR(100) NOT NULL,
    fecha_nac_alumno date,
    fk_id_curso INT,
    fk_dni_padre CHAR(9)
);

CREATE TABLE tbl_padres(
    id_padre CHAR(9) PRIMARY KEY NOT NULL,
    email_padre VARCHAR(75) NOT NULL,
    telf_padre  VARCHAR(20) NOT NULL
)

ALTER TABLE tbl_alumnos
ADD CONSTRAINT fk_id_curso
FOREIGN KEY (fk_id_curso) REFERENCES tbl_curso(id_curso);

ALTER TABLE tbl_alumnos
ADD CONSTRAINT fk_dni_padre FOREIGN  KEY (fk_dni_padre) REFERENCES tbl_padres(dni_padre);





