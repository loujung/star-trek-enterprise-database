# Star Trek: Enterprise — Relational Database Project

This project consists of the creation of a relational database using SQLite and SQL
to store and query episode data from the TV series Star Trek: Enterprise.

## 🎯 Project Goals
- Practice relational database modeling
- Apply foreign key constraints
- Prevent duplicate data using UNIQUE constraints
- Write SQL queries using JOIN, GROUP BY and aggregations
- Simulate real-world QA and data validation scenarios

## 🛠 Technologies Used
- SQLite
- DB Browser for SQLite
- SQL (DDL & DML)

## 🗂 Database Structure

### seasons
- id (PRIMARY KEY)
- season_number
- year_start

### episodes
- id (PRIMARY KEY)
- season_id (FOREIGN KEY → seasons.id)
- episode_number
- title
- air_date
- summary
- UNIQUE (season_id, episode_number)

## 🔐 Data Integrity
- Foreign key constraints ensure episodes belong to a valid season
- UNIQUE constraint prevents duplicate episode numbers within the same season

## ⭐ Main Validation Query

```sql
SELECT
    s.season_number,
    COUNT(e.id) AS total_episodes,
    MIN(e.episode_number) AS first_episode,
    MAX(e.episode_number) AS last_episode
FROM seasons s
LEFT JOIN episodes e ON e.season_id = s.id
GROUP BY s.season_number
ORDER BY s.season_number;
