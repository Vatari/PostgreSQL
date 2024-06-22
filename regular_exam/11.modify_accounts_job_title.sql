CREATE OR REPLACE PROCEDURE udp_modify_account(address_street VARCHAR(30), address_town VARCHAR(30))
LANGUAGE SQL
AS $$
UPDATE accounts AS a
SET job_title = '(Remote) ' || a.job_title
WHERE EXISTS (
    SELECT 1
    FROM addresses AS ad
    WHERE ad.account_id = a.id
    AND ad.street = address_street
    AND ad.town = address_town
);
$$;