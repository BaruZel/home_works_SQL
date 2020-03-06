CREATE TABLE sakila.public.customer_backup
AS 
SELECT * 
FROM customer c 
;
INSERT INTO customer_backup (
	customer_id,
	first_name, 
	last_name, 
	email)
VALUES 
(	600, 
	'Barbora', 
	'Zelenkova', 
	'barazelenkova@seznam.cz')
	
;
SELECT *
FROM customer_backup cb 
;