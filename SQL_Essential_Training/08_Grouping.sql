    -- 8.2 Filtering with a grouped condition

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Grouping in SQL | What are the average invoice totals by city?
*/

SELECT
	BillingCity,
	ROUND(AVG(total),2) AS [Average invoice],
	COUNT(*) AS [Transactions]
FROM
	Invoice
GROUP BY
	BillingCity
ORDER BY
	BillingCity;

    -- 8.3 Grouping with the WHERE clause

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Grouping in SQL | What are the average invoice totals by city for only the cities that starts with L?
*/

SELECT
	BillingCity,
	ROUND(AVG(total),2) AS [Average invoice],
	COUNT(*) AS [Transactions]
FROM
	Invoice
WHERE
	BillingCity LIKE 'L%'
GROUP BY
	BillingCity
ORDER BY
	BillingCity;

    -- 8.4 Grouping with the HAVING clause

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Grouping in SQL | What are the average invoice totals greater than $5.00?
*/

SELECT
	BillingCity,
	ROUND(AVG(total),2) AS [Average invoice > $5],
	COUNT(*) AS [Transactions]
FROM
	Invoice
GROUP BY
	BillingCity
HAVING
	AVG(total)>5
ORDER BY
	BillingCity;

    -- 8.5 Grouping with the WHERE and HAVING clause

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Grouping in SQL | What are the average invoice totals greater than $5.00 only for the cities starting with B?
*/

SELECT
	BillingCity,
	ROUND(AVG(total),2) AS [Average invoice > $5],
	COUNT(*) AS [Transactions]
FROM
	Invoice
WHERE
	BillingCity LIKE 'B%'
GROUP BY
	BillingCity
HAVING
	AVG(total)>5
ORDER BY
	BillingCity;

    -- 8.6 Grouping by many fields

/*
Created by: Marek Szumny
Create date: 2023/03/06
Description: Grouping by more than one field at a time | What are the average invoice totals by billing country and city?
*/

SELECT
	BillingCountry,
	BillingCity,
	ROUND(AVG(total),2) AS [Average invoice],
	COUNT(*) AS [Transactions]
FROM
	Invoice
GROUP BY
	BillingCountry,
	BillingCity
ORDER BY
	BillingCountry;
