CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  ordered_at TEXT NOT NULL,
  total_cents INTEGER NOT NULL
);

INSERT INTO orders VALUES
  (1, 1, '2026-04-10 08:00', 12000),
  (2, 1, '2026-04-11 09:30', 15000),
  (3, 1, '2026-04-11 17:45', 20000),
  (4, 1, '2026-04-13 10:00', 11000),
  (5, 2, '2026-05-01 12:00', 9000),
  (6, 2, '2026-05-02 12:00', 10000),
  (7, 2, '2026-05-03 12:00', 10000),
  (8, 2, '2026-05-05 12:00', 10000),
  (9, 2, '2026-05-06 12:00', 10000),
  (10, 3, '2026-06-20 09:00', 10000),
  (11, 3, '2026-06-21 09:00', 10000),
  (12, 3, '2026-06-23 09:00', 10000),
  (13, 3, '2026-06-24 09:00', 10000),
  (14, 4, '2026-07-01 09:00', 10000);

.read challenges/sql/2026-11-07-qualifying-order-streaks/solution.sql

CREATE TEMP TABLE expected (
  customer_id INTEGER,
  streak_start TEXT,
  streak_end TEXT,
  streak_days INTEGER
);
INSERT INTO expected VALUES
  (1, '2026-04-10', '2026-04-11', 2),
  (2, '2026-05-02', '2026-05-03', 2),
  (3, '2026-06-20', '2026-06-21', 2);

SELECT 'missing: ' || customer_id || '/' || streak_start || '/' || streak_end || '/' || streak_days
FROM (
  SELECT customer_id, streak_start, streak_end, streak_days FROM expected
  EXCEPT
  SELECT customer_id, streak_start, streak_end, streak_days FROM answer
)
UNION ALL
SELECT 'unexpected: ' || customer_id || '/' || streak_start || '/' || streak_end || '/' || streak_days
FROM (
  SELECT customer_id, streak_start, streak_end, streak_days FROM answer
  EXCEPT
  SELECT customer_id, streak_start, streak_end, streak_days FROM expected
);
