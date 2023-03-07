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
	c.LastName
FROM
	Invoice AS i
JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
WHERE
	i.InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31'
ORDER BY
	c.LastName;

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
	InvoiceId,
	total,
	(SELECT AVG(total) FROM Invoice WHERE InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31') AS [Global average]
FROM
	Invoice
WHERE
	(InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31') AND (total > [Global average]);

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: What is the average transaction amount for each year that WSDA Music has been in business?
*/

SELECT
	substr(InvoiceDate,1,4) AS [Year],
	avg(total) AS [Average]
FROM
	Invoice
GROUP BY
	[Year];
