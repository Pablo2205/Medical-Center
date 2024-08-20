-- Funciones LEFT & RIGHT
DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
DECLARE @var3 VARCHAR (20)

SET @var2 = 'Daniel'
SET @var1 = 'PABLO  '
SET @var3 = 'coria'

SELECT CONCAT (@var1, @var2)
