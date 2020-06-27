/*Práctico SQL*/

/* Canciones de Iron Maiden */
SELECT t.TrackId, t.Name
FROM tracks t 
INNER JOIN albums a ON t.AlbumId = a.AlbumId 
INNER JOIN artists art ON a.ArtistId = art.ArtistId
WHERE art.Name = 'Iron Maiden';

/*Discos con más de 25 canciones*/
SELECT AlbumId
FROM tracks t 
INNER JOIN albums a ON t.AlbumId = a.AlbumId 
GROUP BY t.AlbumId
HAVING count(t.AlbumId) > 25;

/*Canciones más populares*/
SELECT t.TrackId, t.Name, count(t.TrackId) AS 'Popularidad'
FROM tracks t 
INNER JOIN playlist_track ptrack ON t.TrackId = ptrack.TrackId
GROUP BY t.TrackId
HAVING count(t.TrackId) = 5
ORDER BY count(t.TrackId) DESC;
