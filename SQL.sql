--1. How many actors are there with the last name ‘Wahlberg’? 
 --answer 2
select*
 from actor
where last_name = 'Wahlberg';
 
 
--2. How many payments were made between $3.99 and $5.99? 
 --answer 5563
select*
 from payment 
 where amount between 3.99 and 5.99
 
--3. What film does the store have the most of? (search in inventory) 
 --answer 200
SELECT film_id, count(film_id)
FROM inventory
group BY film_id
ORDER by count(film_id);
 
--4. How many customers have the last name ‘William’? 
 --answer 0
SELECT*
FROM customer_list
WHERE last_name ='William';
 
 
--5. What store employee (get the id) sold the most rentals? 
 --answer 1
 SELECT staff_id, count(customer_id)
FROM rental
group by rental_id
ORDER BY count(customer_id);
 
--6. How many different district names are there? 
 --answer 603
SELECT district
from address;

 
--7. What film has the most actors in it? (use film_actor table and get film_id) 
 --not sure if this is correct. This is what I think
select* amount 
from film_actor 
where film_id;

 
 
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
--not sure if this is correct. This is what I think
SELECT*
FROM customer 
where last_name = like 'es%'
 
 
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
--Not sure if this is correct
select amount, count(amount)
from payment 
group by amount >250

 
--10. Within the film table, how many rating categories are there? And what rating has the most movies total? 
--answer 5
SELECT rating, count(rating)
from film
GROUP BY rating;

