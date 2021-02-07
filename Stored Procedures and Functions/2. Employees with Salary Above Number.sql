CREATE OR ALTER PROC usp_GetEmployeesSalaryAboveNumber @Treshold DECIMAL(18,4)
AS
BEGIN
	SELECT FirstName, LastName
		FROM Employees
		WHERE Salary >= @Treshold 
END

EXEC usp_GetEmployeesSalaryAboveNumber 50000