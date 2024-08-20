DECLARE @num1 DECIMAL(9, 2) = 20
DECLARE @num2 DECIMAL(9, 2) = 30
DECLARE @result DECIMAL(9, 2)

SET @result = @num1 + @num2
print @result

SET @result = @num1 - @num2
print @result

SET @result = @num1 / @num2
print @result

SET @result = @num1 * @num2
print @result

SET @result = @num1 % @num2
print @result