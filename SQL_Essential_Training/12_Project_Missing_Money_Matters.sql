    -- 12.1a CHALLENGE 1

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: How many transactions took place between the years 2011 and 2012?
*/

SELECT
	COUNT(total) AS [Number of transactions 2011-2012]
FROM
	Invoice
WHERE
	InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31';

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: How much money did WSDA Music make during the same period?
*/

SELECT
	SUM(total) AS [Money made in 2011-2012]
FROM
	Invoice
WHERE
	InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31';

    -- 12.1b CHALLENGE 2

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Get a list of customers who made purchases between 2011 and 2012
*/

SELECT
	DISTINCT
	c.FirstName,
	c.LastName,
	i.total
FROM
	Invoice AS i
JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
WHERE
	i.InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31'
ORDER BY
	i.total DESC;

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Get a list of customers, sales reps, and total transaction amounts for each customer between 2011 and 2012
*/

SELECT
	DISTINCT
	c.FirstName,
	c.LastName,
	e.FirstName,
	e.LastName,
	sum(i.total) AS [Sum of transactions]
FROM
	Invoice AS i
JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
JOIN
	Employee AS e
ON
	c.SupportRepId = e.EmployeeId
WHERE
	i.InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31'
GROUP BY
	c.LastName
ORDER BY
	[Sum of transactions] DESC;

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: How many transactions are above the average transaction amount during the same time period?
*/

SELECT
	COUNT(total) AS [Number of transactions above average 2011-2012]
FROM
	Invoice
WHERE
	total >
		(SELECT
			AVG(total)
		FROM
			Invoice
		WHERE
			InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31')
	AND InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31';

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: What is the average transaction amount for each year that WSDA Music has been in business?
*/

SELECT
	substr(InvoiceDate,1,4) AS [Year],
	round(avg(total),2) AS [Average]
FROM
	Invoice
GROUP BY
	[Year];

    -- 12.1c CHALLENGE 3

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Get a list of employees who exceeded the average transaction amount from sales they generated during 2011 and 2012
*/

SELECT
	DISTINCT
	e.FirstName,
	e.LastName
FROM
	Invoice AS i
LEFT JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
JOIN
	Employee AS e
ON
	c.SupportRepId = e.EmployeeId
WHERE
	i.total >
		(SELECT
			AVG(total)
		FROM
			Invoice
		WHERE
			InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31');

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Create a Commission Payout column that displays each employee’s commission based on 15% of the sales transaction amount
*/

SELECT
	e.FirstName,
	e.LastName,
	sum(i.total)*0.15 AS [Commission Payout]
FROM
	Invoice AS i
LEFT JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
JOIN
	Employee AS e
ON
	c.SupportRepId = e.EmployeeId
WHERE
	i.InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31'
GROUP BY
	e.LastName
ORDER BY
	sum(i.total)*0.15 DESC;

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: List the customers that the employee identified in the last question
*/

SELECT
	DISTINCT
	c.FirstName,
	c.LastName
FROM
	Invoice AS i
LEFT JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
WHERE
	i.InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31'
	AND c.SupportRepId = 3
ORDER BY
	c.LastName;

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Which customer made the highest purchase?
*/

SELECT
	c.FirstName,
	c.LastName,
	i.total
FROM
	Invoice AS i
LEFT JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
WHERE
	i.InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31'
	AND c.SupportRepId = 3
ORDER BY
	i.total DESC;

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Look at this customer record—do you see anything suspicious?
*/

SELECT
	*
FROM
	Customer AS c
JOIN
	Employee AS e
ON
	c.SupportRepId = e.EmployeeId
WHERE
	c.LastName = 'Doeein';
