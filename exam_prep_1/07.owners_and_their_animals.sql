SELECT o.name,
       count(*) AS count_of_animals
FROM owners o
         JOIN animals a ON o.id = a.owner_id
GROUP BY o.name
ORDER BY count_of_animals DESC, o.name
LIMIT 5;