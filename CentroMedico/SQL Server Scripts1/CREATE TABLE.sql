CREATE TABLE Paciente(
	idPaciente int NOT NULL, 
	nombre varchar(50) NOT NULL,
	apellido varchar(50) NOT NULL,
	fechaNacimiento date NULL,
	domicilio varchar(50) NOT NULL,
	idPais char(3) NULL,
	telefono varchar(20) NULL,
	email varchar(50) NULL,
	observacion varchar(1000) NULL,
	fechaAlta datetime NOT NULL
	CONSTRAINT PK_idPaciente PRIMARY KEY (idPaciente)
)
