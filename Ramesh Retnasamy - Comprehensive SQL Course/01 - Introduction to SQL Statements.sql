/*
This SQL script contains all the SQL commands that is written in Introduction to SQL Statements.
*/

-- 1. Create table statement.
CREATE TABLE IF NOT EXISTS population
(
    country VARCHAR(50),
    total_population INT
);


-- 2. Inserting a single record. 
INSERT INTO population (country, total_population)
VALUES ('India', 1428627663);


-- 3. Inserting multiple records.
INSERT INTO population(country, total_population)
VALUES ('China', 1425671352),
    ('United States', 339996564);
	
	
-- 4. Selecting a few columns / selected dataset.
SELECT country FROM population;


-- 5. Selecting all columns.
SELECT * FROM population;


-- 6. Filtering data : WHERE condition.
SELECT total_population 
FROM population 
WHERE country = 'China'; 


-- 7. Update statement.
UPDATE population
SET total_population = 341234567
WHERE country = 'United States';


-- 8. Delete statement.
DELETE FROM population
WHERE country = 'Russia';


-- 9. Drop statement.
DROP TABLE IF EXISTS population; 


-- 10.1. Challenge - 1
CREATE TABLE IF NOT EXISTS popular_databases
(
    database_name VARCHAR(50),
    number_of_votes INT
);

INSERT INTO popular_databases
VALUES ('PostgreSQL', 34909),
    ('MySQL', 31489),
    ('SQLite', 23678),
    ('MongoDB', 19556),
    ('Microsoft SQL Server', 19506);
	
SELECT * FROM popular_databases;


-- 10.2. Challenge - 2
UPDATE popular_databases
SET number_of_votes = 32000
WHERE database_name = 'MySQL';

DELETE FROM popular_databases
WHERE database_name = 'MongoDB';

SELECT * FROM popular_databases;