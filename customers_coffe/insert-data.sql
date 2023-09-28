-- Your code here
-- 1 A new customer joined the loyalty program with the following customer information:

-- NAME	PHONE
-- Rachel	111-111-1111

INSERT INTO customers (name, phone, points) VALUES ('Rachel', 1111111111, 5);
-- 2 Rachel purchases a coffee. (When adding a coffee order, you must first check the current points of the customer, update the customer's points, then add the coffee order.)

SELECT points FROM customers WHERE name = 'Rachel';
UPDATE customers SET points = 6 WHERE name = 'Rachel';
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);

-- 3 Two new customers joined the loyalty program with the following customer information:
-- NAME	EMAIL	PHONE
-- Monica	monica@friends.show	222-222-2222
-- Phoebe	phoebe@friends.show	333-333-3333

INSERT INTO customers (name, email, phone) VALUES ('Monica', 'monica@friends.show', 2222222222);
INSERT INTO customers (name, email, phone) VALUES ('Phoebe', 'phoebe@friends.show', 3333333333);

-- 4 Phoebe purchases three coffees.

SELECT points FROM customers WHERE name = 'Phoebe';
UPDATE customers SET points = 8 WHERE name = 'Phoebe';
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);

--5 Rachel and Monica each purchase four coffees.

SELECT points FROM customers WHERE name = 'Rachel';
UPDATE customers SET points = 10 WHERE name = 'Rachel';
SELECT points FROM customers WHERE name = 'Monica';
UPDATE customers SET points = 9 WHERE name = 'Monica';
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);

--6 Monica wants to know her new point total.
SELECT points FROM customers WHERE name = 'Monica';

--7 Rachel wants to check her total points. Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee.
SELECT points FROM customers WHERE name = 'Rachel';
UPDATE customers SET points = 0 WHERE name = 'Rachel';
INSERT INTO coffee_orders ( is_redeemed) VALUES (1);

--8 Three new customers joined the loyalty program with the following customer information:

-- NAME	EMAIL
-- Joey	joey@friends.show
-- Chandler	chandler@friends.show
-- Ross	ross@friends.show
INSERT INTO customers (name, email) VALUES ("Joey", "joey@friends.show");
INSERT INTO customers (name, email) VALUES ("Chandler", "chandler@friends.show");
INSERT INTO customers (name, email) VALUES ("Ross", "ross@friends.show");

--9 Ross purchases six coffees.
SELECT points FROM customers WHERE name = 'Ross';
UPDATE customers SET points = 11 WHERE name = 'Ross';
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);

--10 Monica purchases three coffees.
SELECT points FROM customers WHERE name  = 'Monica';
UPDATE customers SET points = 12 WHERE name  = 'Monica';
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);

--11Phoebe wants to check her total points. Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee.
SELECT points FROM customers WHERE name = 'Phoebe';
UPDATE customers SET points = 9 WHERE name  = 'Phoebe';
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);

--12 Joey purchases two coffees.
SELECT points FROM customers WHERE name = "Joey";
UPDATE customers SET points = 7 WHERE name = 'Joey';
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);

--14 Monica wants to check her total points. Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee.

SELECT points FROM customers WHERE name = 'Monica';
UPDATE customers SET points = 2 WHERE name = 'Monica';
INSERT INTO coffee_orders ( is_redeemed) VALUES (1);


--15 Chandler wants to delete his loyalty program account.

DELETE FROM customers WHERE name = 'Chandler';

--16 Ross wants to check his total points. Redeem his points for a coffee if he has enough points. If he doesn't, he wants to purchase a coffee.

SELECT points FROM customers WHERE name = 'Ross';
UPDATE customers SET points = 10 WHERE name = 'Ross';
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);

--17 Joey wants to check his total points. Redeem his points for a coffee if he has enough points. If he doesn't, he wants to purchase a coffee.

SELECT points FROM customers WHERE name = 'Joey';
UPDATE customers SET points = 8 WHERE name = 'Joey';
INSERT INTO coffee_orders ( is_redeemed) VALUES (0);

--18Phoebe wants to change her email to p_as_in_phoebe@friends.show.

UPDATE customers SET email = 'p_as_in_phoebe@friends.show' WHERE name = 'Phoebe';
