/********** CONDICIONAL IF ELSE ***************/
DECLARE @idpaciente INT
DECLARE @idturno INT

SET @idpaciente = 76

IF @idpaciente = 7
BEGIN
	SET @idturno = 20
	SELECT idPaciente, nombre, apellido, idPais FROM Paciente WHERE idPaciente = @idpaciente
	PRINT @idturno

	IF EXISTS (SELECT * FROM Paciente WHERE idPaciente =3)
		PRINT 'EXISTE'
	ELSE
		PRINT 'NO EXISTE'


/********** CONDICIONAL WHILE **************/
DECLARE @contador INT = 0 

WHILE @contador <= 10
BEGIN
	print @contador
	SET @contador = @contador +1

END

/********** CONDICIONAL CASE **************/
DECLARE @valor INT 
DECLARE @resultado CHAR(10) = ''
SET @valor = 30
SET @resultado = (CASE WHEN @valor = 10 THEN 'ROJO'
					   WHEN @valor = 20 THEN 'VERDE'
				       WHEN @valor = 30 THEN 'AZUL'
				  END)
PRINT @resultado

SELECT *, (CASE WHEN estado =1 THEN 'VERDE'
			    WHEN estado =3 THEN 'ROJO'
				WHEN estado =7 THEN 'AZUL'
			ELSE	'GRIS'
				END)AS colorTurno FROM Turno


/***** GESTION DE ERRORER CON TRY CATCH *****/

DECLARE @contador INT = 0

BEGIN TRY
	SET @contador = 'Hola'
END TRY

BEGIN CATCH
	PRINT 'NO ES POSIBLE ASIGNAR UN TEXTO A LA VARIABLE CONTADOR'
END CATCH

