-- destrubution of purchase category relative to other columns?

SELECT 
    category, COUNT(*)
FROM
    customer
GROUP BY category
ORDER BY COUNT(*) DESC; 
