/*11. The business team wants to identify customers whose total spending is greater than ₹100,000.*/


select customer_name from customers where customer_id in
(select customer_id from orders group by customer_id having sum(total_amount)>100000);
