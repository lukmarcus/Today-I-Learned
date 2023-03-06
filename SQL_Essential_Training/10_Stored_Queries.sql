    -- 10.1 View introduction

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: List all albums with associated tracks and artists who sang them
*/

SELECT
	al.Title AS Album,
	tr.Name AS Song,
	ar.Name AS Artist
FROM
	Album AS al
JOIN
	Artist AS ar
ON
	al.ArtistId = ar.ArtistId
JOIN
	Track AS tr
ON
	al.AlbumId = tr.AlbumId;

    -- 10.2 Creating a view

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Views | Create average total view
*/

CREATE VIEW V_AvgTotal AS
SELECT
	ROUND(AVG(total),2) AS [Average Total]
FROM
	Invoice;

    -- 10.3 Editing a view

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Views | Modify created view
*/
DROP VIEW "main"."V_AvgTotal";
CREATE VIEW V_AvgTotal AS
SELECT
	AVG(total) AS [Average Total]
FROM
	Invoice;

    -- 10.4 Joining views

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Views and Joins
*/

CREATE VIEW V_Tracks_InvoiceLine AS
SELECT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine AS il
JOIN
	Track AS t
ON
	il.TrackId = t.TrackId;

    -- 10.5 Deleting views

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: Deleting a Views
*/

DROP VIEW
	V_AvgTotal;
