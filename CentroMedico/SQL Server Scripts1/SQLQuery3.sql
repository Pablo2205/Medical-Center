CREATE PROC S_paciente(
	@idpaciente int 
)
AS

SELECT * FROM Paciente WHERE idPaciente = @idpaciente

GO