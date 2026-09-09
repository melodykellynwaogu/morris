-- Active: 1787882099024@@127.0.0.1@3306@exercise_logs
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
SELECT type, SUM(calories) AS total_calories FROM exercise_logs GROUP BY type;

SELECT type, AVG(calories) AS avg_calories FROM exercise_logs GROUP BY type HAVING avg_calories > 70;

SELECT type FROM exercise_logs GROUP BY type HAVING COUNT(*) >= 2 ;
SELECT COUNT(*) FROM exercise_logs WHERE heart_rate > 220 -18;


/* 50-90% of max*/
SELECT COUNT(*) FROM exercise_logs WHERE
    heart_rate >= ROUND(0.50 * (220-30)) 
    AND  heart_rate <= ROUND(0.90 * (220-30));
/* CASE */
SELECT type, heart_rate
    CASE 
        WHEN heart_rate > 220-18 THEN "above max"
        WHEN heart_rate > ROUND(0.90 * (220-18)) THEN "above target" 
        WHEN heart_rate > ROUND(0.50 * (220-18)) THEN "within target"
        ELSE  "below target"
    END as "hr_zone";

SELECT COUNT(*), 
    CASE 
        WHEN heart_rate > 220-18 THEN "above max"
        WHEN heart_rate > ROUND(0.90 * (220-18)) THEN "above target"
        WHEN heart_rate > ROUND(0.50 * (220-18)) THEN "within target"
        ELSE  "below target"
    END as "hr_zone"
    GROUP BY hr_zone;

SELECT name, number_grade ROUND(fraction_completed * 100) AS percent_completed FROM books;
SELECT type, 


-- CREATE Table drs_favourites (
--     id INTEGER PRIMARY KEY AUTO_INCREMENT,
--     type TEXT,
--     reason TEXT,
-- )

-- INSERT INTO drs_favorites(type, reason) VALUES ("biking", "Improves endurance and flexibility.");
-- INSERT INTO drs_favorites(type, reason) VALUES ("hiking", "Increases cardiovascular health.");

-- SELECT * FROM exercise_logs WHERE type IN (
--     SELECT * FROM drs_favourites 
-- );


-- SELECT * FROM exercise_logs WHERE type IN (
--     SELECT * FROM drs_favourites WHERE type LIKE "cardiovascular"
-- );
