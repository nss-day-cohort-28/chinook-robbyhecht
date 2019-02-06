-- top_country.sql: Which country's customers spent the most?

SELECT TopCountry.Country AS Country, "$" || MAX(TopCountry.TotalSales) AS "Total Sales"

FROM(

SELECT BillingCountry as Country, ROUND(SUM( Total ), 2) as TotalSales
FROM Invoice
GROUP BY BillingCountry
ORDER BY BillingCountry ASC

) AS TopCountry

-- Must not have a '$' in the original amount or MAX will apply to the string instead of a number