--question 2 show the sales agent's full name and invoices associated with each sales agent.

SELECT E.FirstName, E.LastName, I.*
FROM employees AS E
JOIN customers AS C ON E.EmployeeId = C.SupportRepId
JOIN invoices AS I ON C.CustomerId = I.CustomerId
WHERE E.Title = 'Sales Support Agent';