CREATE PROC S_paciente (
	@idpaciente INT 
)
AS

SELECT * FROM paciente WHERE idPaciente = @idPaciente

GO
