-- Active: 1788446379324@@127.0.0.1@3306@security_audit_logs
-- 1. Create Security Audit Table
CREATE TABLE security_audit_logs (   
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_timestamp DATETIME NOT NULL,
    username VARCHAR(50) NOT NULL,
    source_ip VARCHAR(45) NOT NULL,
    event_type VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    bytes_transferred INT DEFAULT 0,
    risk_score INT NOT NULL
);

-- 2. Insert Simulated Security Log Records 
INSERT INTO security_audit_logs (event_timestamp, username, source_ip, event_type, status, bytes_transferred, risk_score) VALUES
('2026-08-31 08:15:22', 'm.ascot', '192.168.1.105', 'LOGIN_ATTEMPT', 'SUCCESS', 1200, 1),
('2026-08-31 08:20:10', 'unknown_user', '185.220.101.5', 'LOGIN_ATTEMPT', 'FAILURE', 0, 7),
('2026-08-31 08:20:12', 'unknown_user', '185.220.101.5', 'LOGIN_ATTEMPT', 'FAILURE', 0, 7),
('2026-08-31 08:20:15', 'unknown_user', '185.220.101.5', 'LOGIN_ATTEMPT', 'FAILURE', 0, 7),
('2026-08-31 08:20:18', 'unknown_user', '185.220.101.5', 'LOGIN_ATTEMPT', 'FAILURE', 0, 7),
('2026-08-31 08:20:22', 'unknown_user', '185.220.101.5', 'LOGIN_ATTEMPT', 'FAILURE', 0, 8),
('2026-08-31 08:20:25', 'unknown_user', '185.220.101.5', 'LOGIN_ATTEMPT', 'FAILURE', 0, 9),
('2026-08-31 08:35:00', 'a.smith', '10.0.4.12', 'PRIVILEGE_ESCALATION', 'SUCCESS', 450, 6),
('2026-08-31 08:43:06', 'm.ascot', '192.168.1.105', 'DNS_QUERY', 'SUCCESS', 68400000, 10),
('2026-08-31 08:50:11', 'j.doe', '192.168.1.110', 'FILE_DOWNLOAD', 'SUCCESS', 520000, 2);

-- 3. Security Queries for Triage

-- Query A: Detect Brute Force Login Patterns (GROUP BY & HAVING)
SELECT source_ip, username, COUNT(*) AS failed_attempts
FROM security_audit_logs
WHERE event_type = 'LOGIN_ATTEMPT' AND status = 'FAILURE'
GROUP BY source_ip, username
HAVING failed_attempts >= 5;

-- Query B: Identify Potential Data Exfiltration (> 50 MB)
SELECT event_id, event_timestamp, username, source_ip, bytes_transferred
FROM security_audit_logs
WHERE status = 'SUCCESS' AND bytes_transferred > 52428800;

-- Query C: Automated Severity Categorization (CASE Statement)
SELECT event_id, username, source_ip, event_type, risk_score,
  CASE 
    WHEN risk_score >= 9 THEN 'CRITICAL - Immediate Triage'
    WHEN risk_score BETWEEN 5 AND 7 THEN 'WARNING - Review Needed'
    ELSE 'LOW - Informational'
  END AS triage_category
FROM security_audit_logs
ORDER BY risk_score DESC;
