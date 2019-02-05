-- total_sales_{year}.sql: What are the respective total sales for each of those years?

SELECT ROUND(SUM (Total), 2)
FROM Invoice
WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00' and '2011-12-31 00:00:00' 
AND InvoiceDate NOT BETWEEN '2010-01-01 00:00:00' and '2010-12-31 00:00:00'

-- with the ROUND statement, the sum is rounded to the number of decimals declared by the number after the comma... in this case 2.