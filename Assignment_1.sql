-- 1. How many actors are there with the last name 'Wahlberg'?
select COUNT(last_name)
from actor 
where last_name = 'Wahlberg';

-- 2. How many paymnets were made between $3.99 and $5.99?
select COUNT(amount)
from payment 
where amount between 3.99 and 5.99;

-- 3. What film does the store have the most of? (search in inventory)
select film_id, COUNT(film_id)
from inventory
group by film_id
order by COUNT(film_id) desc;

-- 4. How many customers have the last name 'William'?
select COUNT(last_name) as value_occurence
from customers 
where last_name = 'William'

-- 5. What store employee (get the id) sold the most rentals?
select COUNT(staff_id)
from RENTAL
group by staff_id
order by COUNT(staff_id) desc
limit 1;

-- 6. How many different district names are there? 
select COUNT(distinct district) as districts
from address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, COUNT(film_id) as occurence
from film_actor
group by film_id 
order by occurence desc
limit 1;

-- 8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
select COUNT(last_name), store_id
from customer 
where last_name like '%es' and store_id = '1'
group by store_id;

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 andd 430?
-- (use group by and having >250)
select COUNT(amount), amount
from payment
where customer_id between 380 and 430
group by amount 
having COUNT(rental_id) > 250;


-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select COUNT(distinct rating)
from film;

 select COUNT(title), rating
 from film
 group by rating
 order by COUNT(title) desc
 limit 1;
 

 



