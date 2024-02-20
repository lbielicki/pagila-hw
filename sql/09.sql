/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */


SELECT s.first_name, s.last_name, SUM(p.amount) AS sum
FROM staff s
INNER JOIN payment p on s.staff_id = p.staff_id
WHERE payment_date::text LIKE '2020-01%'
GROUP BY s.staff_id
ORDER BY s.first_name;
