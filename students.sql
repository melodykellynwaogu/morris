CREATE TABLE students (
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthday TEXT
);

INSERT INTO student (first_name, last_name, email, phone, birthday)  VALUES ("Peter", "Rabbit", "peter@rabbit.com", "555-6666", "2002-06-24");
INSERT INTO student (first_name, last_name, email, phone, birthday) VALUES ("Alice", "Wonderland", "alice@wonderland.com", "555-4444", "2002-07-04");


CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    test TEXT,
    grade INTEGER,
    passmark INTEGER
);

INSERT INTO student_grades (student_id, test, grade, passmark) VALUES (1, "Nutrition", 95, 100);
INSERT INTO student_grades (student_id, test, grade, passmark)
    VALUES (1, "Nutrition", 95, 100);
INSERT INTO student_grades (student_id, test, grade, passmark)
    VALUES (2, "Nutrition", 92, 100);
INSERT INTO student_grades (student_id, test, grade, passmark)
    VALUES (1, "Chemistry", 85, 100);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Chemistry", 95);

SELECT * FROM student_grades

/* using a cross join */

SELECT * FROM student, student_grades

/* using the inner join */
SELECT * FROM student, student_grades
    WHERE student_grades.student_id = student.id;

/* using the explicit inner join systax - JOIN */
SELECT students.first_name, student.last_name, student.email, student.phone, students.birthday FROM students
    join student_grades
    ON students.id = student_grades.student_id
    WHERE grade > 90;

SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id
SELECT 
	CASE 
		WHEN student_grades > 95 THEN 'Master'
		WHEN student_grades < 95 THEN 'Progress'
		WHEN student_grades = 100 THEN 'Passed'
		ELSE 'Failed'
	END AS 'Best Student'
FROM student_grades
GROUP BY passmark;
