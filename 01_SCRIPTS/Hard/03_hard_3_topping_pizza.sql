--3-Topping Pizzas--

select 
concat(p1.topping_name, ',', p2.topping_name,',', p3.topping_name) as pizza,
p1.ingredient_cost  + p2.ingredient_cost + p3.ingredient_cost  as total_cost
from pizza_toppings p1
cross join pizza_toppings p2,
pizza_toppings p3
where p1.topping_name<p2.topping_name
and p2.topping_name<p3.topping_name
order by total_cost desc, pizza