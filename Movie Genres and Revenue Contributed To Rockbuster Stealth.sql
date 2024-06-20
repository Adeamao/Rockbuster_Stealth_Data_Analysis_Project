SELECT 
    c.name AS genre,
    SUM(p.amount) AS total_revenue
FROM 
    film_category fc
JOIN 
    film f ON fc.film_id = f.film_id
JOIN 
    inventory i ON f.film_id = i.film_id
JOIN 
    rental r ON i.inventory_id = r.inventory_id
JOIN 
    payment p ON r.rental_id = p.rental_id
JOIN 
    category c ON fc.category_id = c.category_id
GROUP BY 
    c.name
ORDER BY 
    total_revenue DESC;
