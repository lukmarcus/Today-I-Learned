    -- 11.2 Inserting data

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: DML | Inserting Data - Adding an artist
*/

INSERT INTO
	Artist (Name)
VALUES ('Bob Marley');

    -- 11.3 Updating data

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: DML | Updating Data - Changing an artist
*/

UPDATE
	Artist
SET
	Name = 'Damien Marley'
WHERE
	ArtistId = 276;

    -- 11.4 Deleting data

/*
Created by: Marek Szumny
Create date: 2023/03/07
Description: DML | Deleting Data - Remove an artist
*/

DELETE FROM
	Artist
WHERE
	ArtistId = 276;    
