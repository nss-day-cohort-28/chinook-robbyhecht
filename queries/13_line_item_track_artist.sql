-- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT I.InvoiceLineId, T.Name as "Track Name", AR.Name as "Artist Name"
FROM InvoiceLine as I
JOIN Track as T on I.TrackId = T.TrackId
JOIN Album as AL on T.AlbumId = AL.AlbumId
JOIN Artist as AR on AR.ArtistId = AL.ArtistId
ORDER BY I.InvoiceLineId ASC

-- Rename colums so that they're not both labeled "Name"
-- Join Artist and Track though the common Album table