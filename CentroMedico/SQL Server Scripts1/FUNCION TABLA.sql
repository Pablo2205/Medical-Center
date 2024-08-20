--FUNCIONES DE TIPO TABLA

SELECT * FROM dbo.listaPaises()

CREATE FUNCTION listaPaises()
RETURNS @paises TABLE(idpais char(3), pais varchar(50))
AS
BEGIN
	INSERT INTO @paises values('ESP','Espa�a')
	INSERT INTO @paises values('MEX','Mexico')
	INSERT INTO @paises values('CHI','Chile')
	INSERT INTO @paises values('PER','Per�')
	INSERT INTO @paises values('ARG','Argentina')
	RETURN
END