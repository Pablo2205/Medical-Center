-- Funciones LEFT & RIGHT
DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
DECLARE @var3 VARCHAR (20)

SET @var1 = '   Pablo'
SET @var2 = '   Daniel	'
SET @var3 = 'Coria      '


SELECT @var1 + @var2 + @var3 
SELECT LTRIM(RTRIM(@var1)) + ' ' + LTRIM(RTRIM(@var2)) + LTRIM(RTRIM(@var3))