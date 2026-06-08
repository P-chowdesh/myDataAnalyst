 -- how is the distrubution of payment method?
  use project_customer_segmentation;
  
  select payment_method, count(*)  as payment_distubution
  from customer
  group by payment_method
  order by payment_distubution desc;