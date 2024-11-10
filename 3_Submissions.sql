-- Check submissions during years.
SELECT *
FROM
    adcc_stats;
SELECT
    year,
    COUNT(victory_method) AS submissions_count
FROM 
    adcc_stats
WHERE
    victory_method = 'SUBMISSION'
GROUP BY
    year
ORDER BY
    year DESC;
-- Submission type compare every year
SELECT 
    year,
    submission,
    COUNT(submission) AS submission_count
FROM 
    adcc_stats
WHERE 
    submission IS NOT NULL
GROUP BY 
    year, submission
ORDER BY 
    year, submission_count DESC;

-- Dominant Technique over the years.

WITH ranked_submissions AS (
    SELECT 
        year,
        submission,
        COUNT(submission) AS submission_count,
        ROW_NUMBER() OVER(PARTITION BY year ORDER BY COUNT(submission) DESC) AS rank
    FROM 
        adcc_stats
    WHERE 
        submission IS NOT NULL
    GROUP BY 
        year, submission
)
SELECT 
    year,
    submission,
    submission_count
FROM 
    ranked_submissions
WHERE 
    rank = 1
ORDER BY 
    year;