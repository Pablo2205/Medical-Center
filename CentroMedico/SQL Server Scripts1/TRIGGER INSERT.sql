
EXEC SP_altaPaciente '45374808',  'Alvaro', 'Corias', '20010522', 'Italia 2173','MEX', '', 'PabCor01@icloud.com', '', ''    


SELECT * from PacienteLog

CREATE TRIGGER PacientesCreados ON Paciente 
AFTER INSERT  
AS

IF (SELECT idPais  FROM inserted ) = 'MEX'
	INSERT INTO PacienteLog(idPaciente, idPais, fechaAlta)
		SELECT I.idPaciente, I.idPais, GETDATE() FROM inserted I