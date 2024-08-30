/*
This SQL script contains all the SQL commands that is written in Simple SQL Functions Section.
*/


-- 1. CONCAT operator, UPPER and LOWER functions. 
SELECT 'Population of ' || UPPER(country) || ' is: ' || total_population AS result
FROM population;


-- 2. TRIM, and REPLACE functions.
SELECT REPLACE(country, 'Kingdom', 'States') AS country,
    TRIM(continent) AS continent,
    total_population
FROM population;


-- 3. SUBSTR, INSTR(position of substring in string), LENGTH functions.
SELECT country,
    SUBSTR(country, 1, 3) AS country_name_start,
    INSTR(country, ' ') AS start_pos_space,
    LENGTH(country) AS country_name_length,
    total_population
FROM population;


-- 4. Math functions : ABS, CEIL, FLOOR, POWER, SQRT.
SELECT ABS(col1) AS col1_abs,
    CEIL(col2) AS col2_ceil,
    FLOOR(col2) AS col2_floor,
    POWER(col3, 2) AS col3_power,
    SQRT(col3) AS col3_sqrt
FROM my_table;


-- 5. Nested function calls : Basically a function call within a function. 
SELECT SUBSTR(country_continent, 1, INSTR(country_continent, '-') - 1) AS country,
    SUBSTR(country_continent, INSTR(country_continent, '-') + 1, LENGTH(country_continent)) AS continent,
    total_population
FROM population;


-- 6.1. Challenge - 1
SELECT SUBSTR(name, 1, INSTR(name, ' ') - 1) AS first_name,
    SUBSTR(name, INSTR(name, ' ') + 1, LENGTH(name)) AS surname,
    email,
    SUBSTR(email, INSTR(email, '@') + 1, LENGTH(email)) AS domain_name
FROM contact_details;


-- 6.2. Challenge - 2
SELECT TRIM(first_name) || ' ' || TRIM(surname) AS full_name,
    TRIM(LOWER(first_name)) || '.' || TRIM(LOWER(surname)) || '@' || TRIM(LOWER(company_name)) || '.com' AS email_address
FROM contact_details;

