-- 1. How many actors are there with the last name 'Wahlberg'?
select * from actor
where last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
select amount
from payment
where amount between 3.99 and 5.99;

--3. What film does the store have the most of?(search in inventory)
select * from inventory;
select film_id, Max(film_id)
from inventory
group by film_id
order by film_id desc; 

--How many customers have the last name 'William?'

select first_name, last_name
from customer
where last_name like 'William';

select * from customer;

--5. What store employee(get the id) sold the most rentals?
select manager, Max(total_sales)
from sales_by_store
group by manager
order by manager desc; 

--6.How many different district names are there?

select count(district)
from address; 

select district, count(district);
from address 
group by district
order by district desc;

-- 7. What film has the most actors in it?(use film_actor table and get film_id)
select * from film_actor;

select film_id, count(film_id)
from film_actor
group by film_id;

-- 8. From store_id1, how many customers have a last name ending with 'es'?(use customer table)
select * from customer;
select last_name 
from customer
where store_id = 1 and last_name like '%es';

-- 9. How many payment amounts(4.99,5.99,etc.)had a number of rentals above 250 for customers with ids between 380 and 430?(use group by and having>250)
select count(customer_id), amount
from customer
where amount = 4.99 and 5.99
group by amount
having count(customer_id) > 250; 

select * from customer;

-- 10. Within the film table, how many rating categories are there and what rating has the most movies total?
select * from film;
select title,count(rating), max(rating)
from film
group by title
order by title desc ;









