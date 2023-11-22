-- Insert data into the account table
INSERT INTO account (email, username, password, display_name, avatar)
SELECT
    CONCAT('user', id, '@example.com'),
    CONCAT('user', id),
    CONCAT('password', id),
    CONCAT('User', id),
    CONCAT('avatar', id, '.jpg')
FROM (SELECT (@start:=@start+1) AS id FROM information_schema.tables LIMIT 100) t;
SET @start:=0;

-- Insert data into the board table
INSERT INTO board (name, description, avatar)
SELECT
    CONCAT('Board', id),
    CONCAT('Description for Board', id),
    CONCAT('board', id, '.jpg')
FROM (SELECT (@start:=@start+1) AS id FROM information_schema.tables LIMIT 100) t;
SET @start:=0;

-- Insert data into the post table
INSERT INTO post (author, title, content, parent)
SELECT
    (SELECT id FROM account ORDER BY RAND() LIMIT 1),
    CONCAT('Post ', id),
    CONCAT('Content of Post ', id),
    CASE WHEN id % 2 = 0 THEN NULL ELSE (SELECT id FROM post ORDER BY RAND() LIMIT 1) END
FROM (SELECT (@start:=@start+1) AS id FROM information_schema.tables LIMIT 100) t;
SET @start:=0;

-- Insert data into the account_board table
INSERT INTO account_board (account, board, owner, editor)
SELECT
    (SELECT id FROM account ORDER BY RAND() LIMIT 1),
    (SELECT id FROM board ORDER BY RAND() LIMIT 1),
    RAND() > 0.5,
    RAND() > 0.5
FROM (SELECT (@start:=@start+1) AS id FROM information_schema.tables LIMIT 100) t;
SET @start:=0;

-- Insert data into the board_post table
INSERT INTO board_post (board, post)
SELECT
    (SELECT id FROM board ORDER BY RAND() LIMIT 1),
    (SELECT id FROM post ORDER BY RAND() LIMIT 1)
FROM (SELECT (@start:=@start+1) AS id FROM information_schema.tables LIMIT 100) t;
