CREATE TABLE orders (order_id INTEGER PRIMARY KEY, customer TEXT, ordered_at TEXT, amount INTEGER);
INSERT INTO orders VALUES (1, 'Ava', '2026-01-02', 10), (2, 'Ava', '2026-01-05', 20), (3, 'Ben', '2026-02-01', 30), (4, 'Ben', '2026-02-01', 40), (5, 'Cam', '2026-01-03', 50);
.read challenges/sql/2026-08-22-most-recent-order/solution.sql
CREATE TEMP TABLE expected (customer TEXT, ordered_at TEXT, amount INTEGER);
INSERT INTO expected VALUES ('Ava', '2026-01-05', 20), ('Ben', '2026-02-01', 40), ('Cam', '2026-01-03', 50);
SELECT 'missing: ' || customer || '/' || ordered_at || '/' || amount FROM (SELECT customer, ordered_at, amount FROM expected EXCEPT SELECT customer, ordered_at, amount FROM answer)
UNION ALL SELECT 'unexpected: ' || customer || '/' || ordered_at || '/' || amount FROM (SELECT customer, ordered_at, amount FROM answer EXCEPT SELECT customer, ordered_at, amount FROM expected);
