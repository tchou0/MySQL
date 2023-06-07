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




