use sakila;

/* SELECT FirstName, LastName 
FROM Customer 
WHERE LastName = 'Griffin' ; */

-- =================== Example: Simple Select ================== --
-- QUERY: What are the titles of the films we sell and their ratings?
/* Select title, rating
From film; */

-- ===================== Example: Order By ===================== --
-- QUERY: What are the films we carry ordered by the length of the film (shortest first)?
/* select film_id, title, length
FROM film
order by length; */

-- QUERY: What are the films we carry ordered by the length of the film (longest first)?
/* SELECT film_id, title, length
FROM film
ORDER BY length DESC; */

-- QUERY: What are the films we carry ordered by the length of the film (longest first), but if 
-- multiple films have the same length then order by film_id?
/* SELECT film_id, title, length
FROM film
ORDER BY length DESC, film_id; */

--  ====================  Where Clause  ====================  --
-- QUERY: What films have a "PG" rating?
/* SELECT film_id, title, rating
FROM film
WHERE rating = "PG"; */

-- ======================= Complex Where ===================== --
-- QUERY: What films have a "PG" rating that run between 90 and 120 minutes? List the results 
-- in descending order by length. If two or more films have the same length, then list them in 
-- alphabetical order by title.
/*
SELECT film_id, title, rating, length
FROM film
WHERE rating = "PG" AND (length >= 90 AND length <= 120) 
ORDER BY length DESC, title;
*/

-- ====================  Example: LIKE =================== --
-- QUERY: What films titles start with the word "Theory"?
/* select film_id, title, rating 
from film
Where title LIKE "Theory%";     = the value starts with Theory */

-- QUERY: What films have the phrase "sec" anywhere in their title?
/* select film_id, title, rating 
from film
where title LIKE "%sec%"      -- = contains "sec" anywhere in the string */

-- ====================  Example: BETWEEN =================== --
-- QUERY: What films have a running length in the range 89-91 minutes?
/* select film_id, title, length 
from film
where length BETWEEN 89 AND 91; */

--  ====================  EXAMPLE : QUERYING WITH NULL  ==================== --
-- QUERY: Find all films that don't have a value for original_language_id
/* SELECT film_id, title
FROM film
WHERE original_language_id IS NULL; */

-- QUERY: Find all films that do have a value for original_language_id
/* SELECT film_id, title
FROM film
WHERE original_language_id IS NOT NULL; */

-- ====================  Example: DISTINCT =================== --
/*SELECT DISTINCT(rental_rate)
FROM film;        

0.99
4.99
2.99
*/


/* SELECT film_id, title, length
FROM film
WHERE length <= 90;    90 minutes is 1.5 hrs */

-- ====================== Example: COUNT() =============================== --
-- QUERY: How many films are in the films table?
-- SELECT COUNT(*)
-- FROM film;

-- QUERY: How many distinct ratings are represented in the films table?
-- SELECT COUNT(DISTINCT(rating))
-- FROM film;

-- SELECT COUNT(distinct(name)) AS num_categories
-- FROM category;

-- ======================= Examlpe SUM() =============================== --
-- QUERY: If I wanted to watch all of the movies in the film catalog, how long would it take?
-- SELECT SUM(length)
-- FROM film;

-- ======================= Examlpe AVG() =============================== --
-- QUERY: What is the average cost to rent a "G"-rated film?
-- SELECT AVG(rental_rate)
-- FROM film
-- WHERE rating = "G";

-- ======================== Example  MIN() and MAX() ======================= --
-- QUERY: How short is the shortest film? What about the longest?
-- SELECT MIN(length)
-- FROM film;

-- SELECT MAX(length)
-- FROM film;

-- ========================= Example: Group By ============================== --
-- QUERY: How many movies are available broken down by rating (G, PG, PG-13, etc)?
-- SELECT rating, COUNT(*)
-- FROM film
-- GROUP BY rating;

 -- QUERY: What is the average price to rent a movie broken down by rating (G, PG, PG-13)?
-- SELECT rating, avg(rental_rate)
-- FROM film
-- GROUP BY rating

-- ================================== Example: AS keword ========================================== --
-- SELECT rating, AVG(rental_rate) AS avg_rate
-- FROM film
-- GROUP BY rating
-- ORDER BY avg_rating;

-- ================================== Example: Having ====================================== --
-- SELECT rating, COUNT(*) 
-- FROM film
-- GROUP BY rating
-- HAVING COUNT(*) >= 200
-- ORDER BY rating;

-- ================================== Example: Neated Query ==========================
-- SELECT film_id, title, replacement_cost 
-- FROM film
-- WHERE replacement_cost = (SELECT MAX(replacement_cost)
--  FROM film);

-- SELECT title, length
-- FROM film
-- WHERE film_id IN (SELECT film_id 
-- FROM film_text 
-- WHERE description LIKE "%documentary%");

-- ========================================= Example: Join =================================== --
-- use northwind;
-- select * from employees 
-- JOIN customers
-- ON customers.Country = employees.Country;

-- SELECT employee.id, first_name, last_name, description, min_val, max_val
-- FROM employee 
-- JOIN pay_grade
--  ON employee.pay_grade_id = pay_grade.id;


-- ====================================== Example: INSERT INTO ======================================= --
-- INSERT INTO country(country_id, country, last_update)
-- VALUES(110, "Zimbabwe", NOW());

-- INSERT INTO country
-- VALUES(120, "Tou", NOW());

-- SELECT * FROM country
-- where country_id = '120'

-- ====================================== Update ================================================= --
-- UPDATE customer
-- SET first_name = 'PATTY', last_name = 'JOHNSTON'
-- WHERE customer_id = 2;

-- select customer_id, first_name, last_name
-- From customer;            -- old customer_name PATRICIA	JOHNSON

-- SET SQL_SAFE_UPDATES=0;
-- UPDATE customer
-- SET first_name = 'PATRICE'
-- WHERE first_name = 'PATTY';
-- SET SQL_SAFE_UPDATES=1;


-- ===================================== DELET STATEMENT ===================================== --
-- SELECT payment_id, customer_id, staff_id, amount
-- FROM payment 
-- WHERE payment_id = 100;

-- DELETE FROM payment
-- WHERE payment_id = 100;


-- ====================================== EXAMPLE: CREAT TABLE ======================================= --
-- CREATE TABLE advertisements (
--  AdId int NOT NULL,
--  Title varchar(50) NOT NULL,
--  MagicCode varchar(9),
--  PercentOff float NOT NULL,
--  PRIMARY KEY(AdId)
-- );

-- CREATE TABLE advertisementsadvertisements (
--  AdId int NOT NULL AUTO_INCREMENT,
--  Title varchar(50) NOT NULL,
--  MagicCode varchar(9),
--  PercentOff float NOT NULL,
--  PRIMARY KEY(AdId)
-- );

-- SELECT * FROM advertisements;



