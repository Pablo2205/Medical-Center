
--Paciente
SELECT * FROM Paciente

INSERT INTO Paciente (dni, nombre, apellido, domicilio, idPais, telefono, email, observacion, fechaAlta)
VALUES ('43385225', 'Leandro', 'Gimenez', 'Italia 2345', 'ARG', '1139126544', 'example@mail.com', '', '2023-06-23'),
	   ('46385225', 'Pablo', 'Gomez', 'Lavalle 3456', 'ARG', '1139126545', 'example@mail.com', '', '2023-05-23')

--Turno Estado
SELECT * FROM TurnoEstado

INSERT INTO TurnoEstado (descripcion)
VALUES ('Derivado')

--Turno Paciente
SELECT * FROM TurnoPaciente

INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
VALUES ('13', '13', '1')

--Turno
SELECT * FROM Turno

INSERT INTO Turno (fechaTurno, estado, observacion)
VALUES ('2019-01-22 10:00', '1', 'Turno pendiente de aprobacion')

--Concepto
SELECT * FROM Concepto

INSERT INTO Concepto(descripcion)
VALUES ('Laboratorio'),
	   ('Radiografia')
--Pago 
SELECT * FROM Pago

INSERT INTO Pago(concepto, fecha, monto, estado, observacion)
VALUES ('1', '2023-02-15', '4500', '0', 'Pago pendiente'),
	   ('2', '2023-05-20', '6800', '0', 'Pago pendiente'),
	   ('1', '2023-09-27', '5600', '0', 'Pago pendiente')

--Pago Pacientes
SELECT * FROM PagoPaciente

INSERT INTO PagoPaciente(idPago, idPaciente, idTurno)
VALUES ('2', '6', '8'),
	   ('3', '7', '11')
