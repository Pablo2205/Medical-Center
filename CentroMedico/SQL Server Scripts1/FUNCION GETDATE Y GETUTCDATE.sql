SELECT GETDATE ()
SELECT GETUTCDATE ()

--Date Add (años, meses, dias, horas)
SELECT DATEADD (hh, -2, getdate()) --horas
SELECT DATEADD (dd, -2, getdate()) --dias
SELECT DATEADD (mm, -2, getdate()) --meses
SELECT DATEADD (yy, -2, getdate()) --años


--Devuelve la diferencia
SELECT DATEDIFF (year, '20010522', GETDATE())

--Devuelve el valor del parametro
SELECT DATEPART(dw, GETDATE())

--Devuelve un valor booleano dependiendo si el valor corresponde a una fecha.
PRINT ISDATE(GETDATE()) --True(1)
PRINT ISDATE(39) --false(0)
PRINT ISDATE('20010599') --False(0)
