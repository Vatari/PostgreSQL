CREATE VIEW view_continents_countries_currencies_details AS
SELECT 
    CONCAT(cn.continent_name, ': ', cn.continent_code) AS continent_details,
    CONCAT(ct.country_name, ' - ', ct.capital, ' - ', ct.area_in_sq_km, ' - ', 'km2') AS country_information,
    CONCAT(cr.description, ' (', cr.currency_code, ')') AS currencies
FROM 
    continents cn
JOIN 
    countries ct ON cn.continent_code = ct.continent_code
JOIN 
    currencies cr ON ct.currency_code = cr.currency_code
ORDER BY 
    country_information ASC,
    currencies ASC;
