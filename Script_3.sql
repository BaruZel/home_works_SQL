SELECT *
FROM customer c ;

ALTER TABLE customer 
ADD COLUMN favourite_movie int4;

ALTER TABLE customer 
ADD CONSTRAINT fm_constraint FOREIGN KEY (favourite_movie) REFERENCES film(film_id) ON UPDATE CASCADE ON DELETE RESTRICT 
;

ALTER TABLE customer 
DROP CONSTRAINT fm_constraint;

UPDATE customer 
SET favourite_movie = NULL 
WHERE 
	customer_id = 600;
	
SELECT * 
FROM film f 
;




