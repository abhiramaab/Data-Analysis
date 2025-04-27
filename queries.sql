
-- SQL Script Example

-- Total Sales by City
SELECT City, SUM(Sales) AS TotalSales
FROM SalesData
GROUP BY City
ORDER BY TotalSales DESC;
