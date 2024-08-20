
/*
select * from Medico
select * from MedicoEspecialidad
select * from Especialidad


insert into Especialidad (especialidad)
		values ('Oculista')
		print  'Especialidad agregada'

insert into MedicoEspecialidad (idMedico, idEspecialidad, descripcion)
	values (1, 2, 'Dentista')
	print  'Relacion Medico y Especialidad establecida'
*/
EXEC SP_altaMedico 'Pedro','Soria',4,'Medico certificado'

CREATE proc SP_altaMedico(
			@nombre varchar(50),
			@apellido varchar(20),
			@idespecialidad int,
			@descripcion varchar(50)
			)

as
set nocount on

IF NOT EXISTS(SELECT TOP 1 idmedico from Medico WHERE nombre=@nombre and apellido = @apellido)
BEGIN
	
	INSERT INTO Medico (nombre, apellido)
	VALUES (@nombre,@apellido)
		
	declare @auxIdmedico int
	set @auxIdmedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad (Idmedico, idespecialidad,descripcion)
	VALUES (@auxIdmedico, @idespecialidad,@descripcion)

	print 'El M�dico se agreg� correctamente'
	return

	
END
ELSE
BEGIN
	print 'El M�dico ya existe.'
	return
END

