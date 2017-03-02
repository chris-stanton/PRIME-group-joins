

1. Get all customers and their addresses

SELECT *
FROM customers, addresses;

2. Get all orders and their line items

SELECT *
FROM orders, line_items;

3. Which warehouses have cheetos?

SELECT warehouse
FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON warehouse_product.product_id = products.id
WHERE description = 'cheetos';

4. Which warehouses have diet pepsi?

SELECT warehouse
FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON warehouse_product.product_id = products.id
WHERE description = 'diet pepsi'
GROUP BY warehouse;

5. Get the number of orders for each customer.
NOTE: It is OK if those without orders are not included in results.

SELECT *
FROM orders
JOIN addresses
ON addresses.customer_id = orders.id
JOIN customers
ON customers.id = addresses.customer_id
GROUP BY customers.id, orders.id, addresses.id;

6. How many customers do we have?

SELECT COUNT(id)
FROM customers;

7. How many products do we carry?

SELECT COUNT(id)
FROM products;

8. What is the total available on-hand quantity of diet pepsi?

SELECT SUM(on_hand)
FROM products
JOIN warehouse_product
ON products.id = warehouse_product.product_id
WHERE description = 'diet pepsi';
