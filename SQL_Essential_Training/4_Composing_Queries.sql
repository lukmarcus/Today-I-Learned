    -- 4.2 Query commenting

/*
Created by: Marek Szumny
Create date: 2023/03/04
Description: The comment
*/

    -- 4.3 Query composition

/*
Created by: Marek Szumny
Create date: 2023/03/04
Description: This query displays all customers first names, last names and email addresses
*/

SELECT
	FirstName,
	LastName,
	Email
FROM
	Customer;

    -- 4.5 Column custom names

/*
Created by: Marek Szumny
Create date: 2023/03/05
Description: This query displays all customers first names, last names and email addresses
*/

SELECT
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS EMAIL
FROM
	Customer;

    -- 4.6 Sorting query results

    /*
Created by: Marek Szumny
Create date: 2023/03/05
Description: This query displays all customers first names, last names and email addresses
*/

SELECT
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS EMAIL
FROM
	Customer
ORDER BY
	FirstName ASC,
	LastName DESC;

    -- 4.7 Limiting query results

/*
Created by: Marek Szumny
Create date: 2023/03/05
Description: This query displays all customers first names, last names and email addresses
*/

SELECT
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS EMAIL
FROM
	Customer
ORDER BY
	FirstName ASC,
	LastName DESC
LIMIT 10;
