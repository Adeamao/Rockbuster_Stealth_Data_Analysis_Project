SELECT 
    CONCAT(C.first_name, ' ', C.last_name) AS customer_name,
    CI.city,
    CO.country,
    SUM(P.amount) AS total_revenue_contributed
FROM 
    customer C
JOIN 
    payment P ON C.customer_id = P.customer_id
JOIN 
    address A ON C.address_id = A.address_id
JOIN 
    city CI ON A.city_id = CI.city_id
JOIN 
    country CO ON CI.country_id = CO.country_id
GROUP BY 
    C.customer_id, CI.city, CO.country
ORDER BY 
    total_revenue_contributed DESC;
