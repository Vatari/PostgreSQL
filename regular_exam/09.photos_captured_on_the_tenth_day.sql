SELECT 
    CASE 
        WHEN LENGTH(SUBSTRING(description FROM 1 FOR 10)) <= 10 THEN CONCAT(SUBSTRING(description FROM 1 FOR 10), '...')
        ELSE CONCAT(SUBSTRING(description FROM 1 FOR 10), '...')
    END AS summary,
    TO_CHAR(capture_date, 'DD.MM HH24:MI') AS date
FROM photos
WHERE EXTRACT(DAY FROM capture_date) = 10 ORDER BY capture_date DESC;