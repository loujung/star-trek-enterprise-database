-- Find seasons without episodes
SELECT
    s.season_number
FROM seasons s
LEFT JOIN episodes e ON e.season_id = s.id
WHERE e.id IS NULL;
