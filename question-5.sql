--(question-5.sql) What was the most purchased track of 2013?

SELECT tracks.name as Track,
COUNT (*) as NumPurchases FROM invoice_items 
JOIN invoices on invoice_items.InvoiceId = invoices.InvoiceId
JOIN tracks ON invoice_items.TrackId;