-- CREATE TABLE dbo.folder(
--     id_folder  INT NOT NULL,
--     parent_id  INT NOT NULL,
--     name  INT NOT NULL
-- )

-- INSERT INTO  dbo.folder(
--     id_folder  ,
--     parent_id  ,
--     name 
-- )
-- VALUES
-- (
--     1,	0,0
--     ),
-- (
--     2,	1,0
--     ),
-- (
--     3,	4,0
--     ),
-- (
--     4,	0,0

-- Please write a query that will sort the data so that we will have the files right under the folder that contains them (the parent).

SELECT id_folder, parent_id, name FROM dbo.folder
ORDER BY (
    CASE
WHEN parent_id = 0 THEN id_folder
ELSE parent_id
END);



