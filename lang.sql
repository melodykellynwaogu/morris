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