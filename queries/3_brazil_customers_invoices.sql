-- brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer
JOIN Invoice on Customer.CustomerId = Invoice.InvoiceId
WHERE Country = "Brazil"

-- the table names following FROM and JOIN are interchangeable.