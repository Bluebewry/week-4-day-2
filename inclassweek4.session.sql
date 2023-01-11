
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
    );


CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    ticket_price FLOAT,
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
    );

CREATE TABLE movies(
    movie_name VARCHAR(100),
    movie_id SERIAL
    );

CREATE TABLE concession(
    concession_id SERIAL,
    amount FLOAT
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name
)VALUES(
	1,
	'B',
	'R'
);

INSERT INTO tickets(
    ticket_id,
    ticket_price
) VALUES(
    1,
    50.00
);

INSERT INTO movies(
    movie_name,
    movie_id
) VALUES(
    'abc',
    1
);

INSERT INTO concession(
    concession_id,
    amount
)VALUES(
    1,
    100.00
);

SELECT *
FROM customer;