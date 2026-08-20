CREATE TABLE orders (order_id INTEGER PRIMARY KEY, customer TEXT, ordered_at TEXT, amount INTEGER);
INSERT INTO orders VALUES
  (1, 'Ava', '2026-01-03', 40), (2, 'Ava', '2026-01-01', 20),
  (3, 'Ben', '2026-02-01', 50), (4, 'Ben', '2026-02-01', 30),
  (5, 'Cam', '2026-01-10', 15);
.read challenges/sql/2026-08-20-first-order-per-customer/solution.sql
CREATE TEMP TABLE expected (customer TEXT, ordered_at TEXT, amount INTEGER);
INSERT INTO expected VALUES ('Ava', '2026-01-01', 20), ('Ben', '2026-02-01', 50), ('Cam', '2026-01-10', 15);
SELECT 'missing: ' || customer || '/' || ordered_at || '/' || amount FROM (SELECT customer, ordered_at, amount FROM expected EXCEPT SELECT customer, ordered_at, amount FROM answer)
UNION ALL SELECT 'unexpected: ' || customer || '/' || ordered_at || '/' || amount FROM (SELECT customer, ordered_at, amount FROM answer EXCEPT SELECT customer, ordered_at, amount FROM expected);
