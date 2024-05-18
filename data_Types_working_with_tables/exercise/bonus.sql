CREATE TYPE address AS (
    street VARCHAR(50),
    city VARCHAR(50),
    postalCode CHAR(4)
);

CREATE TABLE IF NOT EXISTS customers (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(150),
    customer_address address
);

INSERT INTO customers (customer_name, customer_address)
VALUES
 ('Petar', ('Ovcho pole', 'Varna', '9000')),
 ('Nadichka', ('Ovcho pole', 'Varna', '9000'));


 SELECT * FROM customers

  SELECT (customer_address).street FROM customers --(extract only streets)