-- which age cat generates more revenue?


SELECT 
    CASE
        WHEN age BETWEEN 18 AND 20 THEN 'Teen_Age(18-20)'
        WHEN age BETWEEN 21 AND 29 THEN 'Young_Adult(21-29)'
        WHEN age BETWEEN 30 AND 44 THEN 'Adults(30-44)'
        WHEN age BETWEEN 45 AND 59 THEN 'Middel_AgeAdults(45-59)'
        WHEN age BETWEEN 60 AND 69 THEN 'Senior_citizen(60+)'
        ELSE '70+'
    END AS age_cat,
    SUM(quantity * price) AS total_revenue
FROM
    customer
GROUP BY age_cat
ORDER BY total_revenue DESC
LIMIT 1;
