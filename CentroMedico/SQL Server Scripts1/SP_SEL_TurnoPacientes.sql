
EXEC SP_selectTurnosPacientes 1


ALTER PROC SP_selectTurnosPacientes(
		@idpaciente paciente
)
AS

SET NOCOUNT ON

/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
SELECT * FROM Paciente
SELECT * FROM MedicoEspecialidad
*/

--Paciente (idPaciente) --> TurnoPaciente (idPaciente) 
-- TurnoPaciente (idTurno) --> Turno (idTurno)
SELECT * FROM Paciente P
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = p.idPaciente
INNER JOIN Turno T
ON T.idTurno = TP.idTurno
INNER JOIN MedicoEspecialidad M 
ON M.idMedico = TP.idMedico
WHERE P.idPaciente = @idpaciente

