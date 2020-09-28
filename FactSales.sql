 
USE AdventureWorks2008R2
GO
  
SELECT CAST(FORMAT(sh.OrderDate,'yyyy')+FORMAT(sh.OrderDate,'MM') AS int) AS date_id,
	   pr.ProductID,
	   prc.ProductCategoryID,
	   st.CountryRegionCode,
	   sh.CustomerID,
	   sh.SalesOrderID,
	   SUM(sd.LineTotal) AS NetSale,
	   SUM(sd.OrderQty) AS SalesInUnits,
	   SUM(sd.OrderQty*pr.Weight) AS SellsByWeight
FROM Sales.SalesOrderHeader sh
	 INNER JOIN Sales.SalesOrderDetail sd ON sd.SalesOrderID = sh.SalesOrderID
	 INNER JOIN Production.Product pr ON pr.ProductID = sd.ProductID
	 INNER JOIN Production.ProductSubcategory prsc ON prsc.ProductSubcategoryID = pr.ProductSubcategoryID
	 INNER JOIN Production.ProductCategory prc ON prc.ProductCategoryID = prsc.ProductCategoryID
	 INNER JOIN Sales.SalesTerritory st ON st.TerritoryID = sh.TerritoryID
	 INNER JOIN Person.CountryRegion cr ON cr.CountryRegionCode = st.CountryRegionCode
GROUP BY CAST(FORMAT(sh.OrderDate,'yyyy')+FORMAT(sh.OrderDate,'MM') AS int),
		 pr.ProductID,
		 prc.ProductCategoryID,
		 st.CountryRegionCode,
		 sh.CustomerID,
		 sh.SalesOrderID
ORDER BY  
		 pr.ProductID

















