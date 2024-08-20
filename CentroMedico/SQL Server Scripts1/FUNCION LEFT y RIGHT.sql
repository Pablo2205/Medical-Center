-- Funciones LEFT & RIGHT
DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
DECLARE @var3 VARCHAR (20)

SET @var2 = 'Daniel'
SET @var1 = 'PABLO'
SET @var3 = 'Coria'

PRINT LEFT (@var1, 1) + RIGHT (@var2, 1)

--Ej 150
SELECT nombre, apellido FROM [Udemy_CentroMedico].[dbo].[Paciente]
SELECT LEFT(nombre, 1) + LEFT(apellido, 1) AS Combinacion FROM [Udemy_CentroMedico].[dbo].[Paciente]