use pizza_resturent 
go


select sum(s.price * q.quantity) [Total Revneue] 
from pizza_size s , pizza_quantity q 
where q.pizza_type_id_size = s.pizza_type_id_size


select distinct count(d.order_id) [Count of orders]
from order_date d


select SUM(q.quantity) [Total pizza sold]
from pizza_quantity q


select AVG(price) [Avg pizza price]
from pizza_size s


select a.name , sum(s.price * q.quantity) [Total revnue by name]
from all_about_pizza a , pizza_size s , pizza_quantity q
where a.pizza_type_id = s.pizza_type_id and q.pizza_type_id_size = s.pizza_type_id_size
group by (a.name)
order by sum(s.price * q.quantity) desc



select a.category , sum(s.price * q.quantity) [Total revnue by category]
from all_about_pizza a , pizza_size s , pizza_quantity q
where a.pizza_type_id = s.pizza_type_id and q.pizza_type_id_size = s.pizza_type_id_size
group by (a.category)
order by sum(s.price * q.quantity) desc



select MONTH(o.date) [Months], sum(s.price * q.quantity) [Total revnue by Months]
from order_date o , pizza_size s , pizza_quantity q
where o.order_id = q.order_id and q.pizza_type_id_size = s.pizza_type_id_size
group by (MONTH(o.date))
order by sum(s.price * q.quantity) desc


select Day(o.date) [Day], sum(s.price * q.quantity) [Total revnue by Days]
from order_date o , pizza_size s , pizza_quantity q
where o.order_id = q.order_id and q.pizza_type_id_size = s.pizza_type_id_size
group by (Day(o.date))
order by sum(s.price * q.quantity) desc


select s.size ,sum(s.price * q.quantity) [Total revnue by Sizes]
from pizza_size s , pizza_quantity q
where q.pizza_type_id_size = s.pizza_type_id_size
group by (s.size)
order by sum(s.price * q.quantity) desc


