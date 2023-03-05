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
Description: List all customers with all their invoices
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