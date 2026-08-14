/*31. Display: Order ID | Customer Name 
using a RIGHT JOIN.*/
select o.order_id,c.customer_name  
  from customers c right join orders o 
  on c.customer_id=o.customer_id;

/*32. A company wants to audit its order system. They want to make sure every order is associated with a registered customer. 
Generate a report that shows the order details along with the customer information, 
while still keeping orders even when customer information is missing.*/
select o.order_id,c.customer_name,o.quantity,o.unit_price,o.total_amount 
from customers c right join orders o on 
  c.customer_id=o.customer_id;

