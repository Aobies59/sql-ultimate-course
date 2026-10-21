SELECT * FROM customers;
SELECT * FROM persons;

-- INSERT: insert rows manually into customers
INSERT INTO customers (id, first_name, country, score)
VALUES 
	(6, 'Anna', 'USA', NULL),
	(7, 'Sam', NULL, 100),
	(8, 'USA', 'Max', NULL),
	(9, 'Andreas', 'Germany', NULL),
	(10, 'Sahra', NULL, NULL);

-- INSERT: copy data from customers into persons
INSERT INTO persons (id, person_name, birth_date, phone)
	SELECT id, first_name, NULL, 'Unknown' FROM customers;

-- UPDATE: change the score of customer with id 6 to 0
UPDATE customers SET score = 0 WHERE id = 6;

-- UPDATE: change the score of customer with id 10 to 0 and its country to 'UK'
UPDATE customers
SET score = 0,
	country = 'UK'
WHERE id=10;

-- UPDATE: update all customers with a NULL score by setting their score to 0
UPDATE customers SET score = 0 WHERE score is NULL;

-- DELETE: delete all customers with an id greater than 5
DELETE FROM customers WHERE id>5;

-- DELETE: delete all data from table persons
DELETE FROM persons; 
TRUNCATE TABLE persons;