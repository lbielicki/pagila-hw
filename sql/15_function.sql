/*
 * Use a JOIN to count the number films in each category in the specified language.
 * Use table category, film_category, film, and language.
 */
CREATE OR REPLACE FUNCTION category_counts_by_language(language_name TEXT) RETURNS TABLE(name TEXT, count BIGINT) AS
$$
SELECT c.name, COUNT(*) AS sum
FROM film f
JOIN film_category fc on f.film_id = fc.film_id
JOIN category c on fc.category_id = c.category_id
JOIN language l on f.language_id = l.language_id
WHERE l.name = language_name GROUP BY c.name
ORDER BY c.name;
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM category_counts_by_language('English');
SELECT * FROM category_counts_by_language('Italian');
SELECT * FROM category_counts_by_language('Japanese');
SELECT * FROM category_counts_by_language('Mandarin');
SELECT * FROM category_counts_by_language('French');
SELECT * FROM category_counts_by_language('German');
SELECT * FROM category_counts_by_language('Latin');
