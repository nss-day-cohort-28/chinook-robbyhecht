-- total_sales_{year}.sql: What are the respective total sales for each of those years?

SELECT STRFTIME('%Y', Invoice.InvoiceDate) as Year, ROUND(SUM (Total), 2) as "Total Sales"
FROM Invoice
WHERE Year = '2009' or Year = '2011'
GROUP BY Year

-- with the ROUND statement, the sum is rounded to the number of decimals declared by the number after the comma... in this case 2.