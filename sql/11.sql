/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT f.film_id, f.title, COALESCE(COUNT(i.inventory_id), 0) AS count
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
WHERE f.title ILIKE 'h%'
GROUP BY f.title, f.film_id
HAVING COUNT(i.inventory_id) > 0
ORDER BY f.title DESC;

