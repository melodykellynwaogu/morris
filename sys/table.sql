SELECT title, year
FROM movies
WHERE year BETWEEN 2000 AND 2010
/* Or if not that year, you can change it to */
WHERE year NOT BETWEEN 2000 AND 2010


/* to use id, SELECT the id */

SELECT title, id 
FROM movie
WHERE id = 6 /* 6 representing the movies title id row */

SELECT title, year 
FROM movies
WHERE year <= 2003
LIMIT 2, OFFSET 2;
