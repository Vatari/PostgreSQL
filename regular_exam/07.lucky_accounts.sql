SELECT 
    CONCAT(a.id, ' ', a.username) AS id_username,
    a.email
FROM 
    accounts a
JOIN 
    accounts_photos ap ON a.id = ap.account_id
JOIN 
    photos p ON ap.photo_id = p.id AND a.id = p.id
ORDER BY 
    a.id ASC;