-- to see what is inside of customer table
SELECT * 
FROM customer c 
;

-- to create new entry (without user_name and full_name)
INSERT INTO customer (
customer_id,
store_id,
first_name,
last_name,
email,
address_id 
)
VALUES (
600,
2,
'Barbora', 
'Zelenkova', 
'barazelenkova@seznam.cz',
606
)
;
-- to delete the incorrect entry
DELETE
FROM customer 
WHERE customer_id = 600
;
 -- to choose what is in address table
SELECT *
FROM address
;

-- inserting entries into address
INSERT INTO address (
address_id,
address,
district,
city_id,
postal_code,
phone
)
VALUES (
606,
'Vidimska',
'Prague 8',
601,
18100,
' '
)
;

-- to view what is in city table
SELECT *
FROM city c
;

-- inserting new entry in city (Prague did not exist, country was in table with country_id 26)
INSERT INTO city (
city_id,
city,
country_id
)
VALUES (
601,
'Prague',
26
);
 -- to see, from which store I can borrow my movie - I need to find the namve movie in inventory
SELECT *
FROM store s ;

SELECT * 
FROM inventory i ;

-- I decided to borrow the movie with name "Academy Dinosaur" -> film_id = 1
SELECT *
FROM film f 
WHERE title = 'ACADEMY DINOSAUR'
;

