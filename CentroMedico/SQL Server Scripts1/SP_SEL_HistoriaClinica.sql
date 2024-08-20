EXEC SP_SEL_HistoriaPaciente 9

ALTER PROC SP_SEL_HistoriaPaciente 
(
	@idpaciente paciente
)
AS
SET NOCOUNT ON

/*
SELECT * FROM Historia
SELECT * FROM historiaPaciente
SELECT * FROM Medico
*/

IF EXISTS (SELECT * FROM Paciente P
			-- idPaciente
			INNER JOIN HistoriaPaciente HP
			ON HP.idPaciente = P.idPaciente
			-- idHistoria
			INNER JOIN Historia H
			ON H.idHistoria = HP.idHistoria
			-- idMedico
			INNER JOIN MedicoEspecialidad ME
			ON ME.idMedico = HP.idMedico
			-- idMedico
			INNER JOIN Medico M 
			ON M.idMedico = ME.idMedico)

	SELECT * FROM Paciente P
	-- idPaciente
	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.idPaciente
	-- idHistoria
	INNER JOIN Historia H
	ON H.idHistoria = HP.idHistoria
	-- idMedico
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HP.idMedico
	-- idMedico
	INNER JOIN Medico M 
	ON M.idMedico = ME.idMedico

ELSE 
--	PRINT 'No existen historias clinicas'
	SELECT 0 AS resultado