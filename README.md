# E-Commerce Sales Analysis — SQL

Ten business questions answered with SQL on a small e-commerce database.

## Database
3 tables (CSV copies included; `ecommerce.db` is the SQLite database):
- `customers` — 30 rows (customer_id, customer_name, city, signup_date)
- `products` — 10 rows (product_id, product_name, category, unit_price)
- `orders` — 150 rows (order_id, customer_id, product_id, qty, amount, order_date)

## Questions answered
1. Total sales revenue — **Rs 49,05,200**
2. Orders per city
3. Top 5 products by revenue (Laptop #1)
4. Month-wise sales trend
5. Average order value
6. Orders from Hyderabad customers
7. Revenue by product category
8. Best customer by total spend
9. Products never ordered (LEFT JOIN)
10. High-value orders above Rs 20,000, labelled with CASE WHEN

## Files
- `QUESTIONS.md` — the 10 questions
- `solutions.sql` — the queries
- `ANSWERS.md` — result tables, produced by actually running the queries against the database

## Skills used
SQL SELECT, JOINs (INNER / LEFT), GROUP BY, aggregate functions (SUM / COUNT / AVG), CASE WHEN, LIMIT, ORDER BY.
