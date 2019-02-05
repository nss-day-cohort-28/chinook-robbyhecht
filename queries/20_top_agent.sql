-- top_agent.sql: Which sales agent made the most in sales over all?

SELECT TopEmployee.EmployeeName AS "Employee Name", MAX(TopEmployee.TotalSales) AS "Total Sales"

FROM(

SELECT E.FirstName || " " || E.LastName as EmployeeName, "$" || ROUND(SUM(I.Total), 2) as TotalSales
FROM Employee as E
JOIN Customer as C on C.SupportRepId = E.EmployeeId
JOIN Invoice as I on I.CustomerId = C.CustomerId
GROUP BY EmployeeName

) AS TopEmployee;

-- wrap query in max to show only biggest $ amount. Only wrap in max the column that you are specifying by size.