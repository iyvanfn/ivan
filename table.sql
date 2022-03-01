DROP TABLE IF EXISTS student;
CREATE TABLE student
(
id integer PRIMARY KEY, 
first varchar(50),
last varchar(50),
sex char(1)
);
DROP TABLE IF EXISTS discipline;
CREATE TABLE discipline
(
id integer PRIMARY KEY,
descr varchar(50)
);
DROP TABLE IF EXISTS mark;
CREATE TABLE mark 
(
id integer PRIMARY KEY,
exam integer,
stud integer,
res integer
);
DROP TABLE IF EXISTS exam;
CREATE TABLE exam 
(
id integer PRIMARY KEY,
discip integer,
ts timestamp
);
DROP TABLE IF EXISTS exam_marks;
CREATE TABLE exam_marks
(
descr varchar,
res integer,
ts timestamp
);