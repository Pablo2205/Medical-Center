SELECT * FROM Paciente
SELECT * FROM TurnoPaciente

SELECT * FROM Paciente P
RIGHT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

-- Union entre misma tabla
SELECT * FROM Turno --WHERE estado = 6
UNION ALL
SELECT * FROM Turno --WHERE estado = 1

