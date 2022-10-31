select pizza_name, count(amount) as No
.sold
from pizza
where pizza.pizza_id= pizza_id
group by pizza.pizza_name
order by count
(amount) desc
limit 1;