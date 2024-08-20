CREATE TABLE MedicoEspecialidad (
	idMedico INT NOT NULL,
	idEspecialidad INT NOT NULL,
	descripcion VARCHAR(50) NOT NULL

	PRIMARY KEY (idMedico, idEspecialidad)
)