						
SELECT 						
    MIN(length) AS min_length,						
	  MAX(length) AS max_length,					
	  AVG(length) AS avg_length,					
	  MIN(rental_rate) AS min_rental_rate,					
	  MAX(rental_rate) AS max_rental_rate,					
	  AVG(rental_rate) AS avg_rental_rate,					
	  MIN(rental_duration) AS min_rental_duration,					
	  MAX(rental_duration) AS max_rental_duration,					
	  AVG(rental_duration) AS avg_rental_duration,					
	  MIN(replacement_cost) AS min_replacement_cost,					
	  MAX(replacement_cost) AS max_replacement_cost,					
	  AVG(replacement_cost) AS avg_replacement_cost,					
	  MIN(release_year) AS min_release_year,					
	  MAX(release_year) AS max_release_year,					
	  AVG(release_year) AS avg_release_year,					
	  MODE() WITHIN GROUP (ORDER BY title) AS mode_title,					
	  MODE() WITHIN GROUP (ORDER BY description) AS mode_desccription,					
	  MODE() WITHIN GROUP (ORDER BY rating) AS mode_rating,					
	  MODE() WITHIN GROUP (ORDER BY last_update) AS mode_last_update,					
	  MODE() WITHIN GROUP (ORDER BY special_features) AS mode_special_feautures,					
	  MODE() WITHIN GROUP (ORDER BY fulltext) AS mode_fulltext					
FROM						
	film;					
