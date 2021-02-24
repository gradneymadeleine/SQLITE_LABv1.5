--1
SELECT MAX(Total)
FROM Invoice;

--2
SELECT MAX(Total)
FROM Invoice
ORDER BY Total DESC;

--3
SELECT MediaType.Name, COUNT(*)
FROM Track, MediaType
WHERE Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name;

--4
SELECT MediaType.Name, COUNT(*)
FROM Track, MediaType
WHERE Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name
ORDER BY COUNT(*) DESC;

--5
SELECT MediaType.Name, COUNT(*)
FROM Track, MediaType
WHERE Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name HAVING(COUNT(*) > 200)
ORDER BY COUNT(*) DESC;

--6
SELECT COUNT(*) trackTotal, COUNT(DISTINCT Artist.Name)
FROM Track, Artist, Album
WHERE Artist.ArtistId = Album.ArtistId AND Track.AlbumId = Album.AlbumId AND Artist.Name LIKE 'A%';

