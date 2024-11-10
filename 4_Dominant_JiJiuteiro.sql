-- Determiner who has the highest win numbers over the years.

SELECT *
FROM
    adcc_stats;

SELECT
    winner_name,
    COUNT(winner_name) AS won_matches
FROM
    adcc_stats
GROUP BY
    winner_name
ORDER BY
    won_matches DESC;


WITH dominant_participants AS (SELECT
    YEAR,
    winner_name,
    COUNT(winner_name) AS won_matches,
    ROW_NUMBER() OVER(PARTITION BY YEAR ORDER BY COUNT(winner_name) DESC) AS rank_1
FROM
    adcc_stats
GROUP BY
    year,
    winner_name
)
SELECT
    YEAR,
    winner_name
    won_matches
FROM
    dominant_participants
WHERE
    rank_1 = 1
ORDER BY
    year DESC;