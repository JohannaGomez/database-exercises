USE codeup_test_db;


-- The name of all albums by Pink Floyd.
SELECT * from albums where artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre from albums where name = 'nevermind';

-- Which albums were released in the 1990s
SELECT * from albums where release_date = '1990';

-- Which albums had less than 20 million certified sales
select * from albums where sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums
-- with a genre of "Hard rock" or "Progressive rock"?
select * from albums where genre like '%rock%';


