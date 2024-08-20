CREATE TRIGGER PacientesModificados ON Paciente
AFTER UPDATE 
AS

IF EXISTS (SELECT idPaciente FROM PacienteLog
			WHERE idPaciente = (SELECT idPaciente FROM inserted))
	UPDATE PacienteLog SET fechaModificacion = GETDATE ()
		WHERE idPaciente = (SELECT idPaciente FROM inserted)


ELSE 
	INSERT INTO PacienteLog (idPaciente, idPais, fechaModificacion)
	SELECT idPaciente, idPais, GETDATE() FROM inserted

