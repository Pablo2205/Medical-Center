-- Funciones LEFT & RIGHT
DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
DECLARE @var3 VARCHAR (20)

SET @var2 = 'Daniel'
SET @var1 = 'PA%LO'
SET @var3 = 'cori@'

SELECT REPLACE (@var1, '%', 'B')
SELECT REPLACE (@var3, '@', 'a')