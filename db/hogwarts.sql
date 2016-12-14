DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses (
id serial8 primary key,
name VARCHAR(255),
url VARCHAR (255)
);

CREATE TABLE students (
id serial8 primary key,
first_name VARCHAR(255),
second_name VARCHAR(255),
age INT8,
house_id INT8 references houses(id)
);
