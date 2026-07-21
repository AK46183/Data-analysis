create database ecommer
use ecommer

USE ecommer;
GO

SELECT TOP 10 *
FROM online_retail_II;
SELECT COUNT(*) AS TotalRows
FROM online_retail_II;

USE ecommer;
GO

-- View first 10 records
SELECT TOP 10 *
FROM online_retail_II;

-- Total records
SELECT COUNT(*) AS Total_Records
FROM online_retail_II;

-- Required columns
SELECT Invoice, Description, Quantity, Price
FROM online_retail_II;

-- WHERE
SELECT *
FROM online_retail_II
WHERE Country = 'United Kingdom';

SELECT *
FROM online_retail_II
WHERE Price > 100;

SELECT *
FROM online_retail_II
WHERE Quantity > 10;

-- ORDER BY
SELECT Description, Price
FROM online_retail_II
ORDER BY Price DESC;

SELECT Description, Quantity
FROM online_retail_II
ORDER BY Quantity DESC;

-- GROUP BY
SELECT Country, COUNT(*) AS TotalOrders
FROM online_retail_II
GROUP BY Country
ORDER BY TotalOrders DESC;

SELECT Description, SUM(Quantity) AS TotalSold
FROM online_retail_II
GROUP BY Description
ORDER BY TotalSold DESC;

-- Top Selling Products
SELECT TOP 10 Description,
       SUM(Quantity) AS TotalSold
FROM online_retail_II
GROUP BY Description
ORDER BY TotalSold DESC;

-- Revenue by Country
SELECT Country,
       SUM(Quantity * Price) AS Revenue
FROM online_retail_II
GROUP BY Country
ORDER BY Revenue DESC;

-- Highest Revenue Month
SELECT MONTH(InvoiceDate) AS MonthNo,
       SUM(Quantity * Price) AS Revenue
FROM online_retail_II
GROUP BY MONTH(InvoiceDate)
ORDER BY Revenue DESC;

-- Aggregate Functions
SELECT AVG(Price) AS AveragePrice
FROM online_retail_II;

SELECT MAX(Price) AS MaximumPrice
FROM online_retail_II;

SELECT MIN(Price) AS MinimumPrice
FROM online_retail_II;

SELECT SUM(Quantity * Price) AS TotalRevenue
FROM online_retail_II;

SELECT COUNT(DISTINCT Customer_ID) AS TotalCustomers
FROM online_retail_II;

SELECT COUNT(DISTINCT StockCode) AS TotalProducts
FROM online_retail_II;

SELECT COUNT(DISTINCT Country) AS TotalCountries
FROM online_retail_II;

-- JOIN (Self Join Example)
SELECT A.Invoice,
       A.Description,
       B.Country
FROM online_retail_II A
INNER JOIN online_retail_II B
ON A.Invoice = B.Invoice;