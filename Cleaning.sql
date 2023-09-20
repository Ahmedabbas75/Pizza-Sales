USE [Pizza Sales]

-- replace M to Medium in pizza_size column
UPDATE pizza_sales
SET pizza_size = REPLACE(pizza_size, 'M', 'Medium')

-- replace S to Small  in pizza_size column
UPDATE pizza_sales
SET pizza_size = REPLACE(pizza_size, 'S', 'Small')

-- replace L to Large  in pizza_size column
UPDATE pizza_sales
SET pizza_size = REPLACE(pizza_size, 'L', 'Large')

-- add new column Order_Hour
ALTER TABLE pizza_sales ADD Order_Hour int;

-- add data to column
UPDATE pizza_sales SET Order_Hour = DATEPART(HOUR, order_time);

