-- 1. View the order_detail table
SELECT * FROM order_details ;

-- 2. What is the date range of this table?
SELECT min(order_date) AS Min_date, MAX(order_date) AS MAX_date
FROM  order_details

-- 3. How many orders have been made within this date range?
SELECT COUNT(DISTINCT order_id)
FROM order_details ;

-- 4. How many items were ordered within this date range?
SELECT COUNT(*)
FROM order_details ;

-- 5. Which order had the most number of items?
SELECT order_id, COUNT(item_id) AS NUM_of_items
FROM order_details
GROUP BY order_id 
ORDER BY NUM_of_items DESC ;

-- 6. How many orders had more than 12 items?
SELECT COUNT(*)
FROM

(SELECT order_id, COUNT(item_id) AS NUM_of_items
FROM order_details 
GROUP BY order_id 
HAVING NUM_of_items > 12) AS NUM_OF_ORDERS ;

