SELECT count(*)
FROM bookings b
         JOIN customers c USING (customer_id)
WHERE c.last_name = 'Hahn';