ALTER TABLE Founder DROP COLUMN FullName;

ALTER TABLE Founder
ADD FullName AS (
	LTRIM(ISNULL(Prefix, '') + ' ') + 
	ISNULL(FirstName, '') + ' ' +
	LTRIM(ISNULL(MiddleName, '') + ' ') +
	RTRIM(ISNULL(LastName, '') + ' ' + ISNULL(Suffix, ''))
)