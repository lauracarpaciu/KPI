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

-- Please write a query that will return the final standings of this group: expected columns are TEAM_NAME, GOALS_FOR (number of goals scored by the team), GOALS_AGAINST (number of goals scored against the team);



SELECT  
    m.host_team,
    t.name ,
    SUM(m.host_goals) goals_for,
    SUM(m.guest_goals) goals_against,
    SUM(IIF(m.host_goals > m.guest_goals, 1, 0))*3 AS 'Win',
    SUM(IIF(m.host_goals = m.guest_goals, 1, 0))*1 AS 'Draw' 
--    ( COUNT(CASE WHEN m.host_goals > m.guest_goals THEN 1 END) * 3 +
--     COUNT(CASE WHEN m.host_goals = m.guest_goals THEN 1 END) * 1 ) AS points 

FROM 
    dbo.team t
    INNER JOIN dbo.match m 
        ON t.team_id = m.host_team
GROUP BY
    t.name,
    m.host_team
ORDER BY
   t.name;       





    


