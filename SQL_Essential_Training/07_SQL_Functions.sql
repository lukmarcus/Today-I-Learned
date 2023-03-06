    -- 7.1 Calculating with functions

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: How many customers do we have whose last name starts with S?
*/

SELECT
	CustomerId,
	LastName,
	FirstName
FROM
	Customer
WHERE
	LastName LIKE 'S%'
ORDER BY LastName;

    -- 7.3 Connecting strings

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Create a Mailing List of US Customers
*/

SELECT
	FirstName,
	LastName,
	Address,
	PostalCode,
	City
FROM
	Customer
WHERE
	Country = 'USA';

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Create a Mailing List of US Customers
*/

SELECT
	FirstName || ' ' || LastName || ', ' || Address || ', ' || City || ' ' || State || ' ' || PostalCode AS 'Mailing Address'
FROM
	Customer
WHERE
	Country = 'USA';

    -- 7.4 Separating text

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Create a Mailing List of US Customers (only basic postal code)
*/

SELECT
	FirstName || ' ' || LastName || ', ' || Address || ', ' || City || ' ' || State || ' ' || substr(postalcode,1,5) AS 'Mailing Address'
FROM
	Customer
WHERE
	Country = 'USA';

    -- 7.5 UPPER and LOWER string functions

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Create a Mailing List of US Customers (only basic postal code and name in caps)
*/

SELECT
	upper(FirstName) || ' ' || upper(LastName) || ', ' || Address || ', ' || City || ' ' || State || ' ' || substr(postalcode,1,5) AS 'Mailing Address',
	lower(company) AS [Addition lowercase company]
FROM
	Customer
WHERE
	Country = 'USA';

    -- 7.6 Date functions

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Calculate the ages of all employees
*/

SELECT
	LastName || ' ' || FirstName AS [Employee],
	strftime('%Y-%m-%d',Birthdate) AS [Birthdate],
	strftime('%Y-%m-%d') - strftime('%Y-%m-%d',Birthdate) AS Age
FROM
	Employee;

    -- 7.7 Aggregate functions

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Aggregate Functions | What are our all time global sales?
*/

SELECT
	SUM(Total) AS [All time global sales],
	AVG(Total) AS [Average sales],
	MAX(Total) AS [Maximum sale],
	MIN(Total) AS [Minimum sale],
	COUNT(*) AS [Sales Count]
FROM
	Invoice;

    -- 7.8 Nesting functions

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Nesting Functions
*/

SELECT
	SUM(Total) AS [All time global sales],
	ROUND(AVG(Total),2) AS [Average sales],
	MAX(Total) AS [Maximum sale],
	MIN(Total) AS [Minimum sale],
	COUNT(*) AS [Sales Count]
FROM
	Invoice;
