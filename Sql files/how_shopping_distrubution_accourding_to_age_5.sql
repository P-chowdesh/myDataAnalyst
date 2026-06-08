-- how shopping distrubution accourding to age?
use project_customer_segmentation;
SELECT 
    CASE
        WHEN age BETWEEN 18 AND 20 THEN 'Teen_Age(18-20)'
        WHEN age BETWEEN 21 AND 29 THEN 'Young_Adult(21-29)'
        WHEN age BETWEEN 30 AND 44 THEN 'Adults(30-44)'
        WHEN age BETWEEN 45 AND 59 THEN 'Middel_AgeAdults(45-59)'
        WHEN age BETWEEN 60 AND 69 THEN 'Senior_citizen(60+)'
        ELSE '70+'
    END AS age_group,
    count(*) as shopping_distrubution
FROM
    customer
GROUP BY age_group
ORDER BY shopping_distrubution DESC;


-- age_group = SWITCH(
 --   TRUE(),
 --   'project_customer_segmentation customer'[age] < 18, "Teen_Age",
 --   'project_customer_segmentation customer'[age] >= 18 && 'project_customer_segmentation customer'[age] <= 25, "Young Adults",
--   'project_customer_segmentation customer'[age] >= 26 &&'project_customer_segmentation customer'[age] <= 35, "Young Professionals",
 --   'project_customer_segmentation customer'[age] >= 36 &&'project_customer_segmentation customer'[age] <= 45, "Mid-Career Professionals",
 --   'project_customer_segmentation customer'[age] >= 46 && 'project_customer_segmentation customer'[age] <= 60, "Senior Earners",
 --   'project_customer_segmentation customer'[age] > 60, "Senior_citizens"