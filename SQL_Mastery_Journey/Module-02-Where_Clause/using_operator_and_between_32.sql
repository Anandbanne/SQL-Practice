/*32. Display customers whose customer_id is between 5 and 10. Using >= and <=, Using BETWEEN*/
select * FROM CUSTOMERS WHERE 
CUSTOMER_ID >= 5 AND CUSTOMER_ID <=15;
/*OR*/
select * FROM CUSTOMERS 
WHERE CUSTOMER_ID between 15 AND 10;