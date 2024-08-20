
--Elimina los registros de la tabla y los deja por default
TRUNCATE TABLE Example

--Elimina objetos como tablas, funciones, ddbb, st
CREATE TABLE Example(camp0 int IDENTITY (1,1), camp1 int, camp2 int)
INSERT INTO Example VALUES(2, 3)

SELECT * FROM Example
DROP TABLE Example


