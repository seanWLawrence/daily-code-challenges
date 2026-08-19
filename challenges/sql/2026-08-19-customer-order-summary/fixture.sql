CREATE TABLE customers (customer_id INTEGER PRIMARY KEY, customer TEXT NOT NULL);
CREATE TABLE orders (order_id INTEGER PRIMARY KEY, customer_id INTEGER NOT NULL, amount INTEGER NOT NULL);
INSERT INTO customers VALUES (1, 'Ava'), (2, 'Ben'), (3, 'Cam');
INSERT INTO orders VALUES (1, 1, 25), (2, 1, 40), (3, 3, 10);
.read challenges/sql/2026-08-19-customer-order-summary/solution.sql
CREATE TEMP TABLE expected (customer TEXT, order_count INTEGER, total_amount INTEGER);
INSERT INTO expected VALUES ('Ava', 2, 65), ('Ben', 0, 0), ('Cam', 1, 10);
SELECT 'missing: ' || customer || '/' || order_count || '/' || total_amount FROM (SELECT customer, order_count, total_amount FROM expected EXCEPT SELECT customer, order_count, total_amount FROM answer)
UNION ALL
SELECT 'unexpected: ' || customer || '/' || order_count || '/' || total_amount FROM (SELECT customer, order_count, total_amount FROM answer EXCEPT SELECT customer, order_count, total_amount FROM expected);
