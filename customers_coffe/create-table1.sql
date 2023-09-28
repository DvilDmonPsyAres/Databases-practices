DROP TABLE customers;
DROP TABLE coffee_orders;

CREATE TABLE customers(
  id INTEGER PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  phone NUMERIC(10,0) UNIQUE,
  email VARCHAR(255) UNIQUE,
  points INTEGER NOT NULL CHECK (points >= 5),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE coffee_orders (
  id SERIAL PRIMARY KEY,
  is_redeemed BOOLEAN DEFAULT FALSE,
  ordered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);