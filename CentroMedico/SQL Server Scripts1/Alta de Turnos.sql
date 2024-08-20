
/*
SELECT * FROM Paciente
SELECT * FROM Medico
SELECT * FROM TurnoPaciente
SELECT * FROM Turno
*/

EXEC [dbo].[SP_altaTurno] '20230505 12:00', 2, 1, 'El paciente tiene que estar en ayunas'
ALTER PROC [dbo].[SP_altaTurno]
(
		@fecha CHAR(14) --20232807 12:00
,		@idPaciente paciente
,		@idMedico medico
,		@observacion observacion = ''
)

AS
/*
Estado 1 = PENDIENTE
Estado 2 = REALIZADO
Estado 3 = CANCELADO
*/

SET NOCOUNT ON
IF NOT EXISTS (SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno = @fecha)
BEGIN
	INSERT INTO Turno (fechaTurno, estado, observacion)
	VALUES (@fecha, 1, @observacion)

	DECLARE @auxIdturno turno
	SET @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
	VALUES (@auxIdturno, @idPaciente, @idmedico)

	PRINT 'El turno se agrego correctamente'
	RETURN 
END

ELSE
BEGIN
	PRINT 'El turno ya existe'
END