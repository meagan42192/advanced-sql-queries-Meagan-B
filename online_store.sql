USE online_store;

SELECT orders.id, customers.first_name, customers.last_name, orders.order_date, orders.total_amount
FROM orders
INNER JOIN customers ON orders.customer_id = customers.id;

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
WHERE total_amount < 300
GROUP BY customer_id;

SELECT id, order_date, total_amount, customer_id
FROM orders
WHERE customer_id IN (SELECT id FROM customers WHERE first_name = 'Alice');

select * from customers;
select * from orders