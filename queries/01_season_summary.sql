-- Season summary: total episodes per season
SELECT
    s.season_number,
    COUNT(e.id) AS total_episodes,
    MIN(e.episode_number) AS first_episode,
    MAX(e.episode_number) AS last_episode
FROM seasons s
LEFT JOIN episodes e ON e.season_id = s.id
GROUP BY s.season_number
ORDER BY s.season_number;
