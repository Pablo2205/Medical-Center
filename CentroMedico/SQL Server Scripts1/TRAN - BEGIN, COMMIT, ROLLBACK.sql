SELECT * FROM Paciente

BEGIN TRANSACTION
	UPDATE Paciente 
	SET telefono = 1132659835 WHERE idPaciente = 2 or idPaciente= 6 or idPaciente = 7
if @@ROWCOUNT > 1
	COMMIT TRANSACTION
else 
	ROLLBACK TRANSACTION


SELECT * FROM Turno

BEGIN TRAN 
	DELETE FROM Turno WHERE estado = 1

if @@ROWCOUNT = 1
	COMMIT TRAN
else
	ROLLBACK TRAN