SELECT a.name,
       a.country,
       b.booked_at::date
FROM apartments a
         LEFT JOIN bookings b USING (booking_id)
LIMIT 10;
