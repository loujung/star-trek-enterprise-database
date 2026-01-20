-- Find duplicate episode numbers within the same season
SELECT
    season_id,
    episode_number,
    COUNT(*) AS occurrences
FROM episodes
GROUP BY season_id, episode_number
HAVING COUNT(*) > 1;
