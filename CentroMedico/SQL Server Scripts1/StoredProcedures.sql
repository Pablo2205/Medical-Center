
CREATE PROC [dbo].[SP_paciente] (
	@idpaciente int
)
AS

SELECT * FROM Paciente WHERE idPaciente = @idpaciente

GO