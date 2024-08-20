--Clausulas

--TOP
SELECT TOP 1 * FROM Paciente

--ORDER BY
SELECT * FROM Paciente ORDER BY fechaNacimiento

-- TOP and ORDER BY
SELECT TOP 4 * FROM Paciente  ORDER BY fechaNacimiento DESC

--DISCTINCT 
SELECT DISTINCT idPais FROM Paciente

--GROUP BY
SELECT idPais FROM Paciente GROUP BY idPais

--WHERE
SELECT * FROM Paciente WHERE idPais = 'MEX'
SELECT * FROM Paciente WHERE nombre = 'Leandro'
SELECT * FROM Paciente WHERE apellido = 'Coria'
SELECT * FROM Paciente WHERE fechaNacimiento= '20190218'


-------------------------------------------------------

SELECT * FROM Paciente WHERE idPaciente = 6
UPDATE Paciente SET observacion = 'sin observacion' WHERE observacion = 'NULL'
UPDATE Paciente SET DNI = '43384882', domicilio = 'Pavon 190' WHERE idPaciente = 6

SELECT * FROM Paciente
--No me deja eliminar el registro ya que este tiene datos cargados en otra tabla ademas de la de paciente
DELETE FROM Paciente WHERE idPaciente = 13

SELECT * FROM TurnoPaciente
DELETE FROM TurnoPaciente WHERE idTurno = 13

--Devuelve el promeddio de la cantidad total
SELECT AVG (idPaciente) FROM Paciente

--Devuelve o cuenta la cantidad de filas
SELECT COUNT (idPaciente) FROM Paciente
