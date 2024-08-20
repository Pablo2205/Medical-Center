/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
*/

--EXEC SP_DEL_Turno 21

ALTER PROC SP_DEL_Turno
(
		@idturno turno
)

AS
SET NOCOUNT ON

IF EXISTS (SELECT * FROM Turno WHERE idTurno = @idturno)
BEGIN
	DELETE FROM TurnoPaciente WHERE idTurno = @idturno
	DELETE FROM Turno WHERE idTurno = @idturno
	
END

ELSE
	SELECT 0 AS resultado