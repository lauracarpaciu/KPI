-- CREATE TABLE #installs (
--     user_id DEC(38,0),
--     event_id DEC(10,0), 
--     server_time DATETIME
-- );
-- DROP TABLE #installs;


-- INSERT INTO #installs(user_id,event_id,server_time)
-- SELECT
--     user_id,
--     event_id,
--     server_time

-- FROM 
--     dbo.launch_resume;

-- CREATE TABLE #activity (
--     user_id DEC(38,0),
--     event_id DEC(10,0), 
--     server_time DATETIME
-- );

-- INSERT INTO #activity(user_id,event_id,server_time)
-- SELECT
--     user_id,
--     event_id,
--     server_time

-- FROM 
--     dbo.launch_resume;

-- CREATE PROCEDURE dbo.ActiveUsers(@day AS INT)
-- AS
-- BEGIN
-- SELECT DAY(server_time) AS DAY,
--        COUNT(user_id) AS DAU,
--        event_id
--        FROM #activity
--        WHERE event_id IS NOT NULL
--           AND
--           DAY(server_time) =@day  
--     GROUP BY DAY(server_time), event_id;
-- END;

-- CREATE PROCEDURE dbo.NEWUsers(@day AS INT)
--  AS
--  BEGIN
-- SELECT DAY(server_time) AS DAY,
--        COUNT(user_id) AS DAU,
--        event_id
--        FROM #install
--        WHERE event_id IS NULL AND
--           DAY(server_time) =@day
--     GROUP BY DAY(server_time), event_id;
--  END;

-- •	Daily Active Users (DAU): distinct users active each day;

-- SELECT DAY(server_time) AS DAY,
--        COUNT(user_id) AS DAU,
--        event_id
--     FROM #activity
--     WHERE event_id IS NOT NULL
--     GROUP BY DAY(server_time),event_id;


-- •	Monthly Active Users (MAU): distinct users active during the past 30 days;

-- SELECT MONTH(server_time) AS MONTH,
--        COUNT(user_id) AS DAU,
--        event_id
--     FROM #activity
--     WHERE event_id IS NOT NULL
--     GROUP BY MONTH(server_time),event_id;

-- •	New Daily Users: the number of people that installed the game each day;  

-- SELECT DAY(server_time) AS DAY,
--        COUNT(user_id) AS DAU,
--        event_id
--     FROM #install
--     WHERE event_id IS NULL
--     GROUP BY DAY(server_time),event_id;

