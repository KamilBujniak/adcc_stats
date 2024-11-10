
--Overall Competititors from year to year
SELECT *
FROM
    adcc_stats;

SELECT 
    COUNT(female) AS competitiors_over_the_years,
    YEAR
FROM
    adcc_stats
GROUP BY
    year
    
ORDER BY
    year DESC;

--Female Competetitors from year to year
SELECT *
FROM
    adcc_stats;

SELECT 
    COUNT(female) AS how_many_female,
    YEAR
FROM
    adcc_stats
WHERE
    female IS TRUE
GROUP BY
    year
    
ORDER BY
    year DESC;

--Male Competetitors from year to year

SELECT 
    COUNT(female) AS how_many_male,
    YEAR
FROM
    adcc_stats
WHERE
    female IS FALSE
GROUP BY
    year
    
ORDER BY
    year DESC;

/*
