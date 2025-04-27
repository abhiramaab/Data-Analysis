
-- Get Top 5 Cities by Sales
SELECT City, SUM(Sales) AS TotalSales
FROM SalesData
GROUP BY City
ORDER BY TotalSales DESC
LIMIT 5;

-- Get Top Selling Products
SELECT Product, SUM(Quantity) AS TotalQuantitySold
FROM SalesData
GROUP BY Product
ORDER BY TotalQuantitySold DESC;
