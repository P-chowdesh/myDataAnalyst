-- Does the payment method have a relation to other col ?




SELECT 
(
    COUNT(*) * SUM(quantity* price) 
    - SUM(quantity) * SUM(price)
) /
SQRT(
    (COUNT(*) * SUM(POWER(quantity,2)) - POWER(SUM(price),2)) *
    (COUNT(*) * SUM(POWER(quantity,2)) - POWER(SUM(price),2))
) AS correlation_value
FROM customer;

