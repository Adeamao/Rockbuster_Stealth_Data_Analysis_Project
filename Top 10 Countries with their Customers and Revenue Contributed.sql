SELECT 
    F.country,
    COUNT(DISTINCT C.customer_id) AS customer_count,
    SUM(P.amount) AS total_revenue
FROM 
    customer C
JOIN 
    address D ON C.address_id = D.address_id
JOIN 
    city E ON D.city_id = E.city_id
JOIN 
    country F ON E.country_id = F.country_id
JOIN
    payment P ON C.customer_id = P.customer_id
GROUP BY 
    F.country
ORDER BY 
    customer_count DESC
LIMIT 10;
