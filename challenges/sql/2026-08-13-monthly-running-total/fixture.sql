CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  ordered_at TEXT NOT NULL,
  amount INTEGER NOT NULL
);

INSERT INTO orders (order_id, ordered_at, amount) VALUES
  (1, '2026-01-03', 50), (2, '2026-01-25', 80),
  (3, '2026-02-02', 30), (4, '2026-02-18', 45),
  (5, '2026-03-01', 100);

.read challenges/sql/2026-08-13-monthly-running-total/solution.sql

CREATE TEMP TABLE expected (month TEXT, monthly_revenue INTEGER, running_revenue INTEGER);
INSERT INTO expected VALUES
  ('2026-01', 130, 130),
  ('2026-02', 75, 205),
  ('2026-03', 100, 305);

SELECT 'missing: ' || month || '/' || monthly_revenue || '/' || running_revenue FROM (
  SELECT month, monthly_revenue, running_revenue FROM expected
  EXCEPT
  SELECT month, monthly_revenue, running_revenue FROM answer
)
UNION ALL
SELECT 'unexpected: ' || month || '/' || monthly_revenue || '/' || running_revenue FROM (
  SELECT month, monthly_revenue, running_revenue FROM answer
  EXCEPT
  SELECT month, monthly_revenue, running_revenue FROM expected
);
