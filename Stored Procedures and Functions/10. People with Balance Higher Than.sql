CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan @totalOver MONEY
AS
SELECT ah.FirstName AS [First Name], ah.LastName AS [Last Name]
	FROM AccountHolders AS ah
	JOIN Accounts AS a ON a.AccountHolderId = ah.Id
	GROUP BY ah.FirstName, ah.LastName
	HAVING SUM(Balance) > @totalOver
	ORDER BY [First Name], [Last Name]
