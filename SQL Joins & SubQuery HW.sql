-- 1. List all customers who live in Texas (use JOINS)
select customer.first_name, customer.last_name, address.district
from customer
inner join address 
on customer.address_id = address.address_id
where district = 'Texas';

-- 2. Get all payments above $6.99 with the Customer's Full Name
select customer.first_name, customer.last_name, payment.amount 
from customer 
inner join payment 
on customer.customer_id = payment.customer_id 
where amount > '6.99';

-- 3. Show all customers names who have made payments over $175 (use subqueries) 
select first_name, last_name
from customer
where customer_id in (
	select customer_id
	from payment
	group by customer_id
	having sum(amount) >175
);

-- 4. List all customers that live in Nepal (use the city table)
select first_name, last_name
from customer
where address_id in (
	select address_id 
	from address
	where city_id in (
		select city_id 
		from city
		where country_id in (
			select country_id
			from country
			where country = 'Nepal'
			)));


-- 5. Which staff member had the most transactions?
select first_name, last_name
from staff
where staff_id in (
	select staff_id
	from payment 
	group by staff_id
	order by staff_id desc
	limit 1
);


select customer.first_name, customer.last_name, address.district
from customer
inner join address 
on customer.address_id = address.address_id
where district = 'Texas';

-- 6. How many movies of each rating are there? 
select rating, COUNT(film_id)
from film
group by rating 
order by rating;

-- 7. Show all customers who have made a single payment above $6.99 (use subqueries))
select first_name, last_name
from customer
where customer_id in (
	select customer_id
	from payment
	where amount > 6.99
	group by customer_id
	having count(amount) = 1
);

-- 8. How many free rentals did our stores give away? 

select COUNT(rental_id)
from rental
where rental_id in (
	select rental.rental_id
	from rental 
	inner join payment
	on rental.rental_id = payment.rental_id
	where payment_id is null
);