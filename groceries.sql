-- Active: 1787406054311@@127.0.0.1@3306@groceries
CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER, aisle INTEGER);

INSERT INTO  groceries VALUES (1, 'Tuesday', 5, 6);
INSERT INTO  groceries VALUES (2, 'Thusday', 6, 3);
INSERT INTO  groceries VALUES (3, 'Friday', 7, 4);
INSERT INTO  groceries VALUES (4, 'Sunday', 10, 9);
INSERT INTO  groceries VALUES (5, 'Saturday', 20, 2);
INSERT INTO  groceries VALUES (6, 'Monday', 4, 10);
SELECT aisle, SUM(rating) FROM groceries GROUP BY aisle;