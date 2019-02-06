-- top_media_type.sql: Provide a query that shows the most purchased Media Type.

SELECT M.Name as "Media Type", COUNT(I.TrackId) as NumberSold
FROM MediaType as M
JOIN Track as T on M.MediaTypeId = T.MediaTypeId
JOIN InvoiceLine as I on T.TrackId = I.TrackId
GROUP BY "Media Type"
ORDER BY NumberSold DESC
LIMIT 1;

-- OR USE MAX:

SELECT TopMedia."MediaType" as "Media Type", MAX(TopMedia.NumberSold) as "Number Sold"

FROM (

SELECT M.Name as "MediaType", COUNT(I.TrackId) as NumberSold
FROM MediaType as M
JOIN Track as T on M.MediaTypeId = T.MediaTypeId
JOIN InvoiceLine as I on T.TrackId = I.TrackId
GROUP BY "MediaType"

) AS TopMedia

