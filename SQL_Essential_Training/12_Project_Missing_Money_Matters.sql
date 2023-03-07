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
