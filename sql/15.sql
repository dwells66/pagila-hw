/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT
    c.name,
    COUNT(f.film_id) AS sum
FROM category as c
JOIN film_category as fc
    ON c.category_id = fc.category_id
JOIN film as f
    ON fc.film_id = f.film_id
JOIN language AS l
    ON f.language_id = l.language_id
WHERE l.name = 'English'
GROUP BY
    c.name
ORDER BY
    c.name;
