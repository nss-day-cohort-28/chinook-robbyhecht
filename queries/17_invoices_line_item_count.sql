-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT I.InvoiceId, I.InvoiceDate, I.CustomerId, I.Total, count() as "Number of Line Items" FROM InvoiceLine as IL
JOIN Invoice as I on I.InvoiceId = IL.InvoiceId
GROUP BY I.InvoiceId
ORDER BY I.InvoiceID ASC

-- had to choose select items from Invoice table rather than use * because it displays all contents of both tables