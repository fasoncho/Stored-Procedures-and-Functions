CREATE OR ALTER PROC usp_GetTownsStartingWith @StartWith VARCHAR(10)
AS
BEGIN
	SELECT [Name]
		FROM Towns
		WHERE [Name] LIKE @StartWith + '%'
END

EXEC usp_GetTownsStartingWith @StartWith = 'b'
