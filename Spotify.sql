CREATE DATABASE spotify_db;

USE spotify_db;

CREATE TABLE spotify (
    song_name VARCHAR(255),
    artists VARCHAR(255),
    released_date DATE,
    popularity INT,
    duration INT,
    album_type VARCHAR(100),
    cover_image TEXT
);

select * from spotify_data;



-- 🔰 BASIC LEVEL QUESTIONS

-- Show only song name and artist name.
SELECT `Song Name`, `Artists`
FROM spotify_data;



-- Find all songs with popularity greater than 80.
SELECT `Song Name`, `Artists`, `Popularity`
FROM spotify_data
WHERE `Popularity` > 50;



-- List songs that belong to the album type “single”.
SELECT `Song Name`, `Album Type`
FROM spotify_data
WHERE `Album Type` = 'single';



-- Display songs released after 2020.
SELECT `Song Name`, `Released Dates`
FROM spotify_data
WHERE `Released Dates` > '2020-12-31';



-- Count total number of songs in the dataset.
SELECT COUNT(*) AS total_songs
FROM spotify_data;



-- Show songs ordered by popularity in ascending order.
SELECT `Song Name`, `Popularity`
FROM spotify_data
ORDER BY `Popularity` ASC;




-- ⚙️ INTERMEDIATE LEVEL QUESTIONS

-- Find the top 10 most popular songs.
SELECT `Song Name`, `Popularity`
FROM spotify_data
ORDER BY `Popularity` DESC
LIMIT 10;



-- Display songs released in the year 2023.
SELECT `Song Name`, `Released Dates`
FROM spotify_data
WHERE YEAR(`Released Dates`) = 2020;



-- Find all songs by a specific artist (e.g., Arijit Singh).
SELECT `Song Name`, `Artists`
FROM spotify_data
WHERE `Artists` LIKE '%B Praak%';



-- Sort songs by release date (latest first).
SELECT `Song Name`, `Released Dates`
FROM spotify_data
ORDER BY `Released Dates` DESC;



-- Find the total number of songs released each year.
SELECT YEAR(`Released Dates`) AS year, COUNT(*) AS total_songs
FROM spotify_data
GROUP BY YEAR(`Released Dates`)
ORDER BY year;



-- Display songs where the album type is not “single”.
SELECT `Song Name`, `Album Type`
FROM spotify_data
WHERE `Album Type` <> 'single';



-- Display songs with duration greater than 300 seconds.
SELECT `Song Name`, `Duration`
FROM spotify_data
WHERE `Duration` > 300;



-- Find the average popularity of all songs.
SELECT AVG(`Popularity`) AS average_popularity
FROM spotify_data;



-- Find the maximum and minimum duration of songs.
SELECT 
    MAX(`Duration`) AS max_duration,
    MIN(`Duration`) AS min_duration
FROM spotify_data;




-- 🚀 ADVANCED LEVEL QUESTIONS

-- Find the most popular song in the dataset.
SELECT `Song Name`, `Popularity`
FROM spotify_data
ORDER BY `Popularity` DESC
LIMIT 1;



-- Find the least popular song.
SELECT `Song Name`, `Popularity`
FROM spotify_data
ORDER BY `Popularity` ASC
LIMIT 1;



-- Find album types having more than 5 songs.
SELECT `Album Type`, COUNT(*) AS total_songs
FROM spotify_data
GROUP BY `Album Type`
HAVING COUNT(*) > 5;



-- Find the longest song for each album type.
SELECT `Album Type`, MAX(`Duration`) AS longest_song
FROM spotify_data
GROUP BY `Album Type`;



-- Find songs released between 2018 and 2022.
SELECT `Song Name`, `Released Dates`
FROM spotify_data
WHERE `Released Dates` BETWEEN '2018-01-01' AND '2022-12-31';



-- Rank songs based on popularity (highest to lowest).
SELECT `Song Name`, `Popularity`,
RANK() OVER (ORDER BY `Popularity` DESC) AS popularity_rank
FROM spotify_data;



-- Find artists who have released more than 3 songs.
SELECT `Artists`, COUNT(*) AS total_songs
FROM spotify_data
GROUP BY `Artists`
HAVING COUNT(*) > 3;



-- Find the top 3 artists based on total number of songs.
SELECT `Artists`, COUNT(*) AS total_songs
FROM spotify_data
GROUP BY `Artists`
ORDER BY total_songs DESC
LIMIT 3;

