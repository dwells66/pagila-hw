/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

SELECT
    f.film_id,
    f.title,
    l.language_id,
    l.name
FROM film as f
JOIN language AS L
    ON f.language_id = l.language_id
WHERE
    l.name = 'English' AND (f.title LIKE 'K%' or f.title LIKE 'Q%')
GROUP BY
    f.film_id,
    f.title,
    l.language_id
ORDER BY
    f.title;
