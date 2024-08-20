

--TABLA TEMPORAL EN MEMORIA
DECLARE @TemporalTable TABLE (id INT IDENTITY (1,1), pais VARCHAR(50))
INSERT INTO @TemporalTable VALUES('ARGENTINA')
INSERT INTO @TemporalTable VALUES('BRASIL')
INSERT INTO @TemporalTable VALUES('COLOMBIA')
INSERT INTO @TemporalTable VALUES('PARAGUAY')
INSERT INTO @TemporalTable VALUES('PERU')

SELECT * FROM @TemporalTable

-- TABLA TEMPORAL FISICA
CREATE TABLE #MiTemporalTable (id INT IDENTITY (1,1), nombre VARCHAR(50), apellido VARCHAR(50))
INSERT INTO #MiTemporalTable VALUES ('Pablo', 'Coria')
INSERT INTO #MiTemporalTable VALUES ('Ariana', 'Lopez')
INSERT INTO #MiTemporalTable VALUES ('Lucila', 'Ramirez')

SELECT * FROM #MiTemporalTable
DROP TABLE #MiTemporalTable

--SCRIPT 
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
DECLARE @Turnos TABLE (id INT IDENTITY (1,1), idTurno turno, idPaciente paciente)

INSERT INTO @Turnos(idTurno, idPaciente)
SELECT TP.idTurno, P.idPaciente FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente