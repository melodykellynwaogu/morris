-- Active: 1787506911214@@127.0.0.1@3306@favourite
DROP TABLE IF EXISTS favorite;
CREATE TABLE favourite (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER, total INTEGER, days TEXT);

INSERT INTO favourite (id, name, rating, total, days) VALUES(1, "Reading", 10, 1, "Monday");
INSERT INTO favourite (id, name, rating, total, days) VALUES(2, "Scripting", 9, 2, "Tuesday");
INSERT INTO favourite (id, name, rating, total, days) VALUES(3, "Coding", 8, 3, "Thusday");
INSERT INTO favourite (id, name, rating, total, days) VALUES(4, "Football", 7, 4, "Sunday");
INSERT INTO favourite (id, name, rating, total, days) VALUES(5, "Jogging", 10, 5, "Monday");
INSERT INTO favourite (id, name, rating, total, days) VALUES(6, "Musics", 10, 6, "Friday");

SELECT * FROM favourite ORDER BY id ASC;
SELECT SUM(total) AS total_sum FROM favourite WHERE day > 4 ORDER BY rating DESC;
