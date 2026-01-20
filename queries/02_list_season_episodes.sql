-- List all episodes from a specific season
SELECT
    s.season_number,
    e.episode_number,
    e.title,
    e.air_date
FROM episodes e
JOIN seasons s ON e.season_id = s.id
WHERE s.season_number = 1
ORDER BY e.episode_number;
