
--SELECT dbo.concatenar('Pablo', 'Coria')
CREATE FUNCTION Concatenar
(
	@apellido varchar(50),
	@nombre varchar(50)
)
RETURNS varchar(100)

AS
BEGIN
	DECLARE @resultado varchar (100)
	SET @resultado = @apellido + ', ' + @nombre
	RETURN @resultado
END

--SELECT * FROM Paciente
SELECT dbo.obtenerPais (9)

CREATE FUNCTION obtenerPais
(
	@idpaciente paciente
)
RETURNS varchar(50)

AS
BEGIN
	declare @pais varchar(50)
	SET @pais = (SELECT PA.pais From paciente P
					INNER JOIN Pais PA
					ON PA.idPais = P.idPais
					WHERE idPaciente=@idpaciente)
	
	RETURN @pais
END
