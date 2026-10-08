select * from invoice
select * from invoiceline
select * from track
select * from album
select * from artist
select * from vw_fact_ventasdetalle
select * from customer
SELECT * FROM EMPLOYEE

CREATE VIEW VW_DesempeñoEmpleados AS

SELECT 

e.EmployeeId,
e.FirstName + ' ' + e.LastName AS NombreEmpleado,
e.Title AS Cargo,
e.HireDate AS FechaContratacíon,
c.CustomerId,
c.FirstName + ' ' + c.LastName AS NombreCliente,
c.Country AS PaisCliente,
i.InvoiceId,
i.InvoiceDate AS FechaFactura,
i.Total AS TotalVenta

FROM dbo.employee e
INNER JOIN dbo.Customer c ON e.EmployeeId = c.SupportRepId
INNER JOIN dbo.invoice i ON c.CustomerId = i.CustomerId

SELECT * FROM VW_DesempeñoEmpleados