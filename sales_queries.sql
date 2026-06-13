-- Total Sales
SELECT ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales;

-- Sales by Category
SELECT Category, 
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Top 5 States by Sales
SELECT State, 
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 5;

-- Sales by Region
SELECT Region, 
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Best Months for Sales
SELECT 
    SUBSTR("Order Date", 4, 7) AS Month,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Total_Sales DESC
LIMIT 5;