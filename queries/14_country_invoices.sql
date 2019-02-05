-- country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT I.BillingCountry as "Billing Country", COUNT() as "Number of Invoices"
FROM Invoice as I
GROUP BY I.BillingCountry
ORDER BY I.BillingCountry ASC