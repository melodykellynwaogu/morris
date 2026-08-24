-- Active: 1787574930457@@127.0.0.1@3306@exercise_log
DROP TABLE IF EXISTS exercise_log;
CREATE TABLE exercise_log (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type TEXT,
    minutes INTEGER,
    calories INTEGER,
    heart_rate INTEGER
);

INSERT INTO exercise_log (type, minutes, calories, heart_rate)VALUES ("biking", 30, 100, 110);
INSERT INTO exercies_log (type, minutes, calories, heart_rate)VALUES ("biking", 10, 30, 105);
INSERT INTO exercies_log (type, minutes, calories, heart_rate)VALUES ("dancing", 15, 200, 120);

SELECT * FROM exercise_log WHERE calories > 50 ORDER BY calories;

SELECT * FROM exercies_log WHERE calories > 50 AND minutes < 30;

SELECT * FROM exercies_log WHERE calories > 50 OR heart_rate > 100;

