/*
This SQL script contains all the SQL commands that is written in Querying data.
*/

-- 1. Manipulating the output of certain columns. 
SELECT UPPER(country), total_population / 1000000 
FROM population;


-- 2. Renaming columns.
SELECT UPPER(country) AS country_name, 
    total_population / 1000000 AS total_population_millions
FROM population;


-- 3. Getting distinct values.
SELECT DISTINCT * 
FROM population;


-- 4. ORDER BY clause.
SELECT * 
FROM population
ORDER BY country DESC;


-- 5. ORDER BY clause with multiple columns.
SELECT continent, country, total_population
FROM population
ORDER BY continent ASC,
    total_population DESC;
	
	
-- 6. LIMIT clause. Question : Only the most populated country in the continent of the Americas.
SELECT country, total_population
FROM population
WHERE continent = 'Americas'
ORDER BY total_population DESC
LIMIT 1;


-- 7.1. Challenge - 1
SELECT DISTINCT database_name,
    number_of_votes AS number_of_responses
FROM popular_databases;


-- 7.2. Challenge - 2
SELECT database_name AS the_popular_database
FROM popular_databases
ORDER BY number_of_votes DESC
LIMIT 1;

/* NOTE : In challenge 2, the query is used to the name of the commodity with the highest measurable value. */