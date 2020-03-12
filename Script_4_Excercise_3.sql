/* We need more movies for our customers, so create a script to extend the film inventory with new sequels to existing movies. 
For example: Academy Dinosaur will have an Academy Dinosaur 2 as title, and descripton should read 'A sequel to ... + original text. 
BUT! I want you to pay attention to grammar, so in case of Academy Dinosaur, the descripton will be: A sequel to an Epic Drama of a 
Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies  notice the an instead of a. For movies that start with a 
letters I, G, O or R for @masala_chicken , or B, A, R or U for @Baru , there will be 3 sequels in a row. So I expect ICE CROSSING, 
ICE CROSSING 2 and ICE CROSSING 3. Same rules as above applies but now a Sequel to sequel will be as description. :slight_smile:*/

-- sudying UNION ALL + CONCAT 
-- 1st part - duplicate rows with movies + tripple movies beginning 'B', 'A', 'R', 'U'
CREATE VIEW film_update_view AS
SELECT 
	title, description 
FROM film f 

UNION ALL

SELECT 
	  concat (title, ' 2'), description 
FROM film f 

UNION ALL 

SELECT 
	concat (title, ' 3'), description 
FROM film f 
WHERE substring (title, 1,1) IN ('B', 'A', 'R', 'U')
ORDER BY 
title ASC 
;