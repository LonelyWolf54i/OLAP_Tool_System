

USE AdventureWorks2008R2
GO

SELECT DISTINCT CAST(FORMAT(soh.OrderDate,'yyyy')+FORMAT(soh.OrderDate,'MM') AS int) AS date_id, 
MONTH(soh.OrderDate) AS mes, YEAR(soh.OrderDate) AS anio
FROM  Sales.SalesOrderHeader soh
ORDER BY anio DESC