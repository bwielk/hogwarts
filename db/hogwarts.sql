DROP TABLE IF EXISTS students;

CREATE TABLE students (
id serial8 primary key,
first_name VARCHAR(255),
second_name VARCHAR(255),
house VARCHAR(255),
age INT8
);
