CREATE OR ALTER FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
RETURNS VARCHAR(10)
BEGIN
	IF @salary < 30000
	RETURN 'Low'
	IF @salary <= 50000
	RETURN 'Average'
	IF @salary > 50000
	RETURN 'High'
	RETURN ''
END