-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?
-- Hint: Use the MAX function on a subquery.

SELECT TopEmployee.EmployeeName AS "Employee Name", MAX(TopEmployee.TotalSales) AS "Total Sales"

FROM(

SELECT E.FirstName || " " || E.LastName as EmployeeName, "$" || ROUND(SUM(case when I.InvoiceDate like "2009%" then I.Total END), 2) as TotalSales
FROM Employee as E
JOIN Customer as C on C.SupportRepId = E.EmployeeId
JOIN Invoice as I on I.CustomerId = C.CustomerId
GROUP BY EmployeeName

) AS TopEmployee;

-- use the like/then syntax to limit the query to 2009, wrap it in max to only display the top earner.