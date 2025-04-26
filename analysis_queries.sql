
-- Find total number of customers by state
SELECT customer_state, COUNT(*) AS total_customers
FROM customers
GROUP BY customer_state;

-- Find total sales by product category
SELECT product_category, SUM(price) AS total_sales
FROM products
GROUP BY product_category;

-- Find all orders with their customer city
SELECT o.order_id, c.customer_city, o.order_status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Top selling cities
SELECT c.customer_city, SUM(p.price) AS total_city_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.order_id = p.order_id
GROUP BY c.customer_city
ORDER BY total_city_sales DESC;
