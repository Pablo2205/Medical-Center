

SELECT * FROM Paciente
--ALTER
-- Comienza con Alter Luego le especifico la tabla y luego la columna que voy a modificar
ALTER TABLE Paciente ADD estado smallint 
ALTER TABLE Paciente ALTER COLUMN estado bit  
ALTER TABLE Paciente DROP COLUMN estado 


ALTER TABLE HistoriaPaciente
ADD FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente)

select dbo.nombreFun (0)
ALTER FUNCTION nombreFun (@var int)
RETURNS int

AS

BEGIN 
	SET @var = @var * 5
	RETURN @var
END
