SELECT * FROM Paciente
SELECT * FROM TurnoPaciente

SELECT * FROM Paciente P
RIGHT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente