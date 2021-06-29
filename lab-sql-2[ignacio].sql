use sakila;
-- 1
Select * from actor
where first_name = 'Scarlett';

-- 2
Select * from actor
where first_name = 'Johansson';

-- 3
select distinct count(film_id) from inventory;

-- 4 
select count(rental_id) from rental;

-- 5
select min(rental_duration), max(rental_duration) from film;

-- 6
select min(length) as min_duration, max(length) as max_durration
from film;

-- 7
select avg(length)
from film;

-- 8
select date_format(convert(avg(length), time), "%hh-%mm")
from film;

-- 9
select count(film_id) from film
where length > 180;

-- 10
SELECT CONCAT(LEFT(UPPER(first_name),1),SUBSTRING(LOWER(first_name),2,LENGTH(first_name))) AS formatted_first_name, UPPER(last_name) AS formatted_second_name, LOWER(email) AS email
from customer;

-- 11
select max(length(title)) from film;