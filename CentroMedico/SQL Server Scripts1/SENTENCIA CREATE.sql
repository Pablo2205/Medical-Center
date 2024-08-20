
CREATE FUNCTION nombreFun (@var int)
RETURNS int

AS

BEGIN 
	SET @var = @var * 5
	RETURN @var
END

CREATE TABLE Example(camp0 int IDENTITY (1,1), camp1 int, camp2 int)
SELECT * FROM Example

INSERT INTO Example
VALUES(2, 3)

