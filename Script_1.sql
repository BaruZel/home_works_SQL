CREATE TABLE sakila.public.customer_new
AS 
SELECT *
FROM customer c 
;

SELECT user_name, first_name, last_name,full_name 
FROM customer
;

ALTER TABLE customer 
	ADD COLUMN user_name varchar (8)
;
UPDATE customer 
SET user_name = concat(LEFT (first_name, 1), LEFT (last_name, 7))
;

ALTER TABLE customer 
	ADD COLUMN full_name varchar (70)
;

UPDATE customer 
SET full_name = concat(upper(substring(first_name,1,1)), lower(substring(first_name,2,length(first_name))), ' ', upper(substring(last_name,1,1)), lower(substring(last_name,2,length(last_name))))

;

