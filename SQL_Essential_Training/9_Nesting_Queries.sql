    -- 9.2 SELECT clause subquery

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Subqueries | Gather data about all invoices that are less than this average?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total <
		(SELECT AVG(total) FROM Invoice)
ORDER BY
	total DESC;

    -- 9.3 Aggregated subqueries

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Subqueries in the SELECT | How is each individual city performing againts the global average sales?
*/

SELECT
	BillingCity,
	ROUND(AVG(total),2) AS [City Average],
	(SELECT ROUND(AVG(total),2) FROM Invoice) AS [Global average]
FROM
	Invoice
GROUP BY
	BillingCity
ORDER BY
	BillingCity;

    -- 9.4 Non-aggregate subqueries

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Subqueries without Agregate functions | All invoices created after invoice no 251
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM
	Invoice
WHERE
	InvoiceDate > 
	(SELECT
		InvoiceDate
	FROM
		Invoice
	WHERE
		InvoiceId=251);
