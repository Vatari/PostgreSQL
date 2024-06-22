CREATE OR REPLACE FUNCTION udf_accounts_photos_count(account_username VARCHAR(30))
RETURNS INTEGER AS $$
DECLARE
    count INTEGER;
BEGIN
    SELECT COUNT(ap.photo_id) INTO count 
    FROM accounts a 
    JOIN accounts_photos ap ON a.id = ap.account_id 
    WHERE a.username = account_username;
    RETURN count;
END;
$$ LANGUAGE plpgsql;