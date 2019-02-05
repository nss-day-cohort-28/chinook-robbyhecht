-- sales_per_country.sql: Provide a query that shows the total sales per country.

SELECT BillingCountry as Country, "$" || ROUND(SUM( Total ), 2) as "Total Sales"
FROM Invoice
GROUP BY BillingCountry
ORDER BY BillingCountry ASC

