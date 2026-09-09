DROP TABLE IF EXISTS songs;

CREATE TABLE songs (
    id INTEGER PRIMARY KEY, 
    title TEXT, 
    artist TEXT, 
    mood TEXT, 
    duration INTEGER, 
    released INTEGER
);

INSERT INTO songs (id, title, artist, mood, duration, released) VALUES (1, "Goodnews by christ Jesus", "jw", "encouraging", 30, 2005);
INSERT INTO songs (id, title, artist, mood, duration, released) VALUES (2, "How dose it make you feel", "jwbrothers", "happy", 50, 2001);
INSERT INTO songs (id, title, artist, mood, duration, released) VALUES (3, "Great God Jehovah", "jwsister", "prasing", 40, 1999);
INSERT INTO songs (id, title, artist, mood, duration, released) VALUES (4, "With Eyes of faith", "jwbrothers", "happy", 50, 2001);

SELECT * FROM songs;
SELECT * FROM songs WHERE mood = "happy" AND released > 40 AND duration < 2009 ORDER BY title;
SELECT title FROM songs;
SELECT title FROM songs WHERE title = "With Eyes of faith" AND released < 2009;

SELECT * FROM songs WHERE title = "With Eyes of faith"