CREATE OR ALTER FUNCTION ufn_IsWordComprised(@setOfLetters VARCHAR(MAX), @word VARCHAR(MAX))
RETURNS BIT
BEGIN
	
	DECLARE @Count INT = 1
	WHILE @Count <= LEN(@word)
		BEGIN
			DECLARE @currentLetter CHAR(1) = SUBSTRING(@word,@Count,1)
			IF CHARINDEX(@currentLetter, @setOfLetters) = 0  
				RETURN 0
			SET @Count += 1	
		END

	RETURN	1
END

GO

SELECT [dbo].[ufn_IsWordComprised]('pppp', 'Guy')
