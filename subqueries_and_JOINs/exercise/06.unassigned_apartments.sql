SELECT b.booking_id,
       b.apartment_id,
       c.companion_full_name
FROM bookings b
         JOIN customers c USING (customer_id)
WHERE apartment_id IS NULL;
