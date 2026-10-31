-- Q1. Total sales revenue
SELECT SUM(amount) AS total_sales FROM orders;

-- Q2. Number of orders per city
SELECT c.city, COUNT(*) AS orders FROM orders o JOIN customers c ON o.customer_id = c.customer_id GROUP BY c.city ORDER BY orders DESC;

-- Q3. Top 5 products by revenue
SELECT p.product_name, SUM(o.amount) AS revenue FROM orders o JOIN products p ON o.product_id = p.product_id GROUP BY p.product_name ORDER BY revenue DESC LIMIT 5;

-- Q4. Monthly sales trend
SELECT substr(order_date, 1, 7) AS month, SUM(amount) AS sales FROM orders GROUP BY month ORDER BY month;

-- Q5. Average order value
SELECT ROUND(AVG(amount), 2) AS avg_order_value FROM orders;

-- Q6. Orders from Hyderabad only
SELECT COUNT(*) AS hyderabad_orders FROM orders o JOIN customers c ON o.customer_id = c.customer_id WHERE c.city = 'Hyderabad';

-- Q7. Revenue by category
SELECT p.category, SUM(o.amount) AS revenue FROM orders o JOIN products p ON o.product_id = p.product_id GROUP BY p.category ORDER BY revenue DESC;

-- Q8. Best customer by total spend
SELECT c.customer_name, SUM(o.amount) AS spent FROM orders o JOIN customers c ON o.customer_id = c.customer_id GROUP BY c.customer_name ORDER BY spent DESC LIMIT 1;

-- Q9. Products never ordered
SELECT p.product_name FROM products p LEFT JOIN orders o ON o.product_id = p.product_id WHERE o.order_id IS NULL;

-- Q10. High-value orders (above Rs 20,000), labelled
SELECT order_id, amount, CASE WHEN amount >= 50000 THEN 'Very High' WHEN amount >= 20000 THEN 'High' ELSE 'Normal' END AS value_band FROM orders WHERE amount >= 20000 ORDER BY amount DESC;

