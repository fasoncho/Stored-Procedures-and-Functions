CREATE OR ALTER PROC usp_GetEmployeesFromTown @TownName VARCHAR(30)
AS
BEGIN
	SELECT	FirstName, LastName
		FROM Employees AS e
		JOIN Addresses AS a ON a.AddressID = e.AddressID
		JOIN Towns AS t on t.TownID = a.TownID
		WHERE t.[Name] = @TownName
END

EXEC usp_GetEmployeesFromTown sofia