/*44. A retail company wants to create every possible combination of its products and available 
sales regions to prepare a marketing planning sheet. Assume we have: Products and cities*/

select p.product_name,c.city from 
  products p cross join (select distinct city from customers) c ; 
