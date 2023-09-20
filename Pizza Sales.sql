use [Pizza Sales]

-- 1.Total Revenue :
SELECT SUM(total_price) AS Total_Revenue 
FROM pizza_sales;

-- 2.Average Order Value
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value 
FROM pizza_sales;

-- 3. Total Pizzas Sold
SELECT SUM(quantity) AS Total_pizza_sold 
FROM pizza_sales;

-- 4.Total Orders
SELECT COUNT(DISTINCT(order_id)) AS Total_Orders
from pizza_sales;

-- 5. Daily Trend for Total Orders
SELECT DATENAME(weekday, order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(weekday, order_date)
ORDER BY (total_orders) DESC;

-- 6.Monthly Trend for Orders
SELECT DATENAME(MONTH, order_date) as Month_Name, COUNT(DISTINCT order_id) as Total_Orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)

-- 7.Sales by Pizza Category
SELECT pizza_category, ROUND(SUM(total_price),2) as total_revenue
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_revenue DESC;

-- 8.Sales by Pizza Size
SELECT pizza_size, ROUND(SUM(total_price),2) as total_revenue
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_revenue DESC;

-- 9.Total Quantity by Pizza Category
SELECT pizza_category, SUM(quantity) as Total_Quantity
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Quantity DESC;

-- 10.Top 5 Pizzas by Revenue
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;   -- IF WE NEED Bottom Pizzas REMOVE `DESC` KEYWORD

-- 11.Top 5 Pizzas by Quantity
SELECT TOP 10 pizza_name, SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC; 


-- 12 get total order in each hour
SELECT Order_Hour, COUNT(DISTINCT order_id) AS Total_Order
FROM pizza_sales
GROUP BY Order_Hour
ORDER BY Total_Order DESC;

-- 13. get name of prizz hase lowes unit price
SELECT TOP 1 pizza_name , unit_price
FROM pizza_sales
ORDER BY unit_price;

-- 14. get name of prizz hase highest unit price
SELECT TOP 1 pizza_name , unit_price
FROM pizza_sales
ORDER BY unit_price DESC;










