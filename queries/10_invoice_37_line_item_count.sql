-- invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT ()
FROM InvoiceLine
WHERE InvoiceId = 37

-- One to many...there can be multiple line items on an invoice.