-- Active: 1787574930457@@127.0.0.1@3306@exercise_log
DROP DATABASE IF EXISTS exercise_logs;
CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);

INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 25, 72, 80);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("rowing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("hiking", 60, 80, 85);

SELECT * FROM exercise_logs WHERE type = "biking";
SELECT * FROM exercise_logs WHERE type NOT IN ("biking", "hiking", "tree clambing", "rowing");

DROP TABLE IF EXISTS drs_favourites;
CREATE Table drs_favourites (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type TEXT,
    reason TEXT,
)

INSERT INTO drs_favorites(type, reason) VALUES ("biking", "Improves endurance and flexibility.");
INSERT INTO drs_favorites(type, reason) VALUES ("hiking", "Increases cardiovascular health.");

SELECT * FROM exercise_logs WHERE type IN (
    SELECT * FROM drs_favourites 
);


SELECT * FROM exercise_logs WHERE type IN (
    SELECT * FROM drs_favourites WHERE type LIKE "cardiovascular"
);
