-- sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

SELECT E.FirstName || " " || E.LastName as "Agent Name", COUNT(C.SupportRepId) as "Number of Customers"
FROM Employee as E
JOIN Customer as C on C.SupportRepId = E.EmployeeId
GROUP BY "Agent Name"

-- Inner join makes only Agents appear as they are the only employees with a direct customer base.