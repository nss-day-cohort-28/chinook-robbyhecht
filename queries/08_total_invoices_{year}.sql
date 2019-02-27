-- total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

SELECT COUNT () as 'number of invoices'
FROM Invoice
WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00' and '2011-12-31 00:00:00' 
AND InvoiceDate NOT BETWEEN '2010-01-01 00:00:00' and '2010-12-31 00:00:00' 

-- combine between and not between statements to divide the range

-- could also use STRFTIME like in q#9