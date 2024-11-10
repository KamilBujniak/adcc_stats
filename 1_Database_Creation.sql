--Create adcc_stats table

CREATE TABLE adcc_stats
(
    victory_method TEXT ,
    submission TEXT,
    winner_points FLOAT,
    loser_points TEXT,
    female BOOLEAN,
    year INT,
    absolute BOOLEAN,
    weight_class FLOAT,
    importance FLOAT,
    total_points FLOAT,
    submission_target TEXT,
    winner_name TEXT,
    loser_name TEXT
);


-- Setting ownership over the table
ALTER TABLE adcc_stats OWNER to postgres;

-- Fill table with CSV table values:

COPY adcc_stats
FROM 'C:\adcc_stats\adcc_matches.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');