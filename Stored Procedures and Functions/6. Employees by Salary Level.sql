CREATE OR ALTER PROC usp_EmployeesBySalaryLevel @SalaryLevel VARCHAR(10)
AS
BEGIN
	SELECT FirstName, LastName
		FROM Employees
		WHERE (SELECT [dbo].[ufn_GetSalaryLevel](Salary)) = @SalaryLevel
END



EXEC usp_EmployeesBySalaryLevel 'High'