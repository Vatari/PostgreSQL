SELECT b.apartment_id,
       b.booked_for,
       c.first_name,
       c.country
FROM customers c
         JOIN bookings b USING (customer_id)
WHERE c.job_type = 'Lead';