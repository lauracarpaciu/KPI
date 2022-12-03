-- CREATE TABLE dbo.team (
--     team_id INT PRIMARY KEY IDENTITY (1, 1),
--     name VARCHAR (50) NOT NULL
    
-- );

-- INSERT  INTO dbo.team (
--   name 
--    )
--     VALUES('FC Barcelona'),
--  ('Paris Saint-Germain');

-- CREATE TABLE dbo.match (
-- match_id INT PRIMARY KEY IDENTITY (1, 1),
-- host_team  INT NOT NULL,
-- guest_team  INT NOT NULL,
-- host_goals  INT NOT NULL,
-- guest_goals  INT NOT NULL,
    
-- );


-- INSERT INTO dbo.match (
-- host_team  ,
-- guest_team,  
-- host_goals , 
-- guest_goals  
--     )
-- VALUES
--     (
--         1 ,2,	3,	1
--     ),
--     (
--         1	,3,	3,	1
--     ),
--     (
--        1,	4,	1,	0
--     );



-- SELECT  
--     m.host_team host_team,
--     t.name name
--     -- SUM(m.host_goals) goals_for,
--     -- SUM(m.guest_goals) goals_against

-- FROM 
--     dbo.team t
--     INNER JOIN dbo.match m 
--         ON t.team_id = m.host_team
-- GROUP BY
--     t.name
-- ORDER BY
--    t.name;       

-- SELECT
--     name,
--     SUM (host_goals) AS goals_for,
--     SUM (guest_goals) AS goals_againts,
--     dbo.points(@host_goals ,@guest_goals ) As points
 
-- FROM
--     dbo.team t
-- INNER JOIN dbo.match m ON t.team_id = m.host_team
-- -- WHERE
-- --     name = 'FC Barcelona'
-- GROUP BY
--     name
-- ORDER BY
--     name;



-- CREATE FUNCTION dbo.points(
--     @host_goals INT,
--     @guest_goals INT,

-- )
-- RETURNS INT
-- AS 
-- BEGIN

-- DECLARE @index INT = 0;

--   IF    (@host_goals > @guest_goals)
--     BEGIN
--         RETURN @index + 3 ;
--     END

-- IF  (@host_goals = @guest_goals)
--     BEGIN
--         RETURN @index + 1 ;
--     END    
--     ELSE
--     BEGIN
--          RETURN ;
--     END
-- END;



    


