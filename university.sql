
-- Schema for student, course, enrolled
-- Inspired on Lecture 2, https://15445.courses.cs.cmu.edu/fall2025/


DROP DATABASE IF EXISTS university;

CREATE DATABASE university;

USE university;

CREATE TABLE student (
  sid INT PRIMARY KEY,
  name VARCHAR(100),
  login VARCHAR(100),
  age INT,
  avgMarks DECIMAL(2,1)
);

CREATE TABLE course (
  cid VARCHAR(10) PRIMARY KEY,
  name VARCHAR(200)
);

CREATE TABLE enrolled (
  sid INT,
  cid VARCHAR(10),
  mark DECIMAL(2,1),
  PRIMARY KEY (sid, cid),
  FOREIGN KEY (sid) REFERENCES student(sid),
  FOREIGN KEY (cid) REFERENCES course(cid)
);

INSERT INTO student VALUES
(53666, 'Unai', 'lopez@ehu', 20, 6.5),
(53688, 'Bego', 'blanco@ehu', 30, 7.0),
(53655, 'Mikel', 'egana@ehu', 40, 3.5);

INSERT INTO course VALUES
('445', 'Database Administration'),
('721', 'Systems Administration'),
('826', 'Data Mining'),
('799', 'Enterprise Software');

INSERT INTO enrolled VALUES
(53666, '445', 6.6),
(53688, '721', 8.8),
(53688, '826', 7.1),
(53655, '445', 7.3),
(53666, '721', 5.2);
