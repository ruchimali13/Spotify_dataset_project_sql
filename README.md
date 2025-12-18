# Spotify_dataset_project_sql

## Overview

This project focuses on analyzing Spotify song data using SQL.
The dataset includes song metadata such as song name, artists, release date, popularity, duration, album type, and cover images.

The objective of this project is to practice SQL querying skills from basic to advanced level, covering filtering, aggregation, sorting, grouping, and window functions.

-- Database & Table Setup

-- Create Database
CREATE DATABASE spotify_db;
USE spotify_db;

-- create table
CREATE TABLE spotify (
    song_name VARCHAR(255),
    artists VARCHAR(255),
    released_date DATE,
    popularity INT,
    duration INT,
    album_type VARCHAR(100),
    cover_image TEXT
);

## Project Steps

### 1. Data Exploration

Before diving into SQL, it’s important to understand the dataset thoroughly. The dataset contains attributes such as:

Song name: The name of the song.
Artist: The performer of the track.
Released date: Official release date
Popularity: Popularity score (0–100)
Duration: Song duration in seconds
Album_type: The type of album (e.g., single or album).
Cover image: URL or path to album cover image.

### 23 Practice Question :

**Easy Queries**
Display song name and artist name
Find songs with popularity greater than a specific value
List songs belonging to album type single
Retrieve songs released after a certain year
Count total number of songs
Sort songs by popularity in ascending order

**Medium Queries**
- Retrieve the top 10 most popular songs
- Filter songs released in a specific year
- Find all songs by a particular artist
- Sort songs by release date (latest first)
- Count total songs released each year
- Display songs not classified as singles
- Filter songs based on duration
- Calculate the average popularity of all songs
- Find maximum and minimum song duration

**Advanced Queries**
- Identify the most and least popular songs
- Find album types with more than 5 songs
- Determine the longest song for each album type
- Retrieve songs released within a specific date range
- Rank songs based on popularity using window functions
- Identify artists with more than 3 released songs
- Find the top 3 artists based on total number of songs

### SQL Concepts Used

- SELECT & WHERE
- ORDER BY
- GROUP BY & HAVING
- Aggregate Functions (COUNT, AVG, MAX, MIN)
- Date Functions
- Window Functions (RANK() OVER)
- Filtering with LIKE and BETWEEN

### Tools & Technologies

- Database: MySQL
- Language: SQL
- Tools: MySQL Workbench
- Dataset: Spotify Songs Dataset


