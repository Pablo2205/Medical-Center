--SELECT * FROM Paciente

EXEC SP_altaPaciente '45384808',  'Pablo', 'Corias', '20010522', 'Italia 2173','MEX', '', 'PabCor01@icloud.com', '', ''    

ALTER PROC [dbo].[SP_altaPaciente](
	@dni VARCHAR(20),
	@nombre VARCHAR(50),
	@apellido VARCHAR(50),
	@fnacimiento VARCHAR(8),
	@domicilio VARCHAR(50),
	@idpais CHAR(3),
	@telefono VARCHAR(20),
	@email VARCHAR(30),
	@observacion VARCHAR(1000) = '',
	@falta VARCHAR(50) 
)

AS

IF NOT EXISTS (SELECT * FROM Paciente WHERE DNI = @dni)
BEGIN
	INSERT INTO Paciente (DNI, nombre, apellido, fechaNacimiento, domicilio, idPais, telefono, email, observacion, fechaAlta)
	VALUES (@dni, @nombre, @apellido, @fnacimiento, @domicilio, @idpais, @telefono, @email, @observacion, @falta)
	PRINT 'El paciente se agrego correctamente'
	RETURN 
END
ELSE
BEGIN
	PRINT 'El paciente ya existe'
END
/*
SELECT * FROM Paciente WHERE idPaciente = 1
INSERT INTO Paciente (telefono, email, fechaAlta)
	VALUES (11365478, 'pcoria@genrod.com', 2010-10-10)*/