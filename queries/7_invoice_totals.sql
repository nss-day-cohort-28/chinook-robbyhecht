-- invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT I.Total, C.FirstName, C.LastName, C.Country, E.FirstName, E.LastName
FROM Invoice as I
JOIN Customer as C on I.CustomerId = C.CustomerId
JOIN Employee as E on C.SupportRepId = E.EmployeeId