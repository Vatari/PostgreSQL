CREATE TABLE monasteries(
	"id" SERIAL PRIMARY KEY
	,monastery_name VARCHAR(255)
	,country_code CHAR(2)
);

INSERT INTO
	monasteries(monastery_name,country_code)
VALUES
	('Rila Monastery "St. Ivan of Rila"', 'BG'),
	('Bachkovo Monastery "Virgin Mary"', 'BG'),
	('Troyan Monastery "Holy Mother''s Assumption"', 'BG'),
	('Kopan Monastery', 'NP'),
	('Thrangu Tashi Yangtse Monastery', 'NP'),
	('Shechen Tennyi Dargyeling Monastery', 'NP'),
	('Benchen Monastery', 'NP'),
	('Southern Shaolin Monastery', 'CN'),
	('Dabei Monastery', 'CN'),
	('Wa Sau Toi', 'CN'),
	('Lhunshigyia Monastery', 'CN'),
	('Rakya Monastery', 'CN'),
	('Monasteries of Meteora', 'GR'),
	('The Holy Monastery of Stavronikita', 'GR'),
	('Taung Kalat Monastery', 'MM'),
	('Pa-Auk Forest Monastery', 'MM'),
	('Taktsang Palphug Monastery', 'BT'),
	('Sümela Monastery', 'TR');
	
ALTER TABLE countries
ADD COLUMN three_rivers BOOLEAN DEFAULT FALSE;

UPDATE countries
SET three_rivers = TRUE
WHERE country_code IN (SELECT c.country_code
	FROM countries AS c
	LEFT JOIN countries_rivers AS cr ON c.country_code = cr.country_code
	GROUP BY c.country_code
	HAVING COUNT(cr.river_id) >= 3);


SELECT
	m.monastery_name AS monastery
	,c.country_name AS country
FROM
	monasteries AS m
JOIN
	countries AS c
USING
	(country_code)
WHERE
	three_rivers = FALSE
ORDER BY
	monastery_name
;