-- Create database mn
CREATE DATABASE IF NOT EXISTS mn;

-- Switch to the mn database
USE mn;

-- Create Table_A
CREATE TABLE IF NOT EXISTS Table_A (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create Table_B
CREATE TABLE IF NOT EXISTS Table_B (
    id INT PRIMARY KEY,
    description VARCHAR(50)
);

-- Insert data into Table_A
INSERT INTO Table_A (id, name) VALUES
    (1, 'John'),
    (2, 'Alice'),
    (3, 'Bob');

-- Insert data into Table_B
INSERT INTO Table_B (id, description) VALUES
    (1, 'Engineer'),
    (2, 'Doctor'),
    (4, 'Artist');

-- Perform FULL JOIN on Table_A and Table_B
SELECT *
FROM Table_A A
LEFT JOIN Table_B B ON A.id = B.id

UNION

SELECT *
FROM Table_A A
RIGHT JOIN Table_B B ON A.id = B.id;

+----+------+----+-------------+
| id | name | id | description |
+----+------+----+-------------+
|  1 | John |  1 | Engineer    |
|  2 | Alice|  2 | Doctor      |
|  3 | Bob  | NULL | NULL      |
|NULL| NULL |  4 | Artist     |
+----+------+----+-------------+
