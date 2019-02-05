-- line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

SELECT I.InvoiceLineId, T.Name
FROM InvoiceLine as I
JOIN Track as T on I.TrackId = T.TrackId

-- SAME AS
-- SELECT InvoiceLine.InvoiceLineId, Track.Name
-- FROM InvoiceLine
-- JOIN Track on InvoiceLine.TrackId = Track.TrackId