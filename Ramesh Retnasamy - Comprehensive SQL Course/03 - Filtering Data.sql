/*
This SQL script contains all the SQL commands that is written in Filtering Data Section.
*/


-- 1. Filtering data using mathematical operators (>, <, =, >=, <=, <>, != etc).
SELECT country, total_population 
FROM population
WHERE total_population >= 277534123;


-- 2. BETWEEN operator.
SELECT country, total_population
FROM population
WHERE total_population / 1000000 
BETWEEN 100 AND 200; 


-- 3. LIKE operator and wildcard search character '%'.
SELECT *
FROM population
WHERE continent LIKE 'A%a';


-- 4. LIKE operator and wildcard search character '_'.
SELECT * 
FROM population
WHERE continent LIKE 'A__a';

SELECT * 
FROM population
WHERE continent LIKE 'A%a'
AND LENGTH(continent) = 4;


-- 5. LIKE operator and wildcard search character '_' and '%'.
SELECT *
FROM population
WHERE continent LIKE '%r___';


-- 6. IN operator.
SELECT *
FROM population
WHERE continent IN ('Europe','Africa');


-- 7. AND operator.
SELECT *
FROM population
WHERE continent IN ('Europe','Americas')
AND total_population / 1000000 >= 100
AND total_population / 1000000 <= 200;

SELECT *
FROM population
WHERE continent IN ('Europe','Americas')
AND total_population / 1000000 
BETWEEN 100 AND 200;


-- 8. OR operator.
SELECT *
FROM population
WHERE total_population >= 1000000000
OR total_population <= 200000000;


-- 9. AND and OR operators.
SELECT *
FROM population
WHERE continent = 'Americas'
AND (total_population / 1000000 > 300 
OR total_population / 1000000 < 200);


-- 10. NOT IN operator.
SELECT *
FROM population
WHERE continent NOT IN ('Asia','Europe');


-- 11. Filtering data for UPDATE, and DELETE statements.
UPDATE population
SET total_population = 220000000
WHERE country = 'Brazil';

DELETE FROM population
WHERE total_population / 1000000 < 200;


-- 12.1. Challenge - 1
SELECT *
FROM popular_databases
WHERE (database_name LIKE 'SQL%' OR database_name LIKE '%SQL')
AND number_of_votes < 32000;


-- 12.2. Challenge - 2
SELECT *
FROM popular_databases
WHERE database_name NOT IN ('MySQL','Microsoft SQL Server')
AND number_of_votes BETWEEN 20000 AND 30000;