-- How is the shopping distrubution according to the age?
use project_customer_segmentation;
 
 
 SELECT  (CASE
                    WHEN age BETWEEN 18 AND 20 THEN 'Teen_Age(18-20)'
                    WHEN age BETWEEN 21 AND 29 THEN 'Young_Adult(21-29)'
                    WHEN age BETWEEN 30 AND 44 THEN 'Adults(30-44)'
                    WHEN age BETWEEN 45 AND 59 THEN 'Middel_AgeAdults(45-59)'
                    WHEN age BETWEEN 60 AND 69 THEN 'Senior_citizen(60+)'
                    ELSE '70+'
                END 
                ) as age ,COUNT(*) AS total_transactions
FROM customer
GROUP BY age
order by total_transactions desc;



SELECT age_group, COUNT(*) AS total_transactions
FROM (
    SELECT 
        CASE
            WHEN age BETWEEN 18 AND 20 THEN 'Teen_Age(18-20)'
            WHEN age BETWEEN 21 AND 29 THEN 'Young_Adult(21-29)'
            WHEN age BETWEEN 30 AND 44 THEN 'Adults(30-44)'
            WHEN age BETWEEN 45 AND 59 THEN 'Middle_AgeAdults(45-59)'
            WHEN age BETWEEN 60 AND 69 THEN 'Senior_Citizen(60-69)'
            ELSE '70+'
        END AS age_group
    FROM customer
) AS temp
GROUP BY age_group
ORDER BY total_transactions DESC;

