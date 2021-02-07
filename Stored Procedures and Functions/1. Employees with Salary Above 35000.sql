CREATE OR ALTER PROC usp_GetEmployeesSalaryAbove35000
AS
BEGIN
SELECT FirstName, LastName, Salary
	FROM Employees
	WHERE Salary > 35000
END
GO;
EXEC usp_GetEmployeesSalaryAbove35000 