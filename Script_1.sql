CREATE TABLE sakila.public.customer_new
AS 
SELECT *
FROM customer c 
;

SELECT user_name, first_name, last_name 
FROM customer
;

ALTER TABLE customer 
	ADD COLUMN user_name varchar (8)
;
UPDATE customer 
SET user_name = concat(LEFT (first_name, 1), LEFT (last_name, 7))
;
