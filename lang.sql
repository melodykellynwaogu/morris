SELECT * FROM movies
SELECT title FROM movies
SELECT director FROM movies
SELECT title, director FROM movies
SELECT title, year FROM movies
SELECT * FROM movies

/* SQL Lesson 2: Queries with constraints (Pt. 1) */

SELECT id, tilte FROM movies
WHERE id = 6;

SELECT title, year FROM movies
WHERE year BETWEEN 2000 AND 2010

SELECT title, year FROM movies
WHERE year NOT BETWEEN 2000 AND 2010

SELECT title, year FROM movies
WHERE year <= 2003;

SELECT title, director FROM movies
WHERE title LIKE "Toy Story%";

SELECT title, director FROM movies
WHERE director NOT LIKE "John Lesster%";


SELECT title FROM movies
WHERE title LIKE "WALL%"

/* If i waht to look for more things I can simply add there column name to the SELECT like */

SELECT title, director, id, year 
FROM movies
WHERE title LIKE "WALL%"

SELECT DISTINCT director FROM movies
ORDER BY director ASC

SELECT title, year FROM movies
ORDER BY year DESC
LIMIT 4;

/*List all the Canadian cities and thier population */

SELECT city, population FROM north_american_cities
WHERE country = "Canada";

/* List all the cities west of Chicago, ordered from west to east */

SELECT city, latitude FROM north_america_cities
WHERE country = "United States"
ORDER BY latitude DESC


SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;


SELECT city, population FROM north_american_cities
WHERE country LIKE "United States"
ORDER BY population DESC
LIMIT 2 OFFSET 2;