SELECT * FROM Paciente
SELECT * FROM TurnoPaciente

SELECT * FROM Paciente P
LEFT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente