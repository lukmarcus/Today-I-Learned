    -- 6.2 How tables share a relationship, part 1

/*
Created by: Marek Szumny
Create date: 2023/03/05
Description: JOINS
*/

SELECT
	*
FROM
	Invoice
INNER JOIN
	Customer
ON
    Invoice.CustomerId = Customer.CustomerId
ORDER BY Customer.CustomerId;

    -- 6.4 Simplifying JOINs

/*
Created by: Marek Szumny
Create date: 2023/03/05
Description: Join customers with all their invoices
*/

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY c.CustomerId;

    -- 6.7 The LEFT JOIN

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: List all invoices with customers data
*/

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM
	Invoice AS i
LEFT JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY c.CustomerId;

    -- 6.8 The RIGHT JOIN
    -- RIGHT and FULL OUTER JOINs are not currently supported

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: List all customers with invoices data (switched tables)
*/

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM
	Invoice AS i
LEFT JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY c.CustomerId;

    -- 6.10 Joining many tables

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: JOINS on more than two tables | What employees are responsible for the 10 highest individual sales?
*/

SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	i.CustomerId,
	i.total
FROM
	Invoice AS i
LEFT JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
JOIN
	Employee as e
ON
	c.SupportRepId = e.EmployeeId
ORDER BY
	i.total DESC
LIMIT 10;
