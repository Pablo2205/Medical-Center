-- Funciones LEFT & RIGHT
DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
DECLARE @var3 VARCHAR (20)

SET @var2 = 'Daniel'
SET @var1 = 'PABLO'
SET @var3 = 'coria'


--PRINT LOWER(@var1)
PRINT UPPER(LEFT (@var1, 1)) + LOWER (RIGHT(@var1, LEN(@var1)-1)) + ' ' + UPPER(LEFT (@var3, 1)) + LOWER (RIGHT(@var3, LEN(@var1)-1))


