-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.

SELECT T.Name as TrackName, COUNT(I.TrackId) as NumberSold
FROM Track as T
JOIN InvoiceLine as I on I.TrackId = T.TrackId
GROUP BY TrackName
ORDER BY NumberSold DESC
LIMIT 5;

-- use LIMIT statement to restrict results