-- Active: 1787506911214@@127.0.0.1@3306@favourite
CREATE TABLE favourite (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER, total INTEGER);

INSERT INTO favourite (id, name, rating, total) VALUES(1, "Reading", 10, 1);
INSERT INTO favourite (id, name, rating, total) VALUES(2, "Scripting", 9, 2);
INSERT INTO favourite (id, name, rating, total) VALUES(3, "Coding", 8, 3);
INSERT INTO favourite (id, name, rating, total) VALUES(4, "Football", 7, 4);
INSERT INTO favourite (id, name, rating, total) VALUES(5, "Jogging", 10, 5);
INSERT INTO favourite (id, name, rating, total) VALUES(6, "Musics", 10, 6);

SELECT * FROM favourite;
SELECT * FROM favourite GROUP BY rating DESC;
