SELECT name, COUNT(ar.id) FROM Genre as g
JOIN GenreArtist as gar ON g.id = gar.genre_id
JION Artist as ar ON gar.artist_id = ar.id
GROUP BY g.name
ORDER BY COUNT(ar.id) DESC

SELECT t.name, al.year FROM Albums as al
JOIN Tracks as t ON t.album_id = al.id
WHERE year BETWEEN 2010 AND 2012 

SELECT al.name, AVG(t.time) FROM albums as al
LEFT JOIN Tracks as t ON t.album_id = al.id
GROUP BY al.name
ORDER BY AVG(t.time)

SELECT DISTINCT ar.name FROM Artist as ar
WHERE ar.name NOT IN (
    	SELECT DISTINCT ar.name FROM Artist as ar
    	LEFT JOIN ArtistAlbums as aral ON ar.id = aral.artist_id
    	LEFT JOIN Albums as al ON al.id = aral.album_id
    	WHERE al.year = 2020
)
ORDER BY ar.name

SELECT DICTINCT c.name FROM Collection as c
LEFT JOIN CollectionTracks as ct ON c.id = ct.collection_id
LEFT JOIN Tracks as t ON t.id = ct.track_id
LEFT JOIN Albums as al ON al.id = t.album_id
LEFT JOIN ArtistAlbums as aral ON aral.album_id = al.id
LEFT JOIN Artists as ar ONar.id = aral.musician_id
WHERE alias like '%%Valeria%%'
ORDER BY alias

SELECT al.name FROM Albums as al
LEFT JOIN ArtistAlbums as aral ON al.id = aral.album_id
LEFT JOIN Artists as ar ON ar.id = aral.artist_id
LEFT JOIN GenreArtist as gar ON ar.id = gar.artist_id
LEFT JOIN Genres as g ON g.id = gar.genre_id
GROUP BY al.name
HAVING COUNT(DISTINCT g.name) > 1
ORDER BY al.name

SELECT t.name FROM Tracks as t
LEFT JOIN CollectionTracks as ct ON t.id = ct.track_id
WHERE ct.track_id IS null

SELECT ar.name, t.time FROM Tracks as t
LEFT JOIN Albums as al ON al.id = t.album_id
LEFT JOIN ArtistAlbums as aral ON aral.album_id = a.id
LEFT JOIN Artists as ar ON ar.id = aral.artist_id
GROUP BY ar.name, t.time
HAVING t.time = (SELECT min(time) FROM t)
ORDER BY ar.name

SELECT DISTINCT aL.name FROM Albums as al
LEFT JOIN Tracks as t ON t.album_id = al.id
WHERE t.album_id IN (
    		SELECT album_id FROM Tracks
    		GROUP BY album_id
    		HAVING COUNT(id) = (
        			SELECT COUNT(id) FROM Tracks
        			GROUP BY album_id
        			ORDER BY  COUNT
        			LIMIT 1
   		 )
)
ORDER BY al.name
