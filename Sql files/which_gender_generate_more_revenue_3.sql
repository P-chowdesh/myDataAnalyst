-- which gender generates more revenue?
use project_customer_segmentation;
SELECT 
    gender, SUM(quantity * price) AS revenue
FROM
    customer
GROUP BY gender;