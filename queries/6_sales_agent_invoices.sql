-- sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT Employee.FirstName, Employee.LastName, Invoice.*
From Invoice
JOIN Customer on Customer.CustomerId = Invoice.CustomerId
JOIN Employee on Customer.SupportRepId = Employee.EmployeeId
ORDER BY Employee.FirstName


-- Don't need: WHERE Employee.Title = "Sales Support Agent", because only Agents' ids are included on Customer table