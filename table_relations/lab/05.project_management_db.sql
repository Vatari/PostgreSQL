CREATE TABLE camp.mountains (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE camp.peaks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    mountain_id INTEGER NOT NULL,
    FOREIGN KEY (mountain_id) REFERENCES camp.mountains(id)
        ON DELETE CASCADE
);