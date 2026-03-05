/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT
    co.country,
    sum(p.amount) AS profit
FROM payment AS p
JOIN rental AS r
    ON p.rental_id = r.rental_id
JOIN customer AS cs
    ON r.customer_id = cs.customer_id
JOIN address AS a
    ON cs.address_id = a.address_id
JOIN city AS cy
    ON a.city_id = cy.city_id
JOIN country AS co
    ON cy.country_id = co.country_id
GROUP BY
    co.country
ORDER BY
    country
