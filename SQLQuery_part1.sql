-- CREATE TABLE dbo.launch_resume  (
--     user_id DECIMAL(38,0)  PRIMARY KEY IDENTITY,
--     game_id DECIMAL(10,0) NOT NULL,
--     event_id DECIMAL(10,0) NOT NULL,
--     -- client_time TIMESTAMP,
--     server_time TIMESTAMP,
--     version VARCHAR(10) NOT NULL,
--     country VARCHAR (100) NOT NULL,
--     time_spent DECIMAL(10,0) NOT NULL,
--     CONSTRAINT fk_platform FOREIGN KEY (game_id) 
--         REFERENCES dbo.platform(game_id)
     
     
-- );

-- CREATE TABLE dbo.platform  (
--     game_id DECIMAL(10,0) PRIMARY KEY IDENTITY,
--     game_name VARCHAR(10) NOT NULL,
--     platform_name VARCHAR(10) NOT NULL
-- );

-- CREATE TABLE #install(
--     user_id DECIMAL(38,0) ,
--     server_time TIMESTAMP DEFAULT,

-- );

-- CREATE TABLE #activity(
--     user_id DECIMAL(38,0) ,
--     server_time TIMESTAMP DEFAULT,

-- );

-- INSERT INTO  #install
-- SELECT
--     user_id,
--     server_time
-- FROM 
--     dbo.launch_resume;

-- DROP TABLE #install;
-- DROP TABLE #activity;

-- CREATE VIEW dbo.install
-- AS
-- SELECT
-- --     user_id,
--        event_id, 
-- --     server_time
-- FROM
--     dbo.launch_resume ; 

-- CREATE VIEW dbo.activity
-- AS
-- SELECT
-- --     user_id,
--        event_id, 
-- --     server_time
-- FROM
--     dbo.launch_resume ; 

-- CREATE PROCEDURE dbo.uspActiveUsers
-- AS
-- BEGIN
-- SELECT DAY(server_time) AS DAY,
--        COUNT(user_id) AS DAU
--     FROM dbo.activity
--     GROUP BY DAY(server_time);
-- END;

-- DROP VIEW IF EXISTS dbo.install;
-- DROP VIEW IF EXISTS dbo.activity;

-- CREATE VIEW dbo.activity
-- AS
-- SELECT
-- user_id,
-- event_id, 
-- server_time,
-- version ,
-- country,
-- platform_name

-- FROM
--     dbo.launch_resume l
-- INNER JOIN dbo.platform  p
--         ON l.game_id = p.game_id;

-- can easily extract users that were active during a CERTAIN DAY.

-- CREATE PROCEDURE dbo.uspActiveUsers(@day AS DATE)
-- AS
-- BEGIN
-- SELECT DAY(server_time) AS DAY,
--        COUNT(user_id) AS DAU,
--        event_id
--        FROM dbo.activity
--        WHERE event_id IS NOT NULL
        --   AND
        --   DAY(server_time) =@day  
--     GROUP BY DAY(server_time), event_id;
-- END;

-- where you can easily extract NEW daily users 

-- CREATE PROCEDURE dbo.uspNEWUsers(@day AS DATE)
--  AS
--  BEGIN
-- SELECT DAY(server_time) AS DAY,
--        COUNT(user_id) AS DAU,
--        event_id
--        FROM dbo.install
--        WHERE event_id IS NULL AND
--           DAY(server_time) =@day
--     GROUP BY DAY(server_time), event_id;
--  END;

https://ubiq.co/database-blog/get-new-users-per-day-mysql/

-- •	Daily Active Users (DAU): distinct users active each day;

-- SELECT DAY(server_time) AS DAY,
--        COUNT(user_id) AS DAU,
--        event_id
--     FROM dbo.activity
--     WHERE event_id IS NOT NULL
--     GROUP BY DAY(server_time),event_id;


-- •	Monthly Active Users (MAU): distinct users active during the past 30 days;

-- SELECT MONTH(server_time) AS MONTH,
--        COUNT(user_id) AS DAU,
--        event_id
--     FROM dbo.activity
--     WHERE event_id IS NOT NULL
--     GROUP BY MONTH(server_time),event_id;

-- •	New Daily Users: the number of people that installed the game each day;  

-- SELECT DAY(server_time) AS DAY,
--        COUNT(user_id) AS DAU,
--        event_id
--     FROM dbo.install
--     WHERE event_id IS NULL
--     GROUP BY DAY(server_time),event_id;
