/*
 * Display the first and last name of each actor in a single column in upper case letters.
 * Name the column Actor Name, and sort the results alphabetically.
 *
 * solution:
 *
 * answer:
 * select first_name || ' ' || last_name as "Actor Name" from actor ORDER BY "Actor Name";
 *
 * need to insert answer below (after comment) and use run_tests.sh as $ docker-compose exec pg ./run_tests.sh
 */
 
select first_name || ' ' || last_name as "Actor Name" from actor ORDER BY "Actor Name";
