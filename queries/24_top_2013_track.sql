-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

SELECT TopTrack.TrackName as "Track Name", MAX(TopTrack.NumberSold) as "Total Sold"

FROM (

SELECT T.Name as TrackName, COUNT(I.TrackId) as NumberSold
FROM Track as T
JOIN InvoiceLine as I on I.TrackId = T.TrackId
GROUP BY TrackName

) AS TopTrack

