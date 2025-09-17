use practice;
select * from orders;
select * from restaurant;
 
	-- List all orders with restaurant's name.
select r.name, o.*
from orders o inner join restaurant r 
on o.restaurant_id = r.restaurant_id; 

	-- Show restaurant names with their order amount. 
select r.name, o.amount
from orders o inner join restaurant r 
on o.restaurant_id = r.restaurant_id;    

	-- All orders placed at restaurants in Mumbai. 
select r.name, o.*
from orders o inner join restaurant r 
on o.restaurant_id = r.restaurant_id 
where r.location = 'Mumbai';

	-- Total Sales for each restaurant.
select sum(o.amount), r.name as Total_Sales 
from orders o left join restaurant r 
on r.restaurant_id = o.restaurant_id 
group by r.name;    

	-- List customer's and restaurant's name.
select r.name, o.customer_name
from orders o inner join restaurant r 
on o.restaurant_id = r.restaurant_id;		