-- Active: 1787506911214@@127.0.0.1@3306@store
CREATE TABLE store (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, aisle INTEGER, quantity INTEGER);

INSERT INTO store VALUES (1, "Apples", 150, 1, 50);
INSERT INTO store VALUES (2, "Bananas", 80, 1, 40);
INSERT INTO store VALUES (3, "Butter", 500, 3, 15);
INSERT INTO store VALUES (4, "Salt", 40, 6, 80);
INSERT INTO store VALUES (5, "Spaghetti", 200, 4, 25);
INSERT INTO store VALUES (6, "Cookies", 350, 5, 30);
INSERT INTO store VALUES (7, "Bread", 250, 2, 20);
INSERT INTO store VALUES (8, "Peanuts", 180, 5, 35);
INSERT INTO store VALUES (9, "Noodles", 120, 4, 45);
INSERT INTO store VALUES (10, "Milk", 350, 2, 18);
INSERT INTO store VALUES (11, "Cheese", 650, 3, 12);
INSERT INTO store VALUES (12, "Cereal", 420, 5, 22);
INSERT INTO store VALUES (13, "Olive Oil", 800, 6, 10);
INSERT INTO store VALUES (14, "Water", 100, 1, 60);
INSERT INTO store VALUES (15, "Biscuits", 220, 5, 30);


SELECT * FROM store
ORDER BY price;

SELECT SUM(quantity) AS total_item_in_store 
FROM store;