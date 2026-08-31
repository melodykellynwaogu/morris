DROP TABLE IF EXISTS kelly;
CREATE TABLE kelly (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    skills VARCHAR(255),
    rate INT,
    occupation VARCHAR(255)
);

INSERT INTO kelly (name, skills, rate, tools) VALUES ('Kelly', 'Network Defends', 40, 'Security Analyst');
INSERT INTO kelly (name, skills, rate, tools) VALUES ('Kelly', 'Python', 30, 'Security Analyst');
INSERT INTO kelly (name, skills, rate, tools) VALUES ('Kelly', 'SQL', 85, 'Security Analyst');
INSERT INTO kelly (name, skills, rate, tools) VALUES ('kelly', 'Linux', 75, 'System Administrator');
INSERT INTO kelly (name, skills, rate, tools) VALUES ('Kelly', 'Slpunk', 15, 'Security Analyst');
INSERT INTO kelly (name, skills, rate, tools) VALUES ('Kelly', 'Windows', 25, 'Security Analyst');
INSERT INTO kelly (name, skills, rate, tools) VALUES ('Kelly', 'Scalling IP', 85, 'SOC');
SELECT occupation FROM kelly;

SELECT skills FROM kelly WHERE rate > 70 AND tools LIKE 'System Administrator' ORDER BY rate ASC;

SELECT COUNT(*) AS kelly_Cybersecurity_progress,
    CASE 
        WHEN rate < 20 THEN 'Beginner'
        WHEN rate >= 20 AND rate <= 80 THEN 'Intermediate'
        WHEN rate > 80 THEN 'Proficient'  
        ELSE 'Work in progress'
    END AS `Kellys Progress`
FROM kelly
GROUP BY rate;
