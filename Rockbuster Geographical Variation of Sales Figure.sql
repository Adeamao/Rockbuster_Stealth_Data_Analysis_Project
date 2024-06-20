SELECT 
    F.country,
    SUM(P.amount) AS total_sales
FROM 
    payment P
JOIN 
    customer C ON P.customer_id = C.customer_id
JOIN 
    address A ON C.address_id = A.address_id
JOIN 
    city CT ON A.city_id = CT.city_id
JOIN 
    country F ON CT.country_id = F.country_id
GROUP BY 
    F.country
ORDER BY 
    total_sales DESC;
