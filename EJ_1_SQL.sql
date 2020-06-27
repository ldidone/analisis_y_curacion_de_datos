/* SUB CONSULTA */
/*
SELECT trackid, name
FROM tracks t
WHERE albumid = (
    SELECT albumid
    FROM albums
    WHERE title = 'Let There Be Rock'
);
*/

/* INNER JOIN */
SELECT trackid, name
FROM tracks t
INNER JOIN albums a ON t.AlbumId = a.AlbumId
WHERE a.title = 'Let There Be Rock'