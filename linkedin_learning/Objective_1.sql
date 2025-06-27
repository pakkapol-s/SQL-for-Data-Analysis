USE restaurant_db;

-- 1. view the menu items table.
-- select *
-- from menu_items

-- 2. Find the number of items on the menu.
-- select count(*)
-- from menu_items

-- 3. what are the least and the most expensive item on the menu?
-- least expensive 
-- select *
-- from menu_items
-- order by price ASC;

-- 4. How many Italian dishes are there in the menu?
-- select *
-- from menu_items 
-- where category = "Italian"; 

-- 5. what are the least and the most expensive Italian dished on the menu?
-- select *
-- from menu_items
-- where category = "Italian"
-- order by price ASC;

-- 6. How many dishes are the in each category?
-- select category, COUNT(menu_item_id) AS NUM_OF_DISHES -- what in the group by clause have to be in the select caluse.
-- from menu_items
-- group by category;

-- 7. what is the average price for each category?
-- select category, ROUND(avg(menu_item_id), 2) AS avg_price_OF_ctg -- what in the group by clause have to be in the select caluse.
-- from menu_items
-- group by category;



