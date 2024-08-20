
DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
DECLARE @var3 VARCHAR (20)

SET @var2 = 'Daniel'
SET @var1 = 'PABLO'
SET @var3 = 'Coria'

-- Funcion LEN
PRINT LEN (@var3) 
--Combinando LEN con LEFT
PRINT LEFT (@var1, LEN(@var1) -1) 

--Ej 152
SELECT LEN (domicilio) FROM [Udemy_CentroMedico].[dbo].[Paciente]