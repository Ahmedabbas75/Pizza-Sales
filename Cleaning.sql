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


-- try to add order to see dashboard changed  or not
INSERT INTO pizza_sales VALUES(1, 48621, 'hawaiian_mMD', 1, '2015-01-1', '11:38:36.0000000', 13.25, 13.25, 'Medium', 'Supreme',
'Sliced Ham, Pineapple, Mozzarella Cheese', 'The Five Cheese Pizza')

DELETE FROM pizza_sales WHERE order_id = 48621;


SELECT * FROM pizza_sales