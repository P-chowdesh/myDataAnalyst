-- which gender we sell more product to?

SELECT 
    gender, COUNT(quantity) AS more_product_sold_to
FROM
    customer
GROUP BY gender
ORDER BY more_product_sold_to DESC;
 
 -- total revenue
 select sum( quantity* price) as revenue
 from customer;
 -- insights female are the one who purchaserd more products compare to male 
 -- therfore by focusing on the female we can increas oure sales 