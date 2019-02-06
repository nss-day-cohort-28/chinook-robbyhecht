-- top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

SELECT A.Name as ArtistName, COUNT(I.TrackId) as NumberSold
FROM Track as T
JOIN InvoiceLine as I on I.TrackId = T.TrackId
JOIN Album as AL on T.AlbumId = AL.AlbumId
JOIN Artist as A on AL.ArtistId = A.ArtistId
GROUP BY ArtistName
ORDER BY NumberSold DESC
LIMIT 3;

-- "Iron Maiden"	"140"
-- "U2"	"107"
-- "Metallica"	"91"