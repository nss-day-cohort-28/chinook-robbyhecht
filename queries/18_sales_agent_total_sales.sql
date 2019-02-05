-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

SELECT E.FirstName || " " || E.LastName as "Employee", "$" || ROUND(SUM(I.Total), 2) as "Total Sales"
FROM Employee as E
JOIN Customer as C on C.SupportRepId = E.EmployeeId
JOIN Invoice as I on I.CustomerId = C.CustomerId
GROUP BY Employee
ORDER BY Employee ASC;

