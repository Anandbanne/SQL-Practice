/*
Problem : 1068 Product Sales Analysis I
Platform: LeetCode
Difficulty: Easy
Date: 09-07-2026
*/
select product_name,year,price from sales left join product
 on sales.product_id=product.product_id order by sale_id;