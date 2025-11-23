###############################################################
# TASK 6 – SALES TREND ANALYSIS (NO AMOUNT COLUMN AVAILABLE)
# Columns Used: Order_ID, Order_Date
###############################################################


---------------------------------------------------------------
-- 1?? MONTHLY ORDER VOLUME (Number of Orders)
---------------------------------------------------------------
SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM online_sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;



---------------------------------------------------------------
-- 2?? ORDERS FOR SPECIFIC YEAR (Example: 2018)
---------------------------------------------------------------
SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM online_sales
WHERE YEAR(Order_Date) = 2018
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Month;



---------------------------------------------------------------
-- 3?? TOTAL ORDERS PER YEAR
---------------------------------------------------------------
SELECT
    YEAR(Order_Date) AS Year,
    COUNT(DISTINCT Order_ID) AS Yearly_Orders
FROM online_sales
GROUP BY YEAR(Order_Date)
ORDER BY Year;



---------------------------------------------------------------
-- 4?? TOP 3 MONTHS BY ORDER VOLUME
---------------------------------------------------------------
SELECT TOP 3
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM online_sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Total_Orders DESC;



---------------------------------------------------------------
-- 5?? MONTHLY ORDER VOLUME ONLY (No Revenue)
---------------------------------------------------------------
SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    COUNT(DISTINCT Order_ID) AS Order_Volume
FROM online_sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;



---------------------------------------------------------------
-- 6?? TREND FOR A SPECIFIC MONTH ACROSS YEARS
-- (Example: March)
---------------------------------------------------------------
SELECT
    YEAR(Order_Date) AS Year,
    COUNT(DISTINCT Order_ID) AS Orders_In_March
FROM online_sales
WHERE MONTH(Order_Date) = 3
GROUP BY YEAR(Order_Date)
ORDER BY Year;

SELECT * FROM online_sales;

