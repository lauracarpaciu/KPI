-- CREATE TABLE dbo.countries (
--     name VARCHAR(100),
--     alpha3 VARCHAR(3),
--     region VARCHAR(100),
--     subregion VARCHAR(100),
--     capital VARCHAR(100),
--     population NUMERIC(38,0),
--     area NUMERIC(38,0)
   
-- );

-- CREATE TABLE dbo.borders(
--   country_code VARCHAR(3),
--   neighbour_code VARCHAR(3)
   
-- );

-- INSERT INTO dbo.borders(
--   country_code ,
--   neighbour_code 
   
-- )VALUES('ESP ','FRA'),('FRA ','ESP');

-- Please write a query that will return a list of all the countries that have an area greater than the combined area of all their neighbours.

-- SELECT DISTINCT
--     name as Country_name,
--     area,
--     country_code,
--     neighbour_code
-- FROM
--     dbo.countries c
-- INNER JOIN dbo.borders b ON c.alpha3 = b.country_code
-- WHERE
--     area > (
-- SELECT
-- SUM (area)
-- FROM
-- dbo.countries
-- WHERE
-- neighbour_code IN (
-- SELECT
-- neighbour_code
-- FROM
-- dbo.borders
-- WHERE
-- country_code == neighbour_code
           
-- )
-- )
-- ORDER BY
--     area;



-- Please write a query that will return all the countries from ‘South America’ region and the percentage their population represents out of the total population of the region (order from highest to lowest). 
-- SELECT 
-- name,
-- region,
-- population,
-- SUM(population) AS total,
-- population/SUM(population) * 100 AS 'percentage'
-- FROM dbo.countries
-- WHERE
--     region = 'South America'
-- GROUP BY  
-- name , 
-- region,
-- population
-- ORDER  BY name DESC; 




