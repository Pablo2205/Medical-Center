--EXEC SP_SEL_Especialidades

CREATE PROC SP_SEL_Especialidades 
AS
SET NOCOUNT ON 

IF EXISTS (SELECT * FROM Especialidad)
	SELECT * FROM Especialidad

ELSE 
	SELECT 0 AS Resultado

