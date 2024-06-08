SELECT hr.start_point, hr.end_point, c.id AS leader_id, CONCAT(c.first_name, ' ', c.last_name) AS leader_name
FROM routes hr
JOIN campers c ON hr.leader_id = c.id;