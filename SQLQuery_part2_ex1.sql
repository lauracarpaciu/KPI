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

-- list of all the countries 

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
-- - FROM
--dbo.borders
--WHERE
-- country_code != neighbour_code
           
-- )
--)
-- ORDER BY
--     area;

-- countries from ‘South America’ 
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
-- ORDER  BY name; 




