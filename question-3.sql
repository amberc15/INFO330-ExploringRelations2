--Provide a query that includes the purchased track name AND artist name with each invoice line item.
select t.Name, b.Name,  I.*
from invoice_items as I
join tracks as t on I.TrackId = t.TrackId
join albums as a on t.AlbumId = a.AlbumId
join artists as b on a.ArtistId = b.ArtistId;