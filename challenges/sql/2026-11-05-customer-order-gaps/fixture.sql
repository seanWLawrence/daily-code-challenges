CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  order_date TEXT NOT NULL
);

INSERT INTO orders VALUES
  (10, 1, '2026-01-03'),
  (11, 1, '2026-01-03'),
  (12, 1, '2026-01-08'),
  (20, 2, '2026-02-10'),
  (21, 2, '2026-02-14'),
  (30, 3, '2026-03-01');

.read challenges/sql/2026-11-05-customer-order-gaps/solution.sql

CREATE TEMP TABLE expected (
  customer_id INTEGER,
  order_id INTEGER,
  order_date TEXT,
  days_since_previous_order INTEGER
);
INSERT INTO expected VALUES
  (1, 11, '2026-01-03', 0),
  (1, 12, '2026-01-08', 5),
  (2, 21, '2026-02-14', 4);

SELECT 'missing: ' || customer_id || '/' || order_id || '/' || order_date || '/' || days_since_previous_order
FROM (
  SELECT customer_id, order_id, order_date, days_since_previous_order FROM expected
  EXCEPT
  SELECT customer_id, order_id, order_date, days_since_previous_order FROM answer
)
UNION ALL
SELECT 'unexpected: ' || customer_id || '/' || order_id || '/' || order_date || '/' || days_since_previous_order
FROM (
  SELECT customer_id, order_id, order_date, days_since_previous_order FROM answer
  EXCEPT
  SELECT customer_id, order_id, order_date, days_since_previous_order FROM expected
);
