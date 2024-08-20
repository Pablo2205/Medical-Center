/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
*/

--EXEC SP_UPD_Turno 10,3,'El paciente fue atendido'

ALTER PROC SP_UPD_Turno 
(
		@idturno turno,
		@estado smallint,
		@observacion observacion
)

AS
SET NOCOUNT ON

IF EXISTS (SELECT * FROM Turno WHERE idTurno = @idturno)
	UPDATE Turno
	SET estado = @estado,
		observacion = @observacion
	WHERE idTurno = @idturno

ELSE
	SELECT 0 AS resultado