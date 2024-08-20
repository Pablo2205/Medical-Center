--Operadores Logicos

--AND
SELECT * FROM Paciente WHERE apellido = 'Coria' and observacion = 'sin onbservacion'

--OR
SELECT * FROM Paciente WHERE apellido = 'Coria' or nombre = 'pablo'

--IN
SELECT * FROM Turno WHERE estado IN(2,1,3)
SELECT * FROM Paciente WHERE apellido IN('Coria', 'Gomez', 'Dias')

--LIKE
SELECT * FROM Paciente WHERE nombre LIKE  '%ab%'
SELECT * FROM Paciente WHERE nombre NOT LIKE  'Pablo'

--NOT
SELECT * FROM Paciente WHERE nombre NOT LIKE  'Pablo'

--BETWEEN (rango)
SELECT * FROM Turno WHERE fechaTurno BETWEEN '20190122' AND '20230315'




