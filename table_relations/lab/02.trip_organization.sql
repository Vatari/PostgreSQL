SELECT d.id AS driver_id, v.vehicle_type AS vehicle_type, CONCAT(d.first_name, ' ', d.last_name) AS driver_name
FROM campers d
JOIN Vehicles v ON d.id = v.driver_id;